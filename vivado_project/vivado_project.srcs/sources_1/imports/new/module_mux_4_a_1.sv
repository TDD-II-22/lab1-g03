`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2022 03:54:20 PM
// Design Name: 
// Module Name: module_mux_4_a_1
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


module module_mux_4_a_1 #(parameter BITS = 4) (
    input logic  [ BITS - 1 : 0] in_1,
    input logic  [ BITS - 1 : 0] in_2,
    input logic  [ BITS - 1 : 0] in_3,
    input logic  [ BITS - 1 : 0] in_4,
    input logic  [ 1        : 0] slc_i,
    output logic [ BITS - 1 : 0] out_1
    );
    always_comb begin
        if ( slc_i == 2'b00 ) begin
             out_1 = in_1;
        end
        if ( slc_i == 2'b01 ) begin
             out_1 = in_2;
        end
        if ( slc_i == 2'b10 ) begin
             out_1 = in_3;
        end
        if ( slc_i == 2'b11 ) begin
             out_1 = in_4;
        end
    end
endmodule
