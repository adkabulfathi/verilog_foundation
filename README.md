# Verilog HDL Collection

A comprehensive collection of **Verilog HDL** implementations covering the four major modeling styles:

- Behavioral Modeling
- Dataflow Modeling
- Gate-Level Modeling
- Structural Modeling

This repository is intended for students, beginners, and anyone learning digital design using Verilog HDL.

---

## Repository Structure

```
Verilog
│
├── Behavioral Modelling
│   ├── AND Gate
│   ├── OR Gate
│   ├── NOT Gate
│   ├── NAND Gate
│   ├── NOR Gate
│   ├── XOR Gate
│   ├── XNOR Gate
│   ├── Half Adder
│   ├── Full Adder
│   ├── Full Subtractor
│   ├── Multiplexer (MUX)
│   ├── Demultiplexer (DEMUX)
│   ├── Encoder
│   ├── Decoder
│   └── Comparator
│
├── Dataflow Modelling
│   ├── Logic Gates
│   └── Combinational Circuits
│       ├── Half Adder
│       ├── Half Subtractor
│       ├── Full Adder
│       ├── Full Subtractor
│       ├── Multiplexer (2×1 & 4×1)
│       ├── Demultiplexer
│       ├── Encoder
│       ├── Decoder
│       └── Comparator
│
├── Gate-Level Modelling
│   ├── Half Adder
│   ├── Half Subtractor
│   ├── Full Adder
│   ├── Full Subtractor
│   ├── Multiplexer
│   ├── Demultiplexer
│   ├── Encoder
│   ├── Decoder
│   └── Comparator
│
└── Structural Modelling
    ├── Full Adder
    ├── Full Subtractor
    ├── Ripple Carry Adder
    └── 4×1 Multiplexer
```

---

## Topics Covered

### Logic Gates

- AND Gate
- OR Gate
- NOT Gate
- NAND Gate
- NOR Gate
- XOR Gate
- XNOR Gate

### Arithmetic Circuits

- Half Adder
- Full Adder
- Half Subtractor
- Full Subtractor
- Ripple Carry Adder

### Combinational Circuits

- Multiplexer (MUX)
- 4×1 Multiplexer
- Demultiplexer (DEMUX)
- Encoder
- Decoder
- Comparator

---

## Verilog Modeling Styles

### Behavioral Modeling

Behavioral modeling describes the behavior of a circuit using procedural statements such as:

- `always`
- `if-else`
- `case`

This style focuses on **what the circuit does** rather than how it is built.

---

### Dataflow Modeling

Dataflow modeling uses continuous assignments (`assign`) and Boolean expressions to describe how data flows through a circuit.

Example:

```verilog
assign y = a & b;
```

---

### Gate-Level Modeling

Gate-level modeling connects built-in logic gates such as:

- and
- or
- nand
- nor
- xor
- xnor
- not

to describe digital circuits.

---

### Structural Modeling

Structural modeling builds larger circuits by interconnecting smaller modules.

It closely resembles the way hardware is physically constructed.

---

## Tools

The designs can be simulated using:

- ModelSim
- Xilinx Vivado
- Intel Quartus Prime
- Icarus Verilog
- GTKWave
- EDA Playground

---

## Learning Objectives

This repository helps learners understand:

- Verilog HDL syntax
- Different modeling styles
- Digital logic design
- Combinational circuit implementation
- Module instantiation
- Hierarchical design

---

## Future Additions

Planned updates include:

- Sequential circuits
- Flip-Flops
- Latches
- Counters
- Shift Registers
- Finite State Machines (FSM)
- Testbenches
- SystemVerilog examples

---

## Author

**Abulfathi Ahmad Muhammad**

Civil Engineer transitioning into Digital Design and VLSI Engineering.

- RTL Design
- Verilog HDL
- Digital Electronics
- Physical Design

---

## License

This repository is released under the MIT License.

Feel free to use the code for learning, teaching, and personal projects.

---

## Contributions

Contributions, suggestions, and improvements are welcome.

If you find this repository helpful, consider giving it a ⭐ to support the project.
