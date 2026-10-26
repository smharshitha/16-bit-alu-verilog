# Opcode reference

| Opcode | Operation | Notes |
|---|---|---|
| 0x0 | ADD | carry-out reported |
| 0x1 | SUB | carry is 1 when unsigned a >= b (no borrow) |
| 0x2 | AND | bitwise |
| 0x3 | OR | bitwise |
| 0x4 | XOR | bitwise |
| 0x5 | NOT A | ignores b |
| 0x6 | Logical left shift | amount b[3:0] |
| 0x7 | Logical right shift | amount b[3:0] |
| 0x8 | Arithmetic right shift | signed a |
| 0x9 | Equality | result 1 or 0 |
| 0xA | Signed less-than | result 1 or 0 |
| 0xB | Unsigned less-than | result 1 or 0 |

Signed overflow is not currently implemented; add a separate overflow flag if required.