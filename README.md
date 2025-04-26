
# 💡 4-bit Ripple Carry Adder (RCA)
 

## 📘 Overview

This project focuses on designing and implementing a **4-bit Ripple Carry Adder (RCA)** using hierarchical VHDL design. The project demonstrates the process of building digital components starting from simple gates to more complex reusable modules like Full Adders and finally the RCA.

> The RCA is a fundamental part of the Arithmetic Logic Unit (ALU) in modern processors.

---

## 🎯 Learning Objectives

- ✅ Design and implement a **Half Adder (HA)** and a **Full Adder (FA)** using VHDL.
- ✅ Build a **4-bit Ripple Carry Adder** by combining multiple FAs.
- ✅ Use **hierarchical design** techniques and **modular VHDL programming**.
- ✅ Test and simulate designs in **Xilinx Vivado** and implement them on a **BASYS 3 FPGA board**.

---

## 🏗️ Project Structure

1. **Half Adder**  
   - Created using basic logic gates (AND, XOR).  
   - Simulated and verified via testbench.

2. **Full Adder**  
   - Built using two Half Adders and OR gate for carry logic.  
   - Modular design with internal signal declarations.

3. **4-bit Ripple Carry Adder**  
   - Cascaded 4 Full Adders with carry chaining.  
   - Inputs: `A[3:0]`, `B[3:0]`, and `C_in`  
   - Outputs: `S[3:0]`, `C_out`

---

## 🧪 Simulation & Testing

- Simulations were done in **Vivado** using testbenches for each component.
- Example test inputs:
  - Binary addition of index number LSBs.
  - Predefined vectors: `0101 + 1011`, `0111 + 1111`, etc.
- Observations on overflow handled using the `C_out` LED (LD15).

---

## 💻 FPGA Implementation

- Platform: **BASYS 3 FPGA Board**
- Inputs via switches:
  - `SW0–SW3`: Input A
  - `SW12–SW15`: Input B
- Outputs via LEDs:
  - `LD0–LD3`: Sum bits
  - `LD15`: Carry out

---

## 📁 Files Included

- VHDL source files for:
  - Half Adder (`ha.vhd`)
  - Full Adder (`fa.vhd`)
  - 4-bit Ripple Carry Adder (`rca_4.vhd`)
- Testbenches
- Timing Diagrams (simulated waveforms)


---

## 📌 Notes

- Hierarchical VHDL design improves code **modularity** and **reusability**.
- The RCA design can be extended to support **subtraction** and more bits.
- Demonstrates practical use of **IP packaging** in Vivado for reusable modules.


