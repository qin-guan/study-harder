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

Memory can be split into different parts, namely Stack, Heap, Code and Data. These may seem contiguous in the diagram below, but they are actually not in order and scattered in memory.

![Main Memory structure](https://user-images.githubusercontent.com/103948042/206882549-e29eff97-85e7-4c37-b572-8d3e0aebf8f6.png)

!!! tip

    Memory addresses always go from **high to low.**

### Stack

The stack is a region of memory that is used to store temporary data. Used to control program flow as function, APIs and subroutines are called here. 

!!! tip

    Functions vs Subroutines - the difference is that functions return values, while subroutines do not return values.

### Heap

The heap is a region of memory that is used to store data that is allocated dynamically (Allocates new values and free unwanted values during execution or run time). 

### Code

The code is a region of memory that is used to store instructions to be executed.

### Data

The data is a region of memory that is used to store static data.

## Operands

### Immediate operands

Fixed values

### Register operands

Registers (e.g. `ecx`)

!!! tip

    EDX can be used for division
    
    EAX can be used for multiplication
    
    EAX can also hold return value for function call
    
    ESP, EBP used for function call/return
    
    ESI, EDI, ECX are used in repeat instructions
    
    Index registers (ESI, EDI) may store memory addresses

All registers above have backward compatibility. This is because the x86 architecture extends the previously 16 bits and 8 bit processing.
![Register Breakdown](https://user-images.githubusercontent.com/103948042/206882933-2bfe4875-0f80-44dc-9fe7-5b2dc745822a.png)

💫 `x64` architecture extends the `x86` we are currently learning. It has 64-bit registers, replacing the 'e' with 'r'. Hence, registers are called rax, rbx, rcx ...etc

### Opcode

Opcode is the machine language equivalent of an assembly instruction

### Memory adress

e.g. `[ecx]`

### Status Flags

`EFLAGS`, which are 32 bits. Each bit is a flag with value 0 (clear) or 1 (set). Flags used to control CPU operations or indicate results. Important ones have been listed here:

| Flags            | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `Zero Flag (ZF)`        | Set when operation result = 0                                                               |
| `Cary Flag (CF)`        | Set when operation result cannot be stored (results out of the range of a a byte typically) |
| `Sign Flag (SF)`        | Set when operation result is negative or when MSB set after arithmetic oepration            |
| `Trap Flag (TF)`        | Set to debug, causing CPU to single step.                                                   |
| `Overflow Flag (OF)`    | Set when operation result generates invalid signed results                                  |

### Instruction Pointer, `EIP`

`EIP` is 32 bits. It stores the address of **next** instruction to execute. When you control `EIP`, you can control what is executed by the CPU. If attackers have maliicous code/malware in memory, then they simply can modify `EIP` to point to that code to exploit a system.

## Data Allocation

![Directives](https://user-images.githubusercontent.com/103948042/206883536-5e6e26cd-30bb-4c39-bdf9-2171522ca2a0.png)
![Reference](https://user-images.githubusercontent.com/103948042/206883813-92fa7d9f-3d77-43e7-8388-1520d302bfa0.png)

!!! tip

    Anything that follows a ';' is a comment and is ignored by the assembler

Multiple definitions can also be abbreviated.
![Abbreviated](https://user-images.githubusercontent.com/103948042/206883585-ab1ff786-662a-45fc-8c81-5bac1e492e61.png)

References to certain values stored goes like this:
![Referencing](https://user-images.githubusercontent.com/103948042/206883704-4342d4c8-58ea-4f39-9cf6-e5dbdb083a92.png)
When Z above is called, he value returned would then be 1, while Z + 4 will be 2.

### `DUP`
`DUP` initializes an array of specifiec integers/bytes.

(e.g. `10 DUP (0)` initializes an array of 10 elements, all initalized to 0. The result of this would be like this: 0,0,0,0,0,0,0,0,0,0)

### `EQU`
`EQU` assigns the result of expression to name. The expression is evalutaed at assembly time.
(e.g. The expression 50, is assigned to the name NUM_OF_ROWS below)
 ![Example of EQU](https://user-images.githubusercontent.com/103948042/206883772-8b942add-8b62-44db-b649-456f077257c0.png)

### Correspondenc to C data types
![C data types](https://user-images.githubusercontent.com/103948042/206883790-ba1a8bac-5b6c-4780-b636-eaf83b816952.png)

## Program Layout
![Program Layout](https://user-images.githubusercontent.com/103948042/206883833-160aac3a-1751-4787-bfa0-28963a45925c.png)
