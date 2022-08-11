`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2022 02:15:00
// Design Name: 
// Module Name: tb_module_full_adder_1bit
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


module tb_module_full_adder_1bit;

    logic s0 ;
    logic s1 ;
    logic cin;
    logic cout;
    logic sum;
    
    module_full_adder_1bit DUT(
    .s1     (s1),
    .s0     (s0),
    .cin    (cin),
    .cout   (cout),
    .sum    (sum)
    );
    
    initial begin
        s0 = 1'b1;
        s1 = 1'b0;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b0;
        s1 = 1'b1;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b0;
        s1 = 1'b0;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b1;
        s1 = 1'b1;
        cin = 1'b0;
        
        #10;
        $finish;
    end
    
    
endmodule
