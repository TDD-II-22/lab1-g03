`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2022 05:35:29 PM
// Design Name: 
// Module Name: tb_ejercicio_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_ejercicio_4;
logic [1:0] botones;
logic [3:0] sw_0_3;
logic [3:0] sw_4_7;
logic [3:0] sw_8_11;
logic [3:0] sw_12_15;

mux_4_a_1 DUT (.botones(botones),.sw_0_3(sw_0_3),.sw_4_7(sw_4_7),.sw_8_11(sw_8_11),.sw_12_15(sw_12_15)
);


initial begin
    sw_0_3=$random%4;
    sw_4_7=$random%4;
    sw_8_11=$random%4;
    sw_12_15=$random%4;
    botones=0;
  	#5
    sw_0_3=$random%4;
    sw_4_7=$random%4;
    sw_8_11=$random%4;
    sw_12_15=$random%4;
    botones=1;
    #5
    sw_0_3=$random%4;
    sw_4_7=$random%4;
    sw_8_11=$random%4;
    sw_12_15=$random%4;
    botones=2;
  	#5
  	sw_0_3=$random%4;
    sw_4_7=$random%4;
    sw_8_11=$random%4;
    sw_12_15=$random%4;
    botones=3;
	$finish;
end
endmodule
