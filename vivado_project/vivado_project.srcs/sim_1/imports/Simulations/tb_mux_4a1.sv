`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TEC     
// Engineer: Carlos Andrey Morales Zamora
//           Cristopher McGuinness
//           Jose Andres Vasquez Guillen
//           Brainer Borge
// 
// Create Date: 04.08.2022 00:50:41
// Design Name: 
// Module Name: tb_module_mux4a1
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


module tb_module_mux4a1;

    //INICIALIZACION DE DATOS
    
    parameter BITS = 8;
    logic   [BITS - 1 : 0]    dato0_i;
    logic   [BITS - 1 : 0]    dato1_i;
    logic   [BITS - 1 : 0]    dato2_i;
    logic   [BITS - 1 : 0]    dato3_i;
    logic   [1 : 0]           selec_i;
    logic   [BITS - 1 : 0]    salida_o;
    int num = 0;
    
    //INCIALIZAR MUX16A1
    
    module_mux4a1 #(.BITS(BITS)) module_mux4a1_1 (
    
    .dato0_i     (dato0_i),
    .dato1_i     (dato1_i),
    .dato2_i     (dato2_i),
    .dato3_i     (dato3_i),
    .selec_i     (selec_i),
    .salida_o    (salida_o)
    );
    
     
   
   
    //GENEREACION DE DATOS DE PRUEBA
    
    initial begin
    repeat(50) begin
                    num = $random%16;
                    dato0_i = num;
                    num = num+1;
                    dato1_i = num;
                    num = num+1;
                    dato2_i = num;
                    num = num+1;
                    dato3_i = num;
                    selec_i = 0;
                    #10
                    selec_i = 1;
                    #10
                    selec_i = 2;
                    #10
                    selec_i = 3;
                    #10   
                    
                    $finish; 
                end 
                      //$finish; 
 end
  
endmodule


