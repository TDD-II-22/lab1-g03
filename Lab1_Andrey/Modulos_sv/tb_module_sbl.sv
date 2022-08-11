`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC
// Engineer: Carlos Andrey Morales Zamora
// 
// Create Date: 05.08.2022 00:16:36
// Design Name: 
// Module Name: tb_module_sbl
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


module tb_module_sbl;
    logic [15 : 0] switch_pi;
    logic [3 : 0] botones_pi;
    logic [15 : 0] leds_po;
    
    module_sbl module_sbl (
        .switch_i(switch_pi),
        .botones_i(botones_pi),
        .leds_o(leds_po)
        );
     
    initial begin
	switch_pi=16'b1111_0101_1010_0001;
	botones_pi=4'b0111;
  	#5
	botones_pi=4'b1000;
    #5
    switch_pi=16'b0000_0000_1111_0000;
  	botones_pi=4'b1101;
  	#5
	$finish;
end

endmodule