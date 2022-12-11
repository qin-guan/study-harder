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

## Assembly Instructions

### Move , `mov` 
Copies a value specified or the value stored at a specified address into the destination.
![Move instructions](https://user-images.githubusercontent.com/103948042/206885495-6ad518e0-ef25-4d2a-9186-03c11c37643d.png)

### Load Effective Address , `lea`
Copies value of address into the destination
![LEA instructions](https://user-images.githubusercontent.com/103948042/206885562-47f53b88-73ee-479e-aea2-136897fef66f.png)

### Arithmetic Instructions
![Assembly Math P1](https://user-images.githubusercontent.com/103948042/206885628-6aaf5464-b0ba-4bc4-94fa-0f0712588874.png)
![Assembly Math P2](https://user-images.githubusercontent.com/103948042/206885645-4bd5192f-4828-47e1-b917-8d72bccdcac1.png)

### Logical/Shifting Instructions
![Logical and Shifting Instructions](https://user-images.githubusercontent.com/103948042/206885656-d9092af9-04bc-4ba4-909e-d9cc614a48a7.png)
Each Logical and Shifting Instructions have their purposes. Generally, they are :

| Instruction      | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `xor`         | Used to clears registers, and specify which bits to change                      |
| `or`          | Used to set a certain bit                                                       |
| `sh` (shift)  | Used for fast multiplication                                                    |
| `ro` (rotate) | Used for fast division                                                          |

### NOP and INT
![NOP and INT](https://user-images.githubusercontent.com/103948042/206885785-9c9b207c-1021-4203-81aa-9c6600ab149d.png)

## Conditionals
Program execution depends on comparison result (Changes in status flags - specific bits may be set or cleared). The following are instructions that affect status flags. 

### `AND`
![AND](https://user-images.githubusercontent.com/103948042/206886276-6be54343-ff0f-4418-b752-a21bf057a5c6.png)

### `OR`
![OR](https://user-images.githubusercontent.com/103948042/206886288-f97bb9ca-ebc0-4ae6-a062-4ecedc096df1.png)

### `XOR`
![XOR](https://user-images.githubusercontent.com/103948042/206886294-338eee80-cc6e-4f36-b37a-5c0d555065f8.png)

### `NOT`
![NOT](https://user-images.githubusercontent.com/103948042/206886304-f1a44d67-d703-45ba-8808-abb4b8a37a70.png)

### `test`
Performs a nondestructive AND operation between each pair of matching bits in two operands.**Only affects the ZF.**

### `cmp`
Compares destination and source.
!!! tip

    You can imagine it as a CMP result: Destination - Source
 
#### `cmp` with unsigned integers
![image](https://user-images.githubusercontent.com/103948042/206886417-d9ab5857-d7b5-43e1-af6f-2190c80827fd.png)
![image](https://user-images.githubusercontent.com/103948042/206886422-b58ba680-f8ad-4d52-9038-2886c342279e.png)

#### `cmp` with signed integers
![image](https://user-images.githubusercontent.com/103948042/206886426-def73bb0-b6db-49ce-b06f-ffa91b64ab62.png)

### Conditional Jumps
Branches to a label when specific register/flag conditions are met. Based on specific flags, equality, unsigned/signed comparisions.
![image](https://user-images.githubusercontent.com/103948042/206886451-aadeba6a-33d4-451c-9533-3c1535e96ddf.png)
!!! tip

    You Parity Flag is used for error correciton. Counts for the number of set bits(bits that are 1) and if the count is even or odd. 
 
![image](https://user-images.githubusercontent.com/103948042/206886456-679b2076-6264-4803-8919-6d6c29483b33.png)
![image](https://user-images.githubusercontent.com/103948042/206886459-7998ae85-17af-46b3-a946-7d0aa3fd611d.png)
![image](https://user-images.githubusercontent.com/103948042/206886465-54d68bcb-498b-4bc7-bc40-0c5de376feff.png)

### Repeat Instructions
Repeat instructions are used for processing multi byte data like byte arrays. Uses `ESI` (source index), `EDI`(destination index) and `ECX` (counting variable) registers. **Registers must be properly initialized for repeat instructions to work.**

**`ECX` decreases once one repeat has occured.**


| Instruction      | Description                                                                 |
| ---------------- | --------------------------------------------------------------------------- |
| `rep`         | Based on the value stored in `ECX`, repeat for that number of times.            |
| `repe`        | Repeat until `ECX` = 0                                                          |
| `repz`        | Repeat until `ZF` = 0                                                           |
| `repne`       | Repeat while `ECX` != 0                                                         |
| `repnz`       | Repeat while `ZF` != 1                                                          |

#### Examples
![image](https://user-images.githubusercontent.com/103948042/206886762-5c2fe296-c4f7-4fb7-8811-2c50c22d374f.png)
![image](https://user-images.githubusercontent.com/103948042/206886768-f5ed0efd-bed0-45c8-92a7-b766c91ec9b3.png)

## Stack
Stores memory for functions, local variables and flow control. The stack **grows downwards** and memory locations lower than the `esp` should **always be available, unless the stack has overflowed.**

### `Push`
Decrements the stack pointer by 4 bytes.
Copies a value into the location pointed to by the stack pointer, `esp`.
!!! warning

    Push can only be done on 16/32 bits register/memory addresses or 32 bit immediate operands(fixed values). 
 
### `Pop`
Increments the stack pointer by either 2 or 4 bytes. (depends on attribute of the operand receiving the data - is it a DD or DQ?)
Copies value at location pointed to by the stack pointer into a register or variable.
!!! warning

    Pop can only be done on 16/32 bits register/memory addresses. 

## Basic constructs
### Recognizing the main method
![image](https://user-images.githubusercontent.com/103948042/206888283-e9dd0554-b7bc-454d-b5ae-deb7b878692e.png)
#### Example
![image](https://user-images.githubusercontent.com/103948042/206888287-26d65020-9037-4a81-8ef0-88b95a6d8567.png)

### If Else
![image](https://user-images.githubusercontent.com/103948042/206888315-0b082abe-ad7e-4262-b63b-aa1a5bf21d0b.png)

### Loops
![image](https://user-images.githubusercontent.com/103948042/206888320-810ff1cd-cd2d-4480-a70d-781df4dc4aac.png)

### For Loop
![image](https://user-images.githubusercontent.com/103948042/206888381-e9a4a553-ac83-4037-92fb-77fbc5db13d5.png)

### While Loop
![image](https://user-images.githubusercontent.com/103948042/206888396-eaa724da-1fed-4812-95a1-005626c86955.png)

### Switch 
![image](https://user-images.githubusercontent.com/103948042/206888414-7c6d1e17-ee76-4d79-bc5b-475fcb21ffa3.png)

### Struct
