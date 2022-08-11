`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2022 01:57:59 PM
// Design Name: 
// Module Name: alu_and
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


module alu_and # (parameter int BITS = 8)(
    input logic  [BITS - 1 : 0] alu_a,
    input logic  [BITS - 1 : 0] alu_b,
    output logic [BITS - 1 : 0] salida_and
    );
    assign salida_and = alu_a & alu_b;

endmodule
