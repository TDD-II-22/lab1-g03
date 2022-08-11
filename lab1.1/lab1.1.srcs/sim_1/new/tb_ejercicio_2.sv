`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2022 02:11:41 PM
// Design Name: 
// Module Name: tb
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
module tb_ejercicio_2;
logic [15:0] switches;
logic [3:0] botones;

ejercicio_2 DUT (.switches(switches),
                 .botones(botones)
);

initial begin
  $dumpfile("tb_ejercicio_2.vcd");
  $dumpvars(0, tb_ejercicio_2);
end

initial begin
	switches=16'b1111_0101_1010_0001;
	botones=4'b0111;
  	#5
	botones=4'b1000;
    #5
    switches=16'b0000_0000_1111_0000;
  	botones=4'b1101;
  	#5
	$finish;
end
endmodule
