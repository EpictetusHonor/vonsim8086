# Vonsim8086
Colección de programas en ensamblador desarrollados para el simulador VonSim (similar a x86, estilo 8086).  
Este repositorio funciona como un archivo de ejercicios, soluciones de parciales viejos y apuntes personales de mis estudios en Ingeniería en Computación.  
Está pensado como una referencia estructurada para practicar programación de bajo nivel y experimentar con arquitecturas de estilo Von Neumann.

# Programas en Ensamblador para VonSim

Este repositorio contiene una colección de programas en ensamblador escritos para el **simulador VonSim** (similar a x86, estilo 8086).  
Es principalmente un archivo personal de ejercicios, problemas de parciales antiguos y experimentos realizados durante mis estudios de Ingeniería en Computación.  
El objetivo es proporcionar una referencia estructurada para la práctica de programación de bajo nivel.

(breve descripción de especificaciones)

- Arquitectura: Palabras de 16 bits (similar a x86, estilo 8086).

- Pila (Stack): Implementada con un puntero de pila (SP) inicializado en 0x8000.

- Endianess: Little Endian (el byte menos significativo se almacena primero).

- Registros: Registros de propósito general y de segmento (AX, BX, CX, DX, SI, DI, BP, SP, IP, FLAGS).

Conjunto de instrucciones:

- Transferencia de datos: MOV, XCHG, PUSH, POP, etc.

- Aritméticas: ADD, SUB, MUL, DIV, INC, DEC.

- Lógicas: AND, OR, XOR, NOT, SHL, SHR.

- Control de flujo: JMP, saltos condicionales (JE, JNE, JG, etc.), CALL, RET.

Comparaciones: CMP, TEST.

- Modelo de memoria: Memoria segmentada, siguiendo convenciones del 8086.

- Ejecución: Simulación paso a paso con visualización de registros y memoria.

- Propósito: Herramienta educativa para la práctica de programación de bajo nivel y experimentos con arquitecturas de estilo Von Neumann.


## 🔌 Dispositivos simulados

## PIO (Programmable Input/Output):
  
  Simula interfaces de entrada/salida mediante handshake.

  Permite interacción con periféricos como luces y llaves (switches).

  Útil para ejercicios de sincronización.
  
  - Timer:

    Genera interrupciones periódicas configurables.

    Se utiliza para pruebas de multitarea, delays y sincronización con hardware simulado.
 
  - Ejecución con F10:

    Boton de interruptor configurable.
    

## PIC (Programmable Interrupt Controller):

  Manejo de interrupciones externas.

  Permite coordinar interrupciones del temporizador (timer) y del PIO.

  Simula la lógica de interrupciones por hardware típica de los sistemas 8086.

  - Luces y Llaves (Switches):

      Llaves: Simulan entradas digitales controladas por el usuario.

      Luces: Representan salidas que muestran el estado de puertos de salida.

Impresora (Printer):

    Dispositivo de salida textual.

    Permite redirigir datos enviados a un puerto de E/S para visualizar “impresiones” simuladas junto con su tiempo de demora y su busy que indica que esta ocupada.

  Tanto el PIO como el PIC cuentan con impresoras particulares lo que difiere son sus manejos y sus funciones (la del pic permite interrupciones mientras se procesan otras instrucciones mientras que la del pio mantiene en constante 
  revision al procesador en un estado de espera activa).

---

## 📂 Estructura del Repositorio

/docs → Notas, guías o referencias

/programs  
  ├── exams → Soluciones de parciales en ensamblador  
  ├── practice → Ejercicios pequeños y programas parciales  
  └── projects → Programas más grandes o completos  

---

## 🖥️ Programa de Ejemplo

Un programa simple que suma dos números y guarda el resultado:

```asm
; Suma de dos números
MOV AX, 5
MOV BX, 3
ADD AX, BX
; Resultado en AX = 8
