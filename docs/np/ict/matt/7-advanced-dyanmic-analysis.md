# Advanced dyanmic analysis

## OllyDbg
A debugger, mainly used to step through code to debug or patch codes. 

### Patching in OllyDbg
Patching can be done by inserting NOP operations in the code. Unfortunately, this is a very risky method as it may not aways lead to the right program flow, and also causes a loss of integrity of the evidence as the evidence code was changed.


## IDAPro
A disassembler

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
| Step over      | Step into      |


## Breakpoints

### Software Breakpoints

### Hardware Breakpoints

### Conditional Breakpoints

## Rebasing
