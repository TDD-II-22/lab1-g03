// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Aug 11 10:24:17 2022
// Host        : DESKTOP-LUJVCA8 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/TDD/lab1-g03/vivado_project/vivado_project.sim/sim_1/synth/func/xsim/tb_module_mux4a1_func_synth.v
// Design      : module_mux4a1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* BITS = "4" *) 
(* NotValidForBitStream *)
module module_mux4a1
   (dato0_i,
    dato1_i,
    dato2_i,
    dato3_i,
    selec_i,
    salida_o);
  input [3:0]dato0_i;
  input [3:0]dato1_i;
  input [3:0]dato2_i;
  input [3:0]dato3_i;
  input [1:0]selec_i;
  output [3:0]salida_o;

  wire [3:0]dato0_i;
  wire [3:0]dato0_i_IBUF;
  wire [3:0]dato1_i;
  wire [3:0]dato1_i_IBUF;
  wire [3:0]dato2_i;
  wire [3:0]dato2_i_IBUF;
  wire [3:0]dato3_i;
  wire [3:0]dato3_i_IBUF;
  wire [3:0]salida_o;
  wire [3:0]salida_o_OBUF;
  wire [1:0]selec_i;
  wire [1:0]selec_i_IBUF;

  IBUF \dato0_i_IBUF[0]_inst 
       (.I(dato0_i[0]),
        .O(dato0_i_IBUF[0]));
  IBUF \dato0_i_IBUF[1]_inst 
       (.I(dato0_i[1]),
        .O(dato0_i_IBUF[1]));
  IBUF \dato0_i_IBUF[2]_inst 
       (.I(dato0_i[2]),
        .O(dato0_i_IBUF[2]));
  IBUF \dato0_i_IBUF[3]_inst 
       (.I(dato0_i[3]),
        .O(dato0_i_IBUF[3]));
  IBUF \dato1_i_IBUF[0]_inst 
       (.I(dato1_i[0]),
        .O(dato1_i_IBUF[0]));
  IBUF \dato1_i_IBUF[1]_inst 
       (.I(dato1_i[1]),
        .O(dato1_i_IBUF[1]));
  IBUF \dato1_i_IBUF[2]_inst 
       (.I(dato1_i[2]),
        .O(dato1_i_IBUF[2]));
  IBUF \dato1_i_IBUF[3]_inst 
       (.I(dato1_i[3]),
        .O(dato1_i_IBUF[3]));
  IBUF \dato2_i_IBUF[0]_inst 
       (.I(dato2_i[0]),
        .O(dato2_i_IBUF[0]));
  IBUF \dato2_i_IBUF[1]_inst 
       (.I(dato2_i[1]),
        .O(dato2_i_IBUF[1]));
  IBUF \dato2_i_IBUF[2]_inst 
       (.I(dato2_i[2]),
        .O(dato2_i_IBUF[2]));
  IBUF \dato2_i_IBUF[3]_inst 
       (.I(dato2_i[3]),
        .O(dato2_i_IBUF[3]));
  IBUF \dato3_i_IBUF[0]_inst 
       (.I(dato3_i[0]),
        .O(dato3_i_IBUF[0]));
  IBUF \dato3_i_IBUF[1]_inst 
       (.I(dato3_i[1]),
        .O(dato3_i_IBUF[1]));
  IBUF \dato3_i_IBUF[2]_inst 
       (.I(dato3_i[2]),
        .O(dato3_i_IBUF[2]));
  IBUF \dato3_i_IBUF[3]_inst 
       (.I(dato3_i[3]),
        .O(dato3_i_IBUF[3]));
  OBUF \salida_o_OBUF[0]_inst 
       (.I(salida_o_OBUF[0]),
        .O(salida_o[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \salida_o_OBUF[0]_inst_i_1 
       (.I0(dato1_i_IBUF[0]),
        .I1(dato0_i_IBUF[0]),
        .I2(dato3_i_IBUF[0]),
        .I3(selec_i_IBUF[1]),
        .I4(selec_i_IBUF[0]),
        .I5(dato2_i_IBUF[0]),
        .O(salida_o_OBUF[0]));
  OBUF \salida_o_OBUF[1]_inst 
       (.I(salida_o_OBUF[1]),
        .O(salida_o[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \salida_o_OBUF[1]_inst_i_1 
       (.I0(dato1_i_IBUF[1]),
        .I1(dato0_i_IBUF[1]),
        .I2(dato3_i_IBUF[1]),
        .I3(selec_i_IBUF[1]),
        .I4(selec_i_IBUF[0]),
        .I5(dato2_i_IBUF[1]),
        .O(salida_o_OBUF[1]));
  OBUF \salida_o_OBUF[2]_inst 
       (.I(salida_o_OBUF[2]),
        .O(salida_o[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \salida_o_OBUF[2]_inst_i_1 
       (.I0(dato1_i_IBUF[2]),
        .I1(dato0_i_IBUF[2]),
        .I2(dato3_i_IBUF[2]),
        .I3(selec_i_IBUF[1]),
        .I4(selec_i_IBUF[0]),
        .I5(dato2_i_IBUF[2]),
        .O(salida_o_OBUF[2]));
  OBUF \salida_o_OBUF[3]_inst 
       (.I(salida_o_OBUF[3]),
        .O(salida_o[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \salida_o_OBUF[3]_inst_i_1 
       (.I0(dato1_i_IBUF[3]),
        .I1(dato0_i_IBUF[3]),
        .I2(dato3_i_IBUF[3]),
        .I3(selec_i_IBUF[1]),
        .I4(selec_i_IBUF[0]),
        .I5(dato2_i_IBUF[3]),
        .O(salida_o_OBUF[3]));
  IBUF \selec_i_IBUF[0]_inst 
       (.I(selec_i[0]),
        .O(selec_i_IBUF[0]));
  IBUF \selec_i_IBUF[1]_inst 
       (.I(selec_i[1]),
        .O(selec_i_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
