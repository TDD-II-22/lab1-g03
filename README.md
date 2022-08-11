# Laboratorio 1 Taller de Diseño Digital

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo




### 3.1 Ejercicio 1. Circuitos Digitales Discretos


En este ejercicio se debió hacer un montaje en protoboard para la conexión de un taclado hexadecimal y por medio de un encoder y un decoder poder mapear que tecla se está pulsando. El circuito a montar es el siguiente:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/cto.png" width="500" >



##### 1. Lógica combinacional



La lógica combinacional para el decoder es la mostrada en la siguiente imágen:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/Pt1.jpg" width="300" >


La lógica combinacional para el encoder es la mostrada en la siguiente imágen:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/Pt2.jpg" width="300" >



##### 2. Circuitos Lógicos

El circuito combinacional para el decoder es la mostrada en la siguiente imágen:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/GRAP1.png" width="500" >



El circuito combinacional para el encoder es la mostrada en la siguiente imágen:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/GRAP2.png" width="500" >



##### 5. Testbench

Para las pruebas del circuito, se conectaron dos switches para simular los estados en bajo y en alto de las entradas del decoder y en las salidas del encoder dos leds que representa una combinación específica para cada tecla pulsada de la fila escogida por el decoder.

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

`BITS` Almacena la cantidad de bits deseada por cada línea de datos

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
<<<<<<< Updated upstream
- `btn_pi`: Toma valores dependiendo de los botones presionados.
- `selec_i`: Toma los valores dependiendo de los botones.
- `sw_pi`: Toma valores dependiendo de los switches activados.
- `display_po`: Toma valores dependiendo del decodificador y establece los segmentos que se encenderan.
- `anodo_po`: Tiene un valor fijo en el que solo enciende el primer display.
- `salida_o`: Toma los valores dependiendo de la selección y la entrada.
- `entrada_i`: Toma valores dependiendo de la salida del multiplexor.
- `display_o`: Toma valores dependiendo de la salida del decodificador.
=======
`btn_pi`: Toma valores dependiendo de los botones presionados.
`selec_i`: Toma los valores dependiendo de los botones.
`sw_pi`: Toma valores dependiendo de los switches activados.
`display_po`: Toma valores dependiendo del decodificador y establece los segmentos que se encenderan.
`anodo_po`: Tiene un valor fijo en el que solo enciende el primer display.
`salida_o`: Toma los valores dependiendo de la selección y la entrada.
`entrada_i`: Toma valores dependiendo de la salida del multiplexor.
`display_o`: Toma valores dependiendo de la salida del decodificador.
>>>>>>> Stashed changes


 
#### 3.4.1 module_7seg_display_leds
Este modulo se encarga de llamar a los modulos del multiplexor el decodificador y conectarlos, obteniendo las salidas del display de 7 segmentos listos, pero ademas establece como salida ciertos LEDs para mostrar los interruptores que se encuentran activos dependiendo de los botones. 


##### 1. Encabezado del módulo
```SystemVerilog
module module_7seg_display_leds #(parameter BITS = 16) (
    input   logic   [1 : 0]             btn_pi,
    input   logic   [BITS - 1 : 0]      sw_pi,
    output  logic   [6: 0]              display_po,
    output  logic   [BITS - 1 : 0]      leds_po,
    output  logic   [7 : 0]             anodo_po    
    );
```


##### 2. Parámetros
<<<<<<< Updated upstream
`BITS`: Es una constante númerica que almacena un número enero que representa el número de bits deseados.

##### 3. Entradas y salidas
- `btn_pi`:Entrada de 2 bits para la selección dentro del Mux.
- `sw_pi`: Entradas de los interruptores que se quieran usar.
- `display_po`: Salida que va directo al display de 7 segmentos.
- `anodo_po`: Salida de 8 bits que establece cuales displays de los 8 que hay se van a encender.
=======
`BITS` Es una constante númerica que almacena un número enero que representa el número de bits deseados.

##### 3. Entradas y salidas
`btn_pi`:Entrada de 2 bits para la selección dentro del Mux.
`sw_pi`: Entradas de los interruptores que se quieran usar.
`display_po`: Salida que va directo al display de 7 segmentos.
`anodo_po`: Salida de 8 bits que establece cuales displays de los 8 que hay se van a encender.
>>>>>>> Stashed changes

##### 4. Criterios de diseño
Se seleccionó una lógica combinacional para la resolución del ejercicio.

##### 5. Testbench
El testbench que corresponde a este archivo tb_module_7seg_display_leds.sv

#### 3.4.2 module_7seg_decodificador
Este modulo se encarga de recibir una entrada de 4 bits y de establecer los segmentos que se encenderan en el display.
##### 1. Encabezado del módulo
```SystemVerilog
module module_7seg_decodificador(
    
    input   logic   [3 : 0]   entrada_i,
    output  logic   [6 : 0]   display_o
    
    );
```
##### 2. Parámetros
No tiene parametros.


##### 3. Entradas y salidas
<<<<<<< Updated upstream
- `entrada_i`: Entrada de 4 bits dependiendo de la salida del multiplexor.
- `display_o`: Salida de 7 bits que establece los segmentos que se encienden y apagan.
=======
`entrada_i`: Entrada de 4 bits dependiendo de la salida del multiplexor.
`display_o`: Salida de 7 bits que establece los segmentos que se encienden y apagan.
>>>>>>> Stashed changes


##### 4. Criterios de diseño
Se seleccionó una lógica combinacional para la resolución del ejercicio.


##### 5. Testbench
El testbench que corresponde a este archivo tb_module_7seg_deco.sv
#### 3.4.3 module_7seg_mux4a1
Este modulo se encarga de multiplexar las 4 entradas y dejar salir 1 de estas dependiendo de los bits de selección.
##### 1. Encabezado del módulo
```SystemVerilog
module module_7seg_mux4a1 # (parameter BITS = 16)(
    input  logic    [BITS - 1 : 0]  entrada_i,
    input  logic    [1 : 0]         selec_i,
    output logic    [3 : 0]         salida_o
    );
```

##### 2. Parámetros
<<<<<<< Updated upstream
- `BITS` Es una constante númerica que almacena un número enero que representa el número de bits deseados


##### 3. Entradas y salidas
- `entrada_i`: Entrada parametrizada que se divide en 4 entradas.
- `selec_i`: Entrada que establece cual de las 4 entradas se dejara pasar en el multiplexor.
- `salida_o`: Salida que depende de la selección y las entradas.
=======
`BITS` Es una constante númerica que almacena un número enero que representa el número de bits deseados


##### 3. Entradas y salidas
`entrada_i`: Entrada parametrizada que se divide en 4 entradas.
`selec_i`: Entrada que establece cual de las 4 entradas se dejara pasar en el multiplexor.
`salida_o`: Salida que depende de la selección y las entradas.
>>>>>>> Stashed changes


##### 4. Criterios de diseño
Se seleccionó una lógica combinacional para la resolución del ejercicio.


##### 5. Testbench
Su funcionamiento se comprueba en el testbench del display completo el archivo es tb_module_7seg_display_leds.sv


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


