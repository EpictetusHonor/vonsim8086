# Vonsim8086
Colección de programas en ensamblador desarrollados para el simulador VonSim (similar a x86, estilo 8086).  
Este repositorio funciona como un archivo de ejercicios, soluciones de parciales viejos y apuntes personales de mis estudios en Ingeniería en Computación.  
Está pensado como una referencia estructurada para practicar programación de bajo nivel y experimentar con arquitecturas de estilo Von Neumann.

# Programas en Ensamblador para VonSim

Este repositorio contiene una colección de programas en ensamblador escritos para el **simulador VonSim** (similar a x86, estilo 8086).  
Es principalmente un archivo personal de ejercicios, problemas de parciales antiguos y experimentos realizados durante mis estudios de Ingeniería en Computación.  
El objetivo es proporcionar una referencia estructurada para la práctica de programación de bajo nivel.

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
