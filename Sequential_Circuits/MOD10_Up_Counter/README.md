# Synchronous MOD-10 Up Counter

## Project Overview
This project implements a synchronous MOD-10 up counter using Verilog HDL. The counter counts from 0 to 9 and returns to 0, repeating the sequence on successive clock cycles.

## Design Features
- Synchronous sequential logic
- 4-bit counter output
- MOD-10 counting sequence (0–9)
- Verilog RTL implementation
- Testbench-based functional verification

## Project Files
- `sync_up_counter.v` — RTL design
- `sync_up_counter_tb.v` — simulation testbench
- `mod10_counter_waveform.png` — QuestaSim waveform screenshot

## Simulation
The design was simulated using QuestaSim to observe the counter output and verify its counting sequence.

## Simulation Waveform

![MOD-10 Up Counter Waveform](mod10_counter_waveform.png)
