`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2022 02:19:53
// Design Name: 
// Module Name: tb_module_cla_8bits
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


module tb_module_cla_8bits;

parameter WIDTH2 = 64;
    
    logic [WIDTH2-1:0] a_pi;
    logic [WIDTH2-1:0] b_pi;
    logic [WIDTH2:0] result_po;
    
    
    
    module_cla_8bits #(.WIDTH2(WIDTH2))DUT(
    .a_pi          (a_pi),
    .b_pi          (b_pi),
    .result_po     (result_po)
    );
    
    
    initial begin   
        repeat (10) begin
            
            a_pi = 64'hffffffffffffffff;
            b_pi = 64'hffffffffffffffff;
            #100;
            
        end
    #10;
    
    $finish;
    
    end
endmodule
