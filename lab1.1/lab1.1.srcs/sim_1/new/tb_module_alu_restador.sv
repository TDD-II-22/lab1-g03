`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/09/2022 02:15:48 PM
// Design Name: 
// Module Name: tb_module_alu_restador
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


module tb_module_alu_restador;
import pkg_bits::*;

logic                         alu_flagin_i;
logic  [ BITS_WIDTH - 1 : 0 ] alu_a_i;
logic  [ BITS_WIDTH - 1 : 0 ] alu_b_i;
logic  [ BITS_WIDTH - 1 : 0 ] alu_result_o;
logic                         alu_flags_o;
    
module_alu_restador DUT(
    .alu_flagin_i ( alu_flagin_i ),
    .alu_a_i      ( alu_a_i ),
    .alu_b_i      ( alu_b_i ),
    .alu_result_o ( alu_result_o ),
    .alu_flags_o  ( alu_flags_o )
    );
    
initial begin
    alu_flagin_i  =  1'b1;
    alu_a_i = 0;
    alu_b_i = 4'b0111;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
  	#5
    alu_flagin_i  =  1'b1;
    alu_a_i = 4'b1111;
    alu_b_i = 4'b1111;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
    #5
    alu_flagin_i  =  1'b0;
    alu_a_i = 4'b1010;
    alu_b_i = 4'b1001;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
    #5
    alu_flagin_i  =  1'b0;
    alu_a_i = 4'b0010;
    alu_b_i = 4'b0100;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
    #5
    alu_flagin_i  =  1'b1;
    alu_a_i = 4'b1001;
    alu_b_i = 4'b1001;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
    #5
    alu_flagin_i  =  1'b0;
    alu_a_i = 4'b0111;
    alu_b_i = 4'b0111;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
  	#5
    alu_flagin_i  =  1'b0;
    alu_a_i = 4'b1010;
    alu_b_i = 4'b0111;
    //alu_a_i = $random%BITS;
    //alu_b_i = $random%BITS;
    #10
	$finish;
end
endmodule