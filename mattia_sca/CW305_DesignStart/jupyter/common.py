import chipwhisperer as cw
from chipwhisperer.capture.targets.CW305 import CW305
from picoscope import ps5000a
import picosdk
from picosdk.discover import find_all_units
import serial.tools.list_ports as port_list

default_bitfile = r"/home/sca.user/Desktop/arm_softcore/AT426-r0p1-00rel0-1/AT426-BU-98000-r0p1-00rel0/hardware/CW305_DesignStart/CW305_DesignStart.bit"

def cw_connect(bitfile_path = default_bitfile, force = True):

    scopes = find_all_units()
    for scope in scopes:
        print("Working with:")
        print(scope.info)
        scope.close()
    ports = list(port_list.comports())
    for p in ports:
        print (p)

    ps = ps5000a.PS5000a()
    print("Found the following picoscope:")
    print(ps.getAllUnitInfo())

    ftarget = cw.target(
        None, CW305,
        bsfile=bitfile_path,
        fpga_id='100t', force=force
    )

    return (ps, ftarget)

def cw_set_params(ps, ftarget, frequency = 10E6):
    # Disable all the clocks on the FPGA
    ftarget.vccint_set(1.0)

    ftarget.pll.pll_enable_set(True)
    ftarget.pll.pll_outenable_set(False, 0)
    ftarget.pll.pll_outenable_set(True, 1)
    ftarget.pll.pll_outenable_set(False, 2)

    ftarget.pll.pll_outfreq_set(frequency, 1)

    # 1ms is plenty of idling time
    ftarget.clkusbautooff = False
    ftarget.clksleeptime = 1

    # Since target runnning at 10 MHz and AES requires from trigger
    obs_duration = 3.225E-6
    # Sample at least 1260 points within that window
    sampling_interval = obs_duration / 1260
    # Configure timebase
    (actualSamplingInterval, nSamples, maxSamples) = ps.setSamplingInterval(sampling_interval, obs_duration)
    print("Nsamples : ", nSamples)
    print("Sampling interval = %f us" % (actualSamplingInterval*nSamples*1E6))

    # 50mV range on channel A, AC coupled, 20 MHz BW limit
    ps.setChannel('A', 'AC', 0.05, 0.0, enabled=True, BWLimited=True)
    # Channel B is trigger
    ps.setChannel('B', 'DC', 10.0, 0.0, enabled=True)
    ps.setSimpleTrigger('B', 2.0, 'Rising', timeout_ms=2000, enabled=True)    
    
    fpga_io = ftarget.gpio_mode()

    return (ftarget, fpga_io, nSamples)

def enable_clk_glitching(scope):
    scope.io.hs2 = "glitch"

def disable_clk_glitching(scope):
    scope.io.hs2 = "clkgen"

# some convenience functions:
def reset_fpga(ftarget):
    # resets the full CW305 FPGA
    ftarget.fpga_write(3, [1])
    ftarget.fpga_write(3, [0])

def reset_arm_target(ftarget):
    # resets only the Arm DesignStart core within the CW305 FPGA
    ftarget.fpga_write(2, [1])
    ftarget.fpga_write(2, [0])
    
def use_fpga_pll(ftarget):
    # The target clock goes through a PLL (MMCM) in the FPGA before getting to the Arm DesignStart core.
    # This PLL can clean up the clock and filter glitches.
    ftarget.fpga_write(1, [1])

def bypass_fpga_pll(ftarget):
    # The target clock is connected directly to the Arm DesignStart core, bypassing the PLL.
    # This can make clock glitching more effective.
    ftarget.fpga_write(1, [0])

# Useful for when instruction memory gets corrupted
def reprogram_fpga(ftarget, bitfile_path = default_bitfile):
    ftarget.fpga.FPGAProgram(
        open(bitfile_path, "rb"),
        exceptOnDoneFailure=False,
        prog_speed=10E6
    )