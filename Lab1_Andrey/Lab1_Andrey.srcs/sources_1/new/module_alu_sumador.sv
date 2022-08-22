`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 13:03:04
// Design Name: 
// Module Name: module_alu_sumador
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


module module_alu_sumador(

    input   pkg_bits:: bits_t    ALUA_i,
    input   pkg_bits:: bits_t    ALUB_i,
    input   logic                   ALUFlagIn_i,
    output  pkg_bits:: bits_t       ALUResult_o
    );
    
    import pkg_bits::*;
    
    bits_t   mag_a_r;
    bits_t   mag_b_r;
    bits_t   max_r;
    bits_t   min_r;
    bits_t   mag_sum_r;
        
    logic signo_a_r;
    logic signo_b_r;
    logic signo_sum_r;
    
    always_comb begin
    
        signo_a_r = ALUA_i[BITS_WIDTH - 1];
        signo_b_r = ALUB_i[BITS_WIDTH - 1];
        
        //separar magnitud por signo --------------------------------------
        
        if(signo_a_r == 0) 
            begin       
                mag_a_r = ALUA_i[BITS_WIDTH - 2 : 0];        
            end  
         else
             begin  
               //se niega y se suma +1 para convertir el complemento
                mag_a_r = ~ALUA_i[BITS_WIDTH - 1 : 0];
                mag_a_r = mag_a_r + 1;       
              end
                 
        if(signo_b_r == 0) 
            begin       
                mag_b_r = ALUB_i[BITS_WIDTH -2 : 0];        
            end  
         else
             begin  
               //se niega y se suma +1 para convertir el complemento
                mag_b_r = ~ALUB_i[BITS_WIDTH -1 : 0];
                mag_b_r = mag_b_r + 1;       
              end
        
        //se obtiene el de mayor valor
        if(mag_a_r > mag_b_r) 
            begin       
                max_r = mag_a_r;
                min_r = mag_b_r;  
            end  
         else
             begin  
               //aplica para mag_a == mag_b
                max_r = mag_b_r;
                min_r = mag_a_r;        
              end
             
             
        //operaciones matematicas ---------------------------
        
        if( (signo_a_r & signo_b_r) | (~signo_a_r & ~signo_b_r) ) //suma terminos positivos o negativos
            
            begin      
                mag_sum_r = max_r + min_r; 
                if(signo_a_r == 0)
                        signo_sum_r = 0;
                else
                        signo_sum_r = 1;                                
            end
        
        else if( ( (~signo_a_r & signo_b_r) | (signo_a_r & ~signo_b_r) ) & max_r != min_r )//resta terminos positivos o negativos
            
            begin           
                mag_sum_r = max_r - min_r;
                if( ( (mag_a_r > mag_b_r)  & (signo_a_r == 0) ) | 
                  ( ( (mag_a_r < mag_b_r)) & (signo_b_r == 0) ) )
                        signo_sum_r = 0;
                else
                        signo_sum_r = 1;                                               
            end
        
        else //si son iguales es cero
            
            begin
                mag_sum_r = 0;
                signo_sum_r = 0;
            end
            
        //vuelve a complemento a dos (si es necesario)   
        
        if(signo_sum_r == 1) 
        
            begin            
                mag_sum_r = mag_sum_r - 1;              
                mag_sum_r = ~mag_sum_r;                             
            end 

        else
                
            mag_sum_r = mag_sum_r;
        
        //agregar carry
               
        mag_sum_r = mag_sum_r + ALUFlagIn_i;
        
        
        //concatenar
        
        ALUResult_o = {signo_sum_r, mag_sum_r};
                  
    end   
    
endmodule
