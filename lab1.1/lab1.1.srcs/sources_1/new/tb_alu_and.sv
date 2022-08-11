`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2022 02:26:18 PM
// Design Name: 
// Module Name: tb_alu_and
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


module tb_alu_and;
parameter BITS=8;
logic [BITS - 1: 0] alu_a;
logic [BITS - 1: 0] alu_b;

alu_and #(.BITS(BITS)) DUT (.alu_a(alu_a),.alu_b(alu_b)
);

initial begin
  $dumpfile("tb_alu_and.vcd");
  $dumpvars(0, tb_alu_and);
end

initial begin
	alu_a=$random%BITS;
	alu_b=$random%BITS;
  	#5
  	alu_a=$random%BITS;
	alu_b=$random%BITS;
  	#5
  	alu_a=$random%BITS;
	alu_b=$random%BITS;
  	#10
	$finish;
end
endmodule
