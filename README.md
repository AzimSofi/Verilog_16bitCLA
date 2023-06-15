# 16CLA Verilog Simulation on EDA Playground
This repository contains the Verilog code and testbench for simulating a 16-bit Carry Look-Ahead Adder (16CLA) using EDA Playground. The 16CLA is implemented by cascading four 4-bit Carry Look-Ahead Adders (4CLA) together.

## Description
The 16CLA is a combinational logic circuit that performs binary addition of two 16-bit numbers with a carry-in. It utilizes the concept of carry lookahead to minimize the propagation delay and improve the overall performance of the adder.

## Usage
To simulate the 16CLA Verilog code using EDA Playground, follow these steps:
1. Visit EDA Playground in your web browser.
2. Create a new project or open an existing one.
3. Create a new file for the 16CLA Verilog code and paste the code into the editor.
4. Save the Verilog file.
5. Create another file for the testbench and paste the provided testbench code into the editor.
6. Save the testbench file.
7. Set the simulation timescale by adding the following line at the beginning of the testbench code:
`timescale 1ns / 1ps`
8. Run the simulation by clicking the "Run" button.
9. The waveform window will appear, showing the simulated waveforms.
10. Analyze the waveforms to verify the correctness of the 16CLA circuit.
11. Modify the testbench or the Verilog code as needed and re-run the simulation to experiment with different inputs and scenarios.
