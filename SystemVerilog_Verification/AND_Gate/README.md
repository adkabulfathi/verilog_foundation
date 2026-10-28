# SystemVerilog AND Gate Verification

## Project Overview
This project implements a 2-input AND gate and a class-based SystemVerilog verification environment to check its functionality.

## Verification Components
- Transaction class for test data
- Generator for randomized input stimulus
- Driver to apply inputs to the DUT
- Virtual interface for testbench communication
- Input and output monitors
- Mailboxes for transaction communication
- Scoreboard for functional checking

## Simulation
Simulator: QuestaSim 10.7c

In the latest simulation, six observed transactions passed scoreboard checking with zero reported failures. The testbench does not yet confirm that every generated transaction is checked exactly once.

## Simulation Waveform

![AND Gate Simulation Waveform](and_gate_waveform.png)
