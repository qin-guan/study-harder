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

## Operands

### Immediate operands

Fixed values

### Register operands

Registers (e.g. `ecx`)

### Opcode

Opcode is the machine language equivalent of an assembly instruction

### Memory adress

e.g. `[ecx]`

!!! tip

    EDX can be used for division
    
    EAX can be used for multiplication
    
    EAX can also hold return value for function call
    
    ESP, EBP used for function call/return
    
    ESI, EDI, ECX are used in repeat instructions
    
    Index registeres (ESI, EDI) may store memory addresses

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
