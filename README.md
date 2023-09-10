# Merge Sort for 16-Bit Numbers with Verilog Testbench

A Verilog implementation of the merge sort algorithm for sorting 16-bit numbers with a comprehensive testbench for verification.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Testbench](#testbench)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Introduction

The Merge Sort for 16-Bit Numbers with Verilog Testbench project provides a hardware implementation of the merge sort algorithm for sorting lists of 16-bit numbers using Verilog. The accompanying testbench is designed to thoroughly validate the correctness of the Verilog implementation.

## Features

- **Merge Sort Algorithm:** Hardware implementation of the merge sort algorithm optimized for 16-bit numbers.
- **Comprehensive Testbench:** A Verilog testbench to validate the correctness of the merge sort hardware.
- **Parameterization:** Easily modify parameters such as the input list size and sorting direction.
- **Simulation and Verification:** Simulate and verify the merge sort hardware behavior.

## Getting Started

Follow these instructions to set up and use the Merge Sort for 16-Bit Numbers with Verilog Testbench.

### Prerequisites

Before getting started, make sure you have the following prerequisites:

- [Xilinx Vivado](https://www.xilinx.com/products/design-tools/vivado.html) (or any other Verilog synthesis tool)
- Verilog simulation tool (e.g., [ModelSim](https://www.mentor.com/company/higher_ed/modelsim-student-edition))

### Installation

1. Clone this repository to your local machine:

   ```bash
   $ git clone https://github.com/yourusername/merge-sort-verilog.git
   $ cd merge-sort-verilog
  Open the project in your Verilog synthesis tool (e.g., Vivado) and proceed with synthesis and implementation.
## Usage
1. To use the Merge Sort hardware implementation, follow these steps:

2. Instantiate the merge sort module in your Verilog design.

3. Connect the input signals (16-bit numbers to be sorted) and control signals as per your design requirements.

4. Configure the parameters (e.g., input list size, sorting direction) in the module instantiation.

5. Synthesize and implement the design.

6. Simulate the design using a Verilog simulation tool to verify its correctness.

## Project Structure
The project directory is organized as follows:

    
    merge-sort-verilog/
      ├── rtl/
      │   ├── merge_sort.v  # Merge sort Verilog module
      ├── testbench/
      │   ├── test_merge_sort.v  # Testbench for the merge sort module
      ├── README.md
## Testbench
The testbench directory contains a Verilog testbench (test_merge_sort.v) that thoroughly tests the merge sort hardware implementation. You can run the testbench using your preferred Verilog simulation tool (e.g., ModelSim).

## Contributing
Contributions to this project are welcome! Please follow our contributing guidelines to get started.

## License
LICENSE file for details.

## Acknowledgments
We would like to acknowledge the following resources and tools that contributed to the success of this project:

Xilinx Vivado
ModelSim
