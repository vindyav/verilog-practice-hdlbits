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

### 📂 Basics

#### 🔹 Problem 1: Simple Wire
**Statement:**  
*Create a module with one input and one output that behaves exactly like a wire. The output should always follow the input.*  

Unlike physical wires, wires (and other signals) in Verilog are **directional**.  
This means information flows in only one direction — from a source (also called a driver) to the sinks.  

In a Verilog "continuous assignment" (`assign out = in;`), the value of the signal on the left side is driven onto the wire on the right side.  
The assignment is *continuous* because it remains valid at all times, even if the input changes — not just a one-time event.  

<img width="811" height="328" alt="wire-diagram" src="https://github.com/user-attachments/assets/9113db23-edb4-48ec-9134-596099a76748" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/simple_wire)

---

#### 🔹 Problem 2: Four Wires
**Statement:**  
*Create a module with 3 inputs and 4 outputs that behaves like wires. The connections should be:*  
- `a -> w`  
- `b -> x`  
- `b -> y`  
- `c -> z`  
<img width="815" height="281" alt="image" src="https://github.com/user-attachments/assets/93c50f51-d948-48a6-a71b-f556f809be1d" />

In Verilog, outputs can be directly assigned from inputs using **continuous assignments** (`assign`).  
Here, multiple outputs can be driven by the same input (for example, both `x` and `y` take the value of `b`).  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/four_wires.v)

---

#### 🔹 Problem 3: Inverter
**Statement:**  
*Create a module that implements a NOT gate.*  

The NOT gate (or inverter) outputs the logical complement of its input:  
- If the input is `1`, the output is `0`.  
- If the input is `0`, the output is `1`.  

In Verilog, this can be written using the **bitwise NOT operator (`~`)** inside a continuous assignment.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/inverter.v)


