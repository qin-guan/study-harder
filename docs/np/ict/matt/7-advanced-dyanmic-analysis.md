# Advanced dyanmic analysis

## OllyDbg
A debugger, mainly used to step through code to debug or patch codes. 

### Patching in OllyDbg
Patching can be done by inserting NOP operations in the code. Unfortunately, this is a very risky method as it may not aways lead to the right program flow, and also causes a loss of integrity of the evidence as the evidence code was changed.


## IDAPro
A disassembler


## Rebasing
When a PE runs, it may not run at the preferred base address. An OS can choose to rebase the PE to a different address for perfroamnce/security reasons. 

🤩OllyDbg and IDAPro can show the memory map to see how the PE occupies which address after rebasing

## Debugger vs Disassembler
| Debugger         | Disassembler                                                                |
| ✔️Provides dynamic view as program runs (eg showing register/memory values as they change over execution)| ✔️Shows how the program looks like prioir to execution |

## Source Level vs Assembly Level
| Source Level       | Assembly Level       |
| ✔️Debugs a program while coding | ✔️Operates on assembly codes instead of source codes |
| ✔️Sets breakpoint at certain code | ✔️Sets breakpoint at assembly instruction |

## Single Step Analysis
Runs one assembly instruction at a time
✔️Good for understanding the details fo a program code block
✔️Able to show all registers or memory changes
✖️Takes too long to analyze long complex programs

## Step over vs Step into
| Step over      | ✔️Allows you to quickly understand roughly the functions and features of a PE  |
| Step into      | ✔️Allows for detailed understanding of the function called                     |

!!! note

    For Step over, you will need to restart the debug session if you step over any functions that does not return any value. This is because functions that do not return any values are caused by defensive coding techniques or program errors.

!!! note

    For Step into, you must only analyse the relevant code, or it will be easy to get lost when a function calls aanother function, which then calls upon another function.

## Breakpoints
When a user normally runs a program, they are unable to view changes - eg. the value assigned to several variables of a program that is running. As such, breakpoints are used to pause execution of a program and allow users to examine a program's state at a certain point in the code. 
✔️Now with breakpoints, you can view memory or register changes!

### Software Breakpoints
A breakpoint that causes a program to pause execution when an assembly instruction is being executed. 

!!! note

    Due to the pause by this breakpoint, the assembly instructions will be changed where the breakpoint was set at.

### Hardware Execution Breakpoints
Every time a processor executes an instruction, there is hardware to detect if the instruction pointer is equal to the hardware breakpoint address.

!!! note

    Unlike software breakpoints, regardless of what instruction is stored at the address, the processor will break at that location.

### Conditional Breakpoints
Software breakpoints that break if a certain conditions are met. Usually, these conditions are related to values in the registers.If conditions are not met, breakpoint will not be triggered and execution continues as if there were on breakpoints set.

✔️Proves useful when dissectng a narrow segment of code
