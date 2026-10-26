# 16-bit ALU in Verilog

A combinational 16-bit ALU supporting add, subtract, bitwise logic, shifts, equality, and signed/unsigned comparisons.

## Contents
- `rtl/alu16.v`: synthesizable ALU.
- `tb/tb_alu16.v`: directed self-checking tests.
- `docs/opcodes.md`: opcode reference.

## Simulate
Compile `rtl/alu16.v` and `tb/tb_alu16.v` in your Verilog simulator. Extend the tests with randomized operands and boundary values.

## Verification checklist
Test 0, 1, 0x7FFF, 0x8000, and 0xFFFF; shift amounts 0 and 15; signed/unsigned comparisons; carry and zero flags. Overflow is not implemented in the current version.

## Scope
A standalone educational RTL block, not a complete CPU or validated production IP.