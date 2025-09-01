# HDLBits Verilog Practice

This repository contains my explantions to [HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) problems.  
I am using this repo to track my learning progress in **Verilog HDL** and to build a solid foundation in digital design.
---

## 📌 About HDLBits
[HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) is an online collection of Verilog problems that cover:
- Combinational logic
- Sequential logic
- Finite state machines (FSMs)
- Verification skills

It is widely used by students and engineers to practice and master Verilog coding.

---

## 📂 Repository Structure
The repo is organized by HDLBits sections.
---

## 🚀 Getting Started

### 🔹 Problem 1: Module Declaration – Constant Output
**Statement:**  
*Write a module declaration for a circuit with no inputs and one output. That output should always drive logic high (1).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/module_constant)

---
### 🔹 Problem 2: Module Declaration – Constant Zero Output
**Statement:**  
*Build a circuit with no inputs and one output that always drives logic low (0).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/module_constant0)

---

## 🚀 Verilog Language

### 🔹 Problem 1: Module with One Input and One Output (Wire)
**Statement:**  
*Create a module with one input and one output that behaves exactly like a wire. The output should always follow the input.*  

Unlike physical wires, wires (and other signals) in Verilog are directional. This means information flows in only one direction, from (usually one) source to the sinks.  
The source is also often called a driver that drives a value onto a wire.  

In a Verilog "continuous assignment" (`assign out = in;`), the value of the signal on the left side is driven onto the wire on the right side. The assignment is "continuous" because the assignment continues all the time even if the left side's value changes. A continuous assignment is not a one-time event.  

<img width="811" height="328" alt="image" src="https://github.com/user-attachments/assets/9113db23-edb4-48ec-9134-596099a76748" />


👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/wire)

---
### 🔹 Problem 2: Module Declaration – Constant Zero Output
**Statement:**  
*Build a circuit with no inputs and one output that always drives logic low (0).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/module_constant0)

