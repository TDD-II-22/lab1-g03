# Laboratorio 1 Taller de Diseño Digital

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo




### 3.1 Ejercicio 1. Circuitos Digitales Discretos





##### 1. Encabezado del módulo



##### 2. Parámetros



##### 3. Entradas y salidas



##### 4. Criterios de diseño



##### 5. Testbench



### 3.2 Ejercicio 2. Switches, botones y LEDs
#### Tipos de variables
- `switches_pi`: toma valores de 16 bits dependiendo de los interruptores.
- `botones_pi`: toma valores de 4 bits dependiendo de los botones.
- `comb_1_po`: toma valores de 4 bits dependiendo de los primeros 4 interruptores.
- `comb_1_po`: toma valores de 4 bits dependiendo del segundo grupo de 4 interruptores.
- `comb_1_po`: toma valores de 4 bits dependiendo del tercer grupo de 4 interruptores.
- `comb_1_po`: toma valores de 4 bits dependiendo del cuarto grupo de 4 interruptores.
#### 3.2.1  module_switches_botones_leds
Lógica combinacional que dependiendo de las entradas de los interruptores enciende los LEDs, pero en caso de que se presione el boton que corresponde al grupo se apaga el grupo de 4 LEDa ain importar la entrada de sus 4 interruptores correspondientes.
##### 1. Encabezado del módulo
```SystemVerilog
module module_switches_botones_leds(
    input        [ 15 : 0 ] switches_pi,
    input        [ 3 : 0  ]  botones_pi,
    output logic [ 3 : 0  ]  comb_1_po,
    output logic [ 3 : 0  ]  comb_2_po,
    output logic [ 3 : 0  ]  comb_3_po,
    output logic [ 3 : 0  ]  comb_4_po
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas
- `switches_pi`: Entrada de los 16 interuptores físicos.
- `botones_pi`: Entrada de 4 botones que si se presionan apagan los LEDs.
- `comb_1_po`: Salida que encenderia los primeros 4 LEDs.
- `comb_1_po`: Salida que encenderia el segundo grupo de 4 LEDs.
- `comb_1_po`: Salida que encenderia el tercer grupo de 4 LEDs.
- `comb_1_po`: Salida que encenderia los ultimos 4 LEDs.
##### 4. Criterios de diseño

Se seleccionó una lógica combinacional para la resolución del ejercicio.

##### 5. Testbench

El testbench corresponde a este archivo tb_module_switches_botones_leds.sv 













### 3.3 Ejercicio 3. Multiplexor 4-to-1

#### Tipos de variables
- `dato0_i`: Entrada de `BITS` bits como entrada al multiplexor.
- `dato1_i`: Entrada de `BITS` bits como entrada al multiplexor.
- `dato2_i`: Entrada de `BITS` bits como entrada al multiplexor.
- `dato3_i`: Entrada de `BITS` bits como entrada al multiplexor.
- `select_i`: Entrada de 2 bits para multiplexar 4 entradas.
- `salida_o`: Salida del multiplexor.
- 
#### Constantes

`BITS` Es una constante númerica que almacena un número enero que representa el número de bits deseados

#### 3.1.1 module_mux4a1

Módulo el cual consiste en un multiplexor 4 a 1 parametrizable según la cantidad de bits se necesite por cada línea de datos

##### 1. Encabezado del módulo


```SystemVerilog
module module_mux4a1 #(parameter int BITS = 4)(

    input    logic    [BITS - 1 : 0]    dato0_i,
    input    logic    [BITS - 1 : 0]    dato1_i,
    input    logic    [BITS - 1 : 0]    dato2_i,
    input    logic    [BITS - 1 : 0]    dato3_i,
    input    logic    [1 : 0]           selec_i,
    output   logic    [BITS - 1 : 0]    salida_o
    );
```
##### 2. Parámetros

`BITS` Alamacena la cantidad de bits deseada por cada línea de datos

##### 3. Entradas y salidas

- `dato0_i`: Línea de datos que entra al multiplexor.
- `dato1_i`: Línea de datos que entra al multiplexor.
- `dato2_i`: Línea de datos que entra al multiplexor.
- `dato3_i`: Línea de datos que entra al multiplexor.
- `select_i`: Linea de selector de 2 bits para multiplexar 4 entradas.
- `salida_o`: Salida del multiplexor

##### 4. Criterios de diseño

Se seleccionó una lógica combinacional para la resolución del ejercicio.

##### 5. Testbench

El testbench que corresponde a este archivo tb_module_mux4a1.sv y es observable el correcto funcionamiento del multiplexor dado que en la salida, según la combinación del selector, se tiene una linea de datos de todas las que entran al multiplexor. 











### 3.4 Ejercicio 4. Decodificador para display de 7 segmentos




#### Constantes



#### 3.1.1 Módulo tal



##### 1. Encabezado del módulo



##### 2. Parámetros



##### 3. Entradas y salidas



##### 4. Criterios de diseño



##### 5. Testbench










### 3.5 Ejercicio 5. Sumador y ruta crítica



#### Constantes



#### 3.1.1 Módulo tal



##### 1. Encabezado del módulo



##### 2. Parámetros



##### 3. Entradas y salidas



##### 4. Criterios de diseño



##### 5. Testbench











### 3.6 Ejercicio 6. Unidad Aritmética Lógica (ALU)




#### Constantes



#### 3.1.1 Módulo tal



##### 1. Encabezado del módulo



##### 2. Parámetros



##### 3. Entradas y salidas



##### 4. Criterios de diseño



##### 5. Testbench


