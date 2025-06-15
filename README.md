# Debouncing Circuits and Edge Detection using FSMs

This project involves the design and implementation of FSM-based modules for debouncing a switch and detecting edges. The modules are implemented in Verilog and synthesized for FPGA programming. The FPGA used is Nexys Artix-7 100T with CSG324 chip.

![WhatsApp Image 2024-07-21 at 18 06 18_8e2cd15a](https://github.com/user-attachments/assets/00b7968c-1de6-4379-9cda-a7d86f0c6599)

## Overview

Switches are often prone to noise, which can cause multiple transitions (bounces) when pressed or released. This project aims to address this issue by creating a debouncing circuit. Additionally, an edge detector is implemented to detect rising and falling edges of the switch signal.

## Features

- **FSM Design**: Created finite state machine (FSM) modules for debouncing and edge detection.
- **Verilog Coding**: Implemented the FSMs using Verilog hardware description language.
- **Design Synthesis**: Synthesized the design for FPGA implementation.
- **Bitstream Generation**: Generated bitstreams for programming the FPGA.
- **FPGA Programming**: Programmed the FPGA to implement the practical button using the developed modules.
- **Checking and Verification**: Verified the functionality of the modules on the FPGA.

## Description

The project detects edge when the button is pressed. The debouncing unit ignores false edges and does not count them. To achieve this a FSM is designed to ignore the false edges and only detect an edge if it stays longer than some time threshold (20 ms is taken here). A 2 stage synchronizer is used to avoid meta-stable state. The working is verified by incrementing numbers on pressing button and the two numbers generated with and without debouncing are then compared. The output is displayed on the seven segment display and the refresh rate (using custom timers and counters) and combinational logic and multiplexing is maintained wisely to display different numbers on the FPGA board's seven segment display. 

## Simulation and Verification

The noisy push button was simulated first on a testbench and results were verified on Xilinx Vivado. Further, it was tested on a FPGA to confirm the debouncing action of the mechanical push buttons of the FPGA.

### Xilinx Vivado Simulation

<img width="959" alt="Screenshot 2024-06-13 024725" src="https://github.com/HardikJainGit/Debouncing-Verilog/assets/133627261/dcd7ff33-eb96-4257-942d-ea7cb6508bd4">

### Schematic

<img width="938" alt="image" src="https://github.com/HardikJainGit/Debouncing-Verilog/assets/133627261/a0f6087d-cdfa-45c6-828a-5e352a630c1e">
