`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2022 09:17:04 PM
// Design Name: 
// Module Name: tb_module_switches_botones_leds
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


module tb_module_switches_botones_leds;

logic [ 15 : 0 ] switches_pi;
logic [ 3 : 0  ] botones_pi;
logic [ 3 : 0  ] comb_1_po;
logic [ 3 : 0  ] comb_2_po;
logic [ 3 : 0  ] comb_3_po;
logic [ 3 : 0  ] comb_4_po;

module_switches_botones_leds DUT (.switches_pi ( switches_pi ),
                                  .botones_pi  ( botones_pi  ),
                                  .comb_1_po   ( comb_1_po   ),
                                  .comb_2_po   ( comb_2_po   ),
                                  .comb_3_po   ( comb_3_po   ),
                                  .comb_4_po   ( comb_4_po   )
);


initial begin
	switches_pi = 16'b1111_0101_1010_0001;
	botones_pi  = 4'b0111;
  	#5
	botones_pi  = 4'b1000;
    #5
    switches_pi = 16'b0000_0000_1111_0000;
  	botones_pi  = 4'b1101;
  	#5
	$finish;
end
endmodule
