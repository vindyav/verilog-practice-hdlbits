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

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/module_constant.v)

---
### 🔹 Problem 2: Module Declaration – Constant Zero Output
**Statement:**  
*Build a circuit with no inputs and one output that always drives logic low (0).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/module_constant0.v)

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

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/simple_wire.v)

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
<img width="575" height="281" alt="Notgate" src="https://github.com/user-attachments/assets/b3911201-a3eb-4536-8de5-19dafc427b5c" />
The NOT gate (or inverter) outputs the logical complement of its input:  
- If the input is `1`, the output is `0`.  
- If the input is `0`, the output is `1`.  

In Verilog, this can be written using the **bitwise NOT operator (`~`)** inside a continuous assignment.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/inverter.v)

---

#### 🔹 Problem 4: AND Gate
**Statement:**  
*Create a module with two inputs and one output that implements an AND gate.*  
<img width="586" height="281" alt="Andgate" src="https://github.com/user-attachments/assets/3f2bff74-1383-40a1-838f-d07abad2c8b3" />

The AND gate outputs `1` only when **both inputs are 1**.  
Otherwise, the output is `0`.  

In Verilog, this can be written using the **bitwise AND operator (`&`)** inside a continuous assignment.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/and.v)

---

#### 🔹 Problem 5: NOR Gate
**Statement:**  
*Create a module with two inputs and one output that implements a NOR gate.*  
<img width="586" height="281" alt="Norgate" src="https://github.com/user-attachments/assets/ea3189ad-e731-4085-aa21-531c7683309d" />

The NOR gate is the **inversion of the OR gate**:  
- If **both inputs are 0**, the output is `1`.  
- Otherwise, the output is `0`.  

In Verilog, this can be written using the **bitwise OR operator (`|`)** followed by a bitwise NOT (`~`).  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/nor.v)

---

#### 🔹 Problem 6: XNOR Gate
**Statement:**  
*Create a module with two inputs and one output that implements an XNOR gate.*  
<img width="586" height="281" alt="Xnorgate" src="https://github.com/user-attachments/assets/c822484a-5125-473d-9105-930c0a659528" />

The XNOR gate is the **complement of XOR**:  
- Output is `1` when both inputs are the same (00 or 11).  
- Output is `0` when inputs differ (01 or 10).  

In Verilog, this can be written using the **bitwise XOR operator (`^`)** followed by a NOT (`~`).  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/xnor.v)

---

#### 🔹 Problem 7: Declaring Wires
**Statement:**  
*Implement the following circuit*  
<img width="620" height="264" alt="Wiredecl2" src="https://github.com/user-attachments/assets/49c9aa13-e362-40f1-bf78-745e965530fa" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/declaring_wires.v)

This demonstrates how to **declare internal wires** and connect them via **continuous assignments**.

---

#### 🔹 Problem 8: 7458 Chip (Four AND gates + Two OR gates)
**Statement:**  
*The 7458 chip contains four AND gates and two OR gates. Create a module with the same functionality. It has 10 inputs and 2 outputs.*  
<img width="723" height="428" alt="7458" src="https://github.com/user-attachments/assets/6565037f-a815-4742-bb91-22bc059b1603" />

You can implement this in two ways:  
1. Using `assign` statements directly.  
2. Declaring intermediate wires for the outputs of the AND gates, then OR’ing them together.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/7458chip.v)

---
# 📂 Basics

## 🔹 Problem 1: Vector0

Vectors are used to group related signals under one name.  
For example:  
`wire [7:0] w;`
This declares an 8-bit vector w, which is equivalent to declaring 8 separate wires.

Statement:
Build the following circuit:

<img width="690" height="227" alt="Vector0" src="https://github.com/user-attachments/assets/5642c59d-a1a3-4921-84a2-c3e0526b3dbb" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/vector0.v)

