# Laboratorio 1 Tallere de Diseño Digital

## 1. Abreviaturas y definiciones
- **FPGA**: Field Programmable Gate Arrays

## 2. Referencias
[0] David Harris y Sarah Harris. *Digital Design and Computer Architecture. RISC-V Edition.* Morgan Kaufmann, 2022. ISBN: 978-0-12-820064-3

## 3. Desarrollo




 
### 3.1 Ejercicio 1. Circuito Digitales Discretos


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj







### 3.2 Ejercicio 2. Switxhes, botones y LEDs


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj










### 3.3 Ejercicio 3. Multiplexor 4-to-1


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj










### 3.4 Ejercicio 4. Decodificador para display de 7 segmentos


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj








### 3.5 Ejercicio 5. Sumador y ruta crítica


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj










### 3.6 Ejercicio 6. Unidad Aritmética Lógica (ALU)


#### Tipos de variables
- `t_slope`: Se utiliza para definir el flanco que se detecta, tiene dos miembros: POS_EDGE y NEG_EDGE.

#### Constantes
- `DETECTED_SLOPE`: Define el flanco que se detecta para disparar el pulso. 
- `OUT_POLARITY`  : Define el valor activo de la salida del pulso.

#### 3.1.1 Módulo tal

Este modulo hace....

##### 1. Encabezado del módulo
```SystemVerilog
module fsm_pulsos(
    input logic     clk_i,      
    input logic     rst_n_i,    // Reset input - active low
    input logic     button_i,   // Button input
    output logic    pulse_o     // Pulse output 
    );
```
##### 2. Parámetros

El módulo no posee parámetros. 

##### 3. Entradas y salidas

- `clk_i`: Entrada de reloj del módulo
- `rst_n_i`: Entrada de reset del módulo, activo en **bajo**.
- `button_i`: Entrada del flanco a detectar.
- `pulse_o`: Salida del módulo. Presenta un pulso con nivel `OUT_POLARITY` por un ciclo de reloj cuando se detecta el flanco dado por `DETECTED_SLOPE`.

##### 4. Criterios de diseño

Se seleccionó una arquitectura moore para la máquina de estados y el diagrama de estados es:

<img src="https://raw.githubusercontent.com/pmendozap/Ejemplo_TDD_2_22/main/doc/state_diag.svg" width="300" >

la implementación se hizo en tres bloques always: uno para la variable de estado, uno para la decodificación de siguiente estado y otro para la generación de la salida. 

En esta máquina la salida **NO** está registrada.

##### 5. Testbench

El testbench .,mkj
