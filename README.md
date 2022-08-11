# Laboratorio 1 Taller de Diseño Digital

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo




### 3.1 Ejercicio 1. Circuitos Digitales Discretos


En este ejercicio se debía hacer un montaje en protoboard para la conexión de un taclado hexadecimal y por medio de un encoder y un decoder poder mapear que tecla se esté pulsando. El circuito a montar es el siguiente:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/cto.png" width="500" >



##### 1. LÃ³gica combinacional



La lógica combinacional para el decoder es la mostrada en la siguiente imÃ¡gen:

<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/Pt1.jpg" width="300" >


La lógica combinacional para el encoder es la mostrada en la siguiente imÃ¡gen:

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
##### 4. Criterios de diseÃ±o

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
#### Constantes

`BITS` Es una constante numérica que almacena un número enero que representa la canrtidad de bits deseados

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
- `select_i`: Línea de selector de 2 bits para multiplexar 4 entradas.
- `salida_o`: Salida del multiplexor

##### 4. Criterios de diseño

Se utilizó lógica combinacional para la resolución del ejercicio.

##### 5. Testbench

El testbench que corresponde a este archivo tb_module_mux4a1.sv y es observable el correcto funcionamiento del multiplexor dado que en la salida, según la combinación del selector, se tiene una linea de datos de todas las que entran al multiplexor. 

Con el Behavoral simulation se puede observar que el mux funxiona segpun lo esperado ya que según es la combinación del selector, así es el dato que se muestra en la salida. Se puede observar en la siguiente imagen:


<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/Behavoral.png" width="500" >


La simulación de tiempo nos arroja el siguiente resultado:


<img src="https://github.com/TDD-II-22/lab1-g03/blob/main/Images/timing.png" width="500" >








### 3.4 Ejercicio 4. Decodificador para display de 7 segmentos




#### Constantes



#### 3.1.1 MÃ³dulo tal



##### 1. Encabezado del mÃ³dulo



##### 2. ParÃ¡metros



##### 3. Entradas y salidas



##### 4. Criterios de diseÃ±o



##### 5. Testbench










### 3.5 Ejercicio 5. Sumador y ruta crÃ­tica

#### Tipos de variable 1 bit full adder.

- `s0`: Primer valor de 1 bit.
- `s1`: Segundo valor de 1 bit.
- `cin`: Carry de entrada al sumador.
- `cout`: Carry de salida del sumador.
- `sum`: Muestra la suma de los bits y el carry.

#### tipos de variable RCA 8 bits, CLA 8bits, RCA 64bits.

- `a_pi`: Entrada de `WIDTH` bits para el primer valor.
- `b_pi`: Entrada de `WIDTH` bits para el segundo valor.
- `clk_po`: Entrada para generar el clk en la FPGA solo para module_rca_64bits.
- `result_po`: Salida de `WIDTH` bits con la suma de los dos valores.

#### Constantes

`WIDTH` Es una constante que almacena la cantidad de bits deseada a utilizar.

#### 3.1.1 module_full_adder_1bit

Este modulo hace la suma de 2 bits y una carry y devuelve la suma y un carry.

#### 3.1.2 module_rca_8bit

Este modulo hace la suma de dos numeros de n cantidad de bits usando varios full adder de 1 bit el cual va acarreando 
el carry de salida del anterior para usarlo como carry de entrada para el siguiente.

#### 3.1.3 module_cla_8bit

Este modulo hace la suma de dos numeros de n cantidad de bits usando varios full adder de 1 bit donde los carry son
generados paralelamente usando propagate y generate.

#### 3.1.2 module_rca_64bit

Este modulo hace la suma de dos numeros de 64 bits varias veces para probar si no tiene errores y da resultados correctos.

##### 1. Encabezado del los mÃ³dulos

#### module_full_adder_1bit

```SystemVerilog
module full_adder_1bit(s1, s0, cin, cout, sum);     
    input logic    s1,                              
                   s0,                              
                   cin;                             
                   
    output logic   cout,                            
                   sum;
``` 

#### module_rca_8bits

```SystemVerilog
module module_rca_8bits #(parameter WIDTH = 8)(
    input  logic [WIDTH-1:0] a_pi,                  
    input  logic [WIDTH-1:0] b_pi,
    output logic [WIDTH:0]   result_po
    );
```

#### module_cla_8bits

```SystemVerilog
module module_cla_8bits #(parameter WIDTH2 = 8)(
    input  logic [WIDTH2-1:0] a_pi,                  
    input  logic [WIDTH2-1:0] b_pi,
    output logic [WIDTH2:0]   result_po
    );
```

#### module_rca_64bits

```SystemVerilog
module module_rca_64bits #(parameter WIDTH = 8)(
    input  logic [WIDTH-1:0] a_pi,                  
    input  logic [WIDTH-1:0] b_pi,
    output logic [WIDTH:0]   result_po,
    input  logic             clk_po
    );
```


##### 2. ParÃ¡metros

`WIDTH` Almacena la cantidad de bits deseada a utilizar.

##### 3.1 Entradas y salidas 1 bit full adder.

- `s0`: Primera linea de entrada de 1 bit al sumador.
- `s1`: Segunda linea de entrada de 1 bit al sumador.
- `cin`: Linea de entrada para el carry al sumador.
- `cout`: Linea de salida para el carry del sumador.
- `sum`: salida del sumador con la suma de los bits.

##### 3.1 Entradas y salidas RCA 8 bits, CLA 8 bits y RCA 64 bits.

- `a_pi`: Linea de entrada para el primer valor.
- `b_pi`: Linea de entrada para el segundo valor.
- `clk_po`: Linea de entrada para generar el clk en la FPGA solo para module_rca_64bits.
- `result_po`: Linea de salida con la suma de los dos valores.


##### 4. Criterios de diseÃ±o

Se seleccionÃ³ una lÃ³gica combinacional para la resoluciÃ³n del ejercicio.

##### 5. Testbench

El testbench que corresponde al tb_module_full_adder_1bit prueba el correcto funcionamiento de la suma de dos bits y un carry.

El testbench que corresponde al tb_module_rca_8bits prueba el correcto funcionamiento sumando dos numeros de n bits aleatoriamente
una cantidad definida por defecto 10 veces.

El testbench que corresponde al tb_module_cla_8bits prueba el funcionamiento sumando dos numeros de n bits aleatoriamente
una cantidad definida por defecto 10 veces.

El testbench que corresponde al tb_module_rca_64bits prueba el funcionamiento con la suma de dos valores de 64 bits aleatoriamente
una n cantidad de veces y ver si logra devolver valores correctos.

### 3.6 Ejercicio 6. Unidad AritmÃ©tica LÃ³gica (ALU)




#### Constantes



#### 3.1.1 MÃ³dulo tal



##### 1. Encabezado del mÃ³dulo



##### 2. ParÃ¡metros



##### 3. Entradas y salidas



##### 4. Criterios de diseÃ±o



##### 5. Testbench
