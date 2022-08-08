`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/06/2022 04:47:18 PM
// Design Name: 
// Module Name: tb_module_display_7_seg
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


module tb_module_display_7_seg;
parameter BITS   = 4;
logic [ 15 : 0 ] sw_i;
logic [ 1  : 0 ] btn_i;
logic [ 6 : 0 ] seg_o;
logic [ 7 : 0 ] an_o;
module_display_7_seg #( .BITS  (  BITS  ) ) DUT (
                        .sw_i  (  sw_i    ),
                        .btn_i ( btn_i    ),
                        .seg_o ( seg_o    ),
                        .an_o  (  an_o    )
);
initial begin
    sw_i  =  $random%16;
    btn_i = 0;
  	#5
    sw_i  = $random%16;
    btn_i = 1;
    #5
    sw_i  = $random%16;
    btn_i = 2;
  	#5
    btn_i = 3;
	$finish;
end


endmodule
