# FSM-Based Debouncer and Edge Detector

This project involves the design and implementation of FSM-based modules for **debouncing a switch** and **detecting edges**. The modules are implemented in **Verilog** and synthesized for **FPGA programming**. The target board used is **Nexys A7 100T (Artix-7, CSG324 package)**.

### Debouncing Overview  
![Debouncing Image](images/whatsapp_img.jpg)

---

## 📝 Overview

Mechanical switches generate electrical noise when toggled, resulting in multiple unintended transitions (known as **bouncing**). This project aims to eliminate such noise using a **debouncer FSM**, and also detect **rising** and **falling edges** using an **edge detector FSM**.

---

## ✨ Features

- 🎛️ **FSM Design**: Created finite state machines for debouncing and edge detection.
- 💡 **Verilog Implementation**: All modules written in Verilog HDL.
- 🧠 **Two-Stage Synchronizer**: Avoids metastability for asynchronous inputs.
- 🧪 **Simulation & Verification**: Verified with testbenches in Xilinx Vivado.
- 🎯 **FPGA Programming**: Implemented and tested on Nexys A7-100T board.
- 🔢 **Display**: Output shown on 4-digit 7-segment display using multiplexing.
- ⏱️ **Custom Timers**: Handles refresh and debounce timing intelligently.

---

## ⚙️ Description

When a button is pressed, mechanical bounce may lead to multiple transitions being registered. To eliminate this, a **debounce FSM** is designed that only registers a button press if it remains stable for at least **20 ms**.

A **2-stage synchronizer** is used to convert asynchronous button input to synchronous domain to avoid metastable states.

### Functional Flow:
1. **Raw Input** → 2-stage synchronizer  
2. **Debouncer FSM** filters out noise  
3. **Edge Detector FSM** triggers on valid transitions  
4. Two counters are used:
   - One for **raw input count**
   - One for **debounced input count**
5. **7-segment display** shows both counts (e.g., left 2 digits = debounced, right 2 = raw)

---

## 🧪 Simulation and Verification

- Simulated noisy button behavior using a Verilog **testbench**.
- Verified FSM transitions and edge detection in **Xilinx Vivado**.
- Programmed bitstream onto **Nexys A7 FPGA**.
- Observed output directly on board using mechanical pushbutton.

### Vivado Simulation  
![Simulation Screenshot](images/simulation.png)

---

## 📷 Additional Images

### FSM State Diagram  
![FSM Diagram](images/fsm_diagram.png)

### Board Demo  
![FPGA Output Demo](images/fpga_demo.jpg)

---

## 🛠️ Tools Used

- **Language**: Verilog  
- **IDE**: Xilinx Vivado  
- **FPGA Board**: Nexys A7 100T (Artix-7, CSG324)  
- **Display Interface**: Onboard 4-digit 7-segment display  
- **Version Control**: Git & GitHub

---

## 📁 Project Structure

