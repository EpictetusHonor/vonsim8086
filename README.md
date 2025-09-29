# vonsim8086
Collection of assembly programs developed for the VonSim simulator (x86-like, 8086 style).   This repository serves as an archive of exercises, old exam solutions, and personal notes from my Computer Engineering studies.   It is intended as a structured reference for practicing low-level programming and experimenting with Von Neumann–style arch.

# VonSim Assembly Programs

This repository contains a collection of assembly programs written for the **VonSim simulator** (x86-like, 8086 style).  
It is primarily a personal archive of exercises, old exam problems, and experiments carried out during my Computer Engineering studies.  
The goal is to provide a structured reference for low-level programming practice.

---

## 📂 Repository Structure

/docs → Notes, guides, or references
/programs
├── exams → Old exam solutions in assembly
├── practice → Small exercises and partial programs
└── projects → Larger or complete programs
---

## 🖥️ Example Program

A simple program that adds two numbers and stores the result:

```asm
; Addition of two numbers
MOV AX, 5
MOV BX, 3
ADD AX, BX
; Result in AX = 8
