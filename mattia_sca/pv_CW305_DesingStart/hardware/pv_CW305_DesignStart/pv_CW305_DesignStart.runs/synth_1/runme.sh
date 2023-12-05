#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx_2019.1/SDK/2019.1/bin:/tools/Xilinx_2019.1/Vivado/2019.1/ids_lite/ISE/bin/lin64:/tools/Xilinx_2019.1/Vivado/2019.1/bin
else
  PATH=/tools/Xilinx_2019.1/SDK/2019.1/bin:/tools/Xilinx_2019.1/Vivado/2019.1/ids_lite/ISE/bin/lin64:/tools/Xilinx_2019.1/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/sca.user/chipwhisperer/jupyter/mattia_sca/pv_CW305_DesingStart/AT426-r0p1-00rel0-1/AT426-BU-98000-r0p1-00rel0/hardware/pv_CW305_DesignStart/pv_CW305_DesignStart.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log CW305_designstart_top.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source CW305_designstart_top.tcl
