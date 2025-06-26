# Debouncing and Edge Detection using FSMs on Nexys A7 FPGA

This project demonstrates the implementation of a Finite State Machine (FSM)-based debouncing circuit and edge detector for mechanical push-buttons. The design is written in Verilog HDL and deployed on a Nexys A7 (Artix-7 100T CSG324) FPGA development board.

![Project Setup](https://github.com/user-attachments/assets/9e3370ce-43bb-4f10-935f-eb8133272406)

---

## 🧠 Objective

Mechanical switches are prone to bouncing, causing unreliable signals in digital circuits. This project addresses that problem using:

- A **debouncing FSM** that filters out noise from the button signal.
- An **edge detector** that accurately detects rising or falling edges after debouncing.

---

## ⚙️ Key Features

- **FSM-based Debouncer**: Filters out multiple unwanted transitions within a specified time window (20ms).
- **Edge Detection**: Accurately identifies rising or falling edges after stabilization.
- **Two-Stage Synchronizer**: Prevents metastability when transitioning between clock domains.
- **Verilog HDL**: All modules implemented in Verilog with modular design.
- **Seven-Segment Display Output**: Button press events reflected via updated digits on the display.
- **Vivado Simulation**: FSM behavior validated through testbenches and waveforms.
- **FPGA Deployment**: Real-time verification on Nexys A7 FPGA board.

---

## 🧩 System Design

The design consists of:

- **Debouncer FSM**: Waits for signal stability before confirming a valid press.
- **Edge Detector Module**: Compares current and previous states to detect edges.
- **Display Logic**: Handles multiplexing and timing to show counter values on 7-segment display.

Button presses increment a counter only if the press is confirmed by the debouncer. A second counter without debounce is also maintained for comparison.

---

## 📊 Simulation

### Vivado Simulation Results

<img width="959" alt="Simulation Screenshot" src="https://github.com/user-attachments/assets/f64008c8-233c-4e4a-b1ee-51383122aa1d">

### FSM Schematic

<img width="938" alt="FSM Schematic" src="https://github.com/user-attachments/assets/09d87013-ca50-4d25-9377-ed36264f9af6">

---

## 🛠 Tools and Technologies

- **Language**: Verilog HDL  
- **IDE**: Xilinx Vivado Design Suite  
- **Board**: Nexys A7 (Artix-7 100T, CSG324)  
- **Methodology**: RTL Design, FSM, Synchronization  
- **Verification**: Testbenches + On-board Testing

---

## ✅ Results

- **Debounced Counter**: Increments only on valid presses  
- **Naive Counter**: Registers multiple increments per press due to bouncing  
- **Display Output**: Clear difference observed on the FPGA’s 7-segment display


