
Tested with Ubuntu 23.04

Target board: CW305 Artix FPGA Target 
## Software requirements
- Xilinx Vivado version 2019.1 (64-bit)
- Keil uVision version 5.38.0.0

The server on which I'm working has Ubuntu OS. Though, Keil is only available for Windows.

The solution I came up with is to install Keil on my private PC and use the program [SFTP drive](https://www.nsoftware.com/sftpdrive?gad_source=1&gclid=EAIaIQobChMI18yxtLzrggMVX5aDBx1uvgIREAAYASAAEgKqJPD_BwE) which mount SFTP servers as local drives. Once connected, you can browse and work with files as if they were stored on your local machine. 

# Generate FPGA bitstream
The vivado project can be found in directory `CW305_DesignStart/vivado/CW305_DesignStart/CW395_DesignStart.xpr`
## Setup
### Install board files
Enable easy connectivity from the Xilinx IP Integrator (IPI) tool to the board pins.
- Download and install Diligent Arty Artix 7 (A7) board files from [here](https://reference.digilentinc.com/learn/software/tutorials/vivado-board-files/start)
- Add a reference to the location as part of your design. For example, if you uncompress the Digilent files to  `<install_dir>/vivado/Digilent`, you can use the following command in the Vivado Tcl console.
~~~
set_param board.repoPaths ../../vivado/Digilent_board_files vivado-boards-master/new/board_files/arty/
~~~
### Add Arm IP Integrator (IPI) repository to the list of Vivado IP repositories 
This makes the processor available in any new designs.
In Vivado from `Tools → Settings` select IP Defaults. In the list of Default IP repository search paths, add the path to the `/Arm_ipi_repository`.

Vivado only reads the IPI repository during design creation. If are performed changes to repository it must be refreshed in Vivado by `Tools → Settings → IP → Repository → Refresh all`.
### Add Arm software repository to the list of available Vivado repositories.
In Vivado from `File > Launch SDK`.

- default Exported location to `./software` 
- default Workspace to `./software/CW305_DesignStart/sdk_workspace`.

Once the SDK opens, select `Xilinx → Repositories` and add the path to the `./vivado/Arm_sw_repository/` to the Global Repositories.

To use the Cortex-M3 software, you might be required to rescan the Software Development Kit (SDK) repositories. In the SDK, select `Xilinx → Repositories → Rescan Repositories`.
## Generate the bitstream
Simply generate the bitstream in Vivado. Then export the generated hw `File -> Export -> Export Hardware to ./software`

# Compile software
The Cortex target's program memory is local to the FPGA, and the program memory content is included in the FPGA bitfile.
Xilinx uses an MMI file to describe the location of internal FPGA memories, so that their contents can be udpated.
1. Generate the MMI file
In vivado
- Open implemented design 
- in the TCL console `source make_mmi_file.tcl`
2. Open in Keil the project file, which can be found in `./software/Build_Keil/CW305_DesignStart.uvprojx` and build it.

The build should be clean except for some warning due to file "xil_assert.h".

Post-build is run automatically make_hex_a7.bat 

3. In vivado run in TCL shell
- `source make_prog_files.tcl`

This script stitch the Cortex program data into the FPGA bitfile generated previously
