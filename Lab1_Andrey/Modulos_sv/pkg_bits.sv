`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 04.08.2022 23:17:24
// Design Name: 
// Module Name: pkg_bits
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


package pkg_bits;

    parameter int BITS_WIDTH = 4;
    typedef logic [BITS_WIDTH - 1: 0] bits_t;
    typedef logic [BITS_WIDTH : 0] bitsw_t;
    
endpackage

