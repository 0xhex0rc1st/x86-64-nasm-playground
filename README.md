# x86-64 NASM Playground

🚀 My personal journey into **x86-64 assembly** using NASM on Linux.  
This repository documents small programs, experiments with syscalls, and low-level learning.

---

## About

This repo is a **learning diary and playground** for x86-64 assembly programming.  
I explore:
- Linux syscalls (read, write, exit, etc.)
- Memory and stack usage
- String and number manipulation
- Interfacing assembly with C (future goal)

All programs are written for **64-bit Linux** using **NASM**.

---

## Getting Started

### Requirements
- Linux (x86-64)
- NASM (`nasm`) for assembly
- `ld` linker (from binutils)

### Build & Run Example

```bash
nasm -f elf64 test.asm -o test.o
ld test.o -o test
./test
````

---

## Programs

| File         | Description                                |
| ------------ | ------------------------------------------ |
| `Hello_World.asm`  | Prints "Hello World!"                     |
| `Echo_Inputs.asm`   | Reads input and echoes it back to stdout   |
| `String Length Calculator.asm`       | Reads input, computes its length, and prints it |

---

## Goals

* Learn x86-64 **syscall interface**
* Write basic I/O and string utilities
* Understand stack, registers, and calling conventions
* Integrate assembly functions with C programs
* Explore ELF internals and low-level optimizations

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Notes

This repository is both a **learning diary** and a **collection of code snippets**.
Feel free to fork, experiment, and learn along!

```
