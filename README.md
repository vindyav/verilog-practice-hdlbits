# HDLBits Verilog Practice

This repository contains my explantions and codes to [HDLBits](https://hdlbits.01xz.net/wiki/Main_Page) problems.  
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

#### 🔹 Problem 1: Module Declaration – [Constant Output](https://hdlbits.01xz.net/wiki/Step_one) 
**Statement:**  
*Write a module declaration for a circuit with no inputs and one output. That output should always drive logic high (1).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/Getting%20Started/module_constant.v)

---
#### 🔹 Problem 2: Module Declaration – [Constant Zero Output](https://hdlbits.01xz.net/wiki/Zero)
**Statement:**  
*Build a circuit with no inputs and one output that always drives logic low (0).*

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/Getting%20Started/module_constant0.v)

---

## 🚀 Verilog Language

### 📂 Basics

#### 🔹 Problem 1: [Simple Wire](https://hdlbits.01xz.net/wiki/Wire)
**Statement:**  
*Create a module with one input and one output that behaves exactly like a wire. The output should always follow the input.*  

Unlike physical wires, wires (and other signals) in Verilog are **directional**.  
This means information flows in only one direction — from a source (also called a driver) to the sinks.  

In a Verilog "continuous assignment" (`assign out = in;`), the value of the signal on the left side is driven onto the wire on the right side.  
The assignment is *continuous* because it remains valid at all times, even if the input changes — not just a one-time event.  

<img width="811" height="328" alt="wire-diagram" src="https://github.com/user-attachments/assets/9113db23-edb4-48ec-9134-596099a76748" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/simple_wire.v)

---

#### 🔹 Problem 2: [Four Wires](https://hdlbits.01xz.net/wiki/Wire4)
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

#### 🔹 Problem 3: [Inverter](https://hdlbits.01xz.net/wiki/Notgate)
**Statement:**  
*Create a module that implements a NOT gate.*  
<img width="575" height="281" alt="Notgate" src="https://github.com/user-attachments/assets/b3911201-a3eb-4536-8de5-19dafc427b5c" />
The NOT gate (or inverter) outputs the logical complement of its input:  
- If the input is `1`, the output is `0`.  
- If the input is `0`, the output is `1`.  

In Verilog, this can be written using the **bitwise NOT operator (`~`)** inside a continuous assignment.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/inverter.v)

---

#### 🔹 Problem 4: [AND Gate](https://hdlbits.01xz.net/wiki/Andgate)
**Statement:**  
*Create a module with two inputs and one output that implements an AND gate.*  
<img width="586" height="281" alt="Andgate" src="https://github.com/user-attachments/assets/3f2bff74-1383-40a1-838f-d07abad2c8b3" />

The AND gate outputs `1` only when **both inputs are 1**.  
Otherwise, the output is `0`.  

In Verilog, this can be written using the **bitwise AND operator (`&`)** inside a continuous assignment.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/and.v)

---

#### 🔹 Problem 5: [NOR Gate](https://hdlbits.01xz.net/wiki/Norgate)
**Statement:**  
*Create a module with two inputs and one output that implements a NOR gate.*  
<img width="586" height="281" alt="Norgate" src="https://github.com/user-attachments/assets/ea3189ad-e731-4085-aa21-531c7683309d" />

The NOR gate is the **inversion of the OR gate**:  
- If **both inputs are 0**, the output is `1`.  
- Otherwise, the output is `0`.  

In Verilog, this can be written using the **bitwise OR operator (`|`)** followed by a bitwise NOT (`~`).  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/nor.v)

---

#### 🔹 Problem 6: [XNOR Gate](https://hdlbits.01xz.net/wiki/Xnorgate)
**Statement:**  
*Create a module with two inputs and one output that implements an XNOR gate.*  
<img width="586" height="281" alt="Xnorgate" src="https://github.com/user-attachments/assets/c822484a-5125-473d-9105-930c0a659528" />

The XNOR gate is the **complement of XOR**:  
- Output is `1` when both inputs are the same (00 or 11).  
- Output is `0` when inputs differ (01 or 10).  

In Verilog, this can be written using the **bitwise XOR operator (`^`)** followed by a NOT (`~`).  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/xnor.v)

---

#### 🔹 Problem 7: [Declaring Wires](https://hdlbits.01xz.net/wiki/Wire_decl)
**Statement:**  
*Implement the following circuit*  
<img width="620" height="264" alt="Wiredecl2" src="https://github.com/user-attachments/assets/49c9aa13-e362-40f1-bf78-745e965530fa" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/declaring_wires.v)

This demonstrates how to **declare internal wires** and connect them via **continuous assignments**.

---

#### 🔹 Problem 8: [7458 Chip](https://hdlbits.01xz.net/wiki/7458)
**Statement:**  
*The 7458 chip contains four AND gates and two OR gates. Create a module with the same functionality. It has 10 inputs and 2 outputs.*  
<img width="723" height="428" alt="7458" src="https://github.com/user-attachments/assets/6565037f-a815-4742-bb91-22bc059b1603" />

You can implement this in two ways:  
1. Using `assign` statements directly.  
2. Declaring intermediate wires for the outputs of the AND gates, then OR’ing them together.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/basics/7458chip.v)

---
# 📂 Basics

#### 🔹 Problem 1: [Vector0](https://hdlbits.01xz.net/wiki/Vector0)

Vectors are used to group related signals under one name.  
For example:  
`wire [7:0] w;`
This declares an 8-bit vector w, which is equivalent to declaring 8 separate wires.

**Statement:**
Build the following circuit:

<img width="690" height="227" alt="Vector0" src="https://github.com/user-attachments/assets/5642c59d-a1a3-4921-84a2-c3e0526b3dbb" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/vector0.v)

---

#### 🔹 Problem 2: [Vector1](https://hdlbits.01xz.net/wiki/Vector1)

Vectors must be declared: `type [upper:lower] vector_name;`  
`type` specifies the datatype of the vector, usually wire or reg.  
This declares an 8-bit vector w, which is equivalent to declaring 8 separate wires.  

If you are declaring a input or output port, the type can additionally include the port type (e.g., input or output) as well. Some examples:  

`wire [7:0] w;`   // 8-bit wire  
`reg  [4:1] x;`    // 4-bit reg  
`output reg [0:0] y;`   // 1-bit reg that is also an output port (this is still a vector)  
`input wire [3:-2] z;`   // 6-bit wire input (negative ranges are allowed)  
`output [3:0] a;`   // 4-bit output wire. Type is 'wire' unless specified otherwise.  
`wire [0:7] b;`   // 8-bit wire where b[0] is the most-significant bit.  

**Statement:**  
Build a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/vector1.v)

---

#### 🔹 Problem 3: [Vector2](https://hdlbits.01xz.net/wiki/Vector2)  

**Statement:**  

A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.). Build a circuit that will reverse the byte ordering of the 4-byte word.  

Eg: AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/vector2.v)

---

#### 🔹 Problem 4: [Vectorgates](https://hdlbits.01xz.net/wiki/Vectorgates)  

**Statement:**  

Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two vectors, and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e., bits [5:3]), and the inverse of a in the lower half.  
<img width="829" height="227" alt="Vectorgates" src="https://github.com/user-attachments/assets/75dbbb86-6994-4eae-b3a9-e1e7fb81c246" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/Vectorgates.v)

---

#### 🔹 Problem 5: [Four-input gates](https://hdlbits.01xz.net/wiki/Gates4)  

**Statement:**  

Build a combinational circuit with four inputs, in[3:0].  

There are 3 outputs:  

out_and: output of a 4-input AND gate.  
out_or: output of a 4-input OR gate.  
out_xor: output of a 4-input XOR gate.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/Vectorgates.v)

---

#### 🔹 Problem 6: [Vector3](https://hdlbits.01xz.net/wiki/Vector3)  
Part selection was used to select portions of a vector. The concatenation operator {a,b,c} is used to create larger vectors by concatenating smaller portions of a vector together.

{3'b110, 3'b100} => 6'b110100  
{1'b1, 1'b1, 3'b011} => 5'b11011  
{4'hb, 4'd11} => 8'b10111011     // 4'hb and 4'd11 are both 4'b1011 in binary  

Concatenation needs to know the width of every component. Thus, {1, 2, 3} is illegal and results in the error message: unsized constants are not allowed in concatenations.  
**Statement:**  

Given several input vectors, concatenate them together then split them up into several output vectors. There are six 5-bit input vectors: a, b, c, d, e, and f, for a total of 30 bits of input. There are four 8-bit output vectors: w, x, y, and z, for 32 bits of output. The output should be a concatenation of the input vectors followed by two 1 bits: 

<img width="360" height="125" alt="Vector3" src="https://github.com/user-attachments/assets/b736d967-da10-4fce-8f09-fc4f83de8dcd" />

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/vector3.v)

---

#### 🔹 Problem 7: [Vectorreversal](https://hdlbits.01xz.net/wiki/Vectorr)  

**Statement:**  

Given an 8-bit input vector [7:0], reverse its bit ordering.  

👉 [View Solution](https://github.com/vindyav/verilog-practice-hdlbits/blob/main/vectors/Vectorgates.v)

---
