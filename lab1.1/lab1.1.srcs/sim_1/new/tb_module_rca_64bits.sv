`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2022 02:24:08
// Design Name: 
// Module Name: tb_module_rca_64bits
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


module tb_module_rca_64bits;

    parameter WIDTH = 64;
    
    logic [WIDTH-1:0] a_pi;
    logic [WIDTH-1:0] b_pi;
    logic [WIDTH:0]   result_po;
    logic             clk_po;
    
    
    
    module_rca_64bits #(.WIDTH(WIDTH))DUT(
    .a_pi          (a_pi),
    .b_pi          (b_pi),
    .result_po     (result_po),
    .clk_po        (clk_po)
    );
    
    
    initial begin   
        repeat (10) begin
            a_pi = $random %64'hffffffffffffffff;
            b_pi = $random %64'hffffffffffffffff;
            #100;
        end
    #10;
    
    $finish;
    
    end

endmodule
