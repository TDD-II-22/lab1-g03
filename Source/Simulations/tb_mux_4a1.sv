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
    
    parameter BITS = 4;
    logic   [BITS - 1 : 0]    dato0_i;
    logic   [BITS - 1 : 0]    dato1_i;
    logic   [BITS - 1 : 0]    dato2_i;
    logic   [BITS - 1 : 0]    dato3_i;
    logic   [1 : 0]           selec_i;
    logic   [BITS - 1 : 0]    salida_o;
    
    //INCIALIZAR MUX16A1
    
    module_mux4a1 #(.BITS(BITS)) module_mux4a1_1 (
    
    .dato0_i     (dato0_i),
    .dato1_i     (dato1_i),
    .dato2_i     (dato2_i),
    .dato3_i     (dato3_i),
    .selec_i     (selec_i),
    .salida_o    (salida_o)
    );
    
    //CREACION DE ARCHIVO
    
   
   
    //GENEREACION DE DATOS DE PRUEBA
    
    initial begin
    
    dato0_i = 'd2;
    dato1_i = 'd10;
    dato2_i = 'd20;
    dato3_i = 'd30;
    selec_i = 'd0;
    #10
    selec_i = 1;
    #20
    selec_i = 2;
    #15
    $finish;
    
    end
   
endmodule