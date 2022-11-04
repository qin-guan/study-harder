# Assembly

This section will be using `x86` assembly.

Assembly language comprises instructions that are sent to a CPU. There are multiple "variations" of assembly, catering to different CPU architectures.

`Assembler`

:  A program that translates assembly code into machine code.

`Disassembler`

: A program that translates machine code into assembly code.

  For example, IDA Pro.

`Register`

: CPU's basic unit of storage. Registers are fast, but limited in size.

`Control unit`

: The part of the CPU that executes instructions.

  Control unit gets instructions to execute from RAM through the Instruction Pointer.

`Instruction Pointer`

: A register that points to the next instruction to be executed.

## Memory

Memory can be split into different parts.

!!! tip

    Memory addresses always go from **high to low.**

### Stack

The stack is a region of memory that is used to store temporary data.

### Heap

The heap is a region of memory that is used to store data that is allocated dynamically.

### Code

The code is a region of memory that is used to store instructions.

### Data

The data is a region of memory that is used to store static data.