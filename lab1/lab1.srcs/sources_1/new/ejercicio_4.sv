`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2022 05:01:51 PM
// Design Name: 
// Module Name: ejercicio_4
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

module mux_4_a_1(
    input [1:0] botones,
    input [3:0] sw_0_3,
    input [3:0] sw_4_7,
    input [3:0] sw_8_11,
    input [3:0] sw_12_15,
    output logic [6:0] display,
    output logic [7:0] an
);
assign an=8'b11111110;
logic [3:0] salidita;
logic [6:0] display_7;
always_comb begin
    if(botones==2'b00)begin
    salidita=sw_0_3;
    end
    if(botones==2'b01)begin
    salidita=sw_4_7;
    end
    if(botones==2'b10)begin
    salidita=sw_8_11;
    end
    if(botones==2'b11)begin
    salidita=sw_12_15;
    end
end
 always @ ( * ) begin
		case(salidita)
          4'b0000 : display_7 = 7'b1000000;
          4'b0001 : display_7 = 7'b1111001;
          4'b0010 : display_7 = 7'b0100100;
          4'b0011 : display_7 = 7'b0110000;
          4'b0100 : display_7 = 7'b0011001;
          4'b0101 : display_7 = 7'b0010010;
          4'b0110 : display_7 = 7'b0000010;
          4'b0111 : display_7 = 7'b1111000;
          4'b1000 : display_7 = 7'b0000000;
          4'b1001 : display_7 = 7'b0010000;
          4'b1010 : display_7 = 7'b0001000; 
          4'b1011 : display_7 = 7'b0000011;
          4'b1100 : display_7 = 7'b1000110;
          4'b1101 : display_7 = 7'b0100001;
          4'b1110 : display_7 = 7'b0000110;
          4'b1111 : display_7 = 7'b0001110;
		endcase
	end
//ejercicio_4 uno(.codificado(salidita),.display_7_segmentos(display_7));
assign display=display_7;
endmodule

/*module ejercicio_4(
    input        [3:0]  codificado,
    output logic [7:0]  display_7_segmentos
    );
    always @ ( * ) begin
		case(codificado)
          4'b0000 : display_7_segmentos = 7'b1111110;
          4'b0001 : display_7_segmentos = 7'b0110000;
          4'b0010 : display_7_segmentos = 7'b1101101;
          4'b0011 : display_7_segmentos = 7'b1111001;
          4'b0100 : display_7_segmentos = 7'b0110011;
          4'b0101 : display_7_segmentos = 7'b1011011;
          4'b0110 : display_7_segmentos = 7'b1011111;
          4'b0111 : display_7_segmentos = 7'b1110000;
          4'b1000 : display_7_segmentos = 7'b1111111;
          4'b1001 : display_7_segmentos = 7'b1111011;
          4'b1010 : display_7_segmentos = 7'b1110111; 
          4'b1011 : display_7_segmentos = 7'b0011111;
          4'b1100 : display_7_segmentos = 7'b1001110;
          4'b1101 : display_7_segmentos = 7'b0111101;
          4'b1110 : display_7_segmentos = 7'b1001111;
          4'b1111 : display_7_segmentos = 7'b1000111;
		endcase
	end
endmodule*/
