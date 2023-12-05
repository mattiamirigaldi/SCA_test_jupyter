vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/axi_bram_ctrl_v4_1_1
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_uartlite_v2_0_23
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_21
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/fifo_generator_v13_2_4
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_crossbar_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_19

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap axi_bram_ctrl_v4_1_1 riviera/axi_bram_ctrl_v4_1_1
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_uartlite_v2_0_23 riviera/axi_uartlite_v2_0_23
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_21 riviera/axi_gpio_v2_0_21
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 riviera/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"/tools/Xilinx_2019.1/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx_2019.1/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx_2019.1/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_proc_sys_reset_base_0/sim/m3_for_arty_a7_proc_sys_reset_base_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_i_inv_dbgresetn_0/sim/m3_for_arty_a7_i_inv_dbgresetn_0.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_i_inv_sysresetn1_0/sim/m3_for_arty_a7_i_inv_sysresetn1_0.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_clk_wiz_0_0/m3_for_arty_a7_clk_wiz_0_0_clk_wiz.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_clk_wiz_0_0/m3_for_arty_a7_clk_wiz_0_0.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_xlconstant_1_0/sim/m3_for_arty_a7_xlconstant_1_0.v" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_axi_bram_ctrl_0_0/sim/m3_for_arty_a7_axi_bram_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_23 -93 \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/0315/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_axi_uartlite_0_0/sim/m3_for_arty_a7_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_blk_mem_gen_0_0/sim/m3_for_arty_a7_blk_mem_gen_0_0.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_xlconcat_0_0/sim/m3_for_arty_a7_xlconcat_0_0.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_xlconstant_1_1/sim/m3_for_arty_a7_xlconstant_1_1.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_dap_ahb_ap.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_wic.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_nvic.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_dwt.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/AhbToAxi.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_mpu.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_bus_matrix.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/models.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cmsdk.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_tpiu.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/dapswjdp.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_fpb.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_dpu.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_itm.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cm3_etm.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cortexm3.v" \
"../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl/cortexm3_integration.v" \
"../../../../../m3_for_arty_a7/block_diagram/ip/m3_for_arty_a7_Cortex_M3_0_0/sim/m3_for_arty_a7_Cortex_M3_0_0.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_21 -93 \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_axi_gpio_0_2/sim/m3_for_arty_a7_axi_gpio_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_2/sim/m3_for_arty_a7_xlconstant_1_2.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_3/sim/m3_for_arty_a7_xlconstant_1_3.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_4/sim/m3_for_arty_a7_xlconstant_1_4.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_5/sim/m3_for_arty_a7_xlconstant_1_5.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_6/sim/m3_for_arty_a7_xlconstant_1_6.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xlconstant_1_7/sim/m3_for_arty_a7_xlconstant_1_7.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_xbar_2/sim/m3_for_arty_a7_xbar_2.v" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/sim/m3_for_arty_a7.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/c923" "+incdir+../../../../../m3_for_arty_a7/block_diagram/ipshared/ea75/rtl" "+incdir+../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ipshared/ec67/hdl" \
"../../../../pv_CW305_DesignStart.srcs/sources_1/bd/block_diagram/ip/m3_for_arty_a7_auto_pc_0/sim/m3_for_arty_a7_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

