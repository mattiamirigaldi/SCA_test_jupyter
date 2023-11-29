#! /usr/bin/python3
from Crypto.Cipher import AES
import chipwhisperer as cw
from common import cw_connect, cw_set_params, reset_arm_target, use_fpga_pll
import time
from bokeh.plotting import figure, show
from bokeh.io import output_notebook
from bokeh.models import CrosshairTool

pscope, ftarget = cw_connect()
target, fpga_io, nSamples = cw_set_params(pscope, ftarget)
use_fpga_pll(ftarget)

def reset_flush():
    reset_arm_target(ftarget)
    target.flush()

def pico_capture(ps, nSamples):
    # Arm the picoscope
    ps.runBlock()
    time.sleep(0.05)
    # Trigger the encryption on Target
    target.fpga_write(target.REG_USER_LED, [0x01])
    target.usb_trigger_toggle()
    ps.waitReady()
    # Capture the trace 
    data = ps.getDataV('A', nSamples, returnOverflow=False)
    return data

# Reset before using
reset_flush()

ktp = cw.ktp.Basic()
# Initialize cipher to verify DUT result:
key, plaintext = ktp.next()
cipher = AES.new(bytes(key), AES.MODE_ECB)
print("Key: ", [hex(el) for el in key])
print("Plaintext: ", [hex(el) for el in plaintext])

output_len = 16
# Dummy capture call due to bug of using AC coupling
pico_capture(pscope, nSamples)

target.simpleserial_write('k', key)
target.simpleserial_write('p', plaintext)
wave = pico_capture(pscope, nSamples)

response = target.simpleserial_read('r', output_len, ack=True)
print("Ciphertext: ", [hex(el) for el in response])
print("Expected : ", [hex(el) for el in cipher.encrypt(bytes(plaintext))])

output_notebook()
p = figure(plot_width=800)

xrange = range(len(wave))
p.line(xrange, wave, line_color="red")
show(p)

# Disconnect for all devices
target.dis()

assert (list(response) == list(cipher.encrypt(bytes(plaintext)))), "Incorrect encryption result!\nGot {}\nExp {}\n".format(list(response), list(text))
    