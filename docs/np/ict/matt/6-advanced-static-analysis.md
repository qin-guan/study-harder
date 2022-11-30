# Advanced static analysis

When a function is called, a new ^^stack **frame**^^ is created.

A stack frame consists of the `ESP` and the `EBP`:

`ESP`

: Stack pointer

`EBP`

: Base pointer

!!! tip "How many items are pushed to the stack?"

    Count pushes before the function call.

    This is also the number of arguments passed to the function

## Recognizing main method

Main method is the entry point of a program.

```c
int main(int argc /* (1)! */, char *argv[] /* (2)! */) {
    return 0;
}
```

1. Number of arguments passed to the program.
2. Array of arguments passed to the program.

## Example

```c
int add(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

int main(int argc, char *argv[]) {
    int x = add(5, 4);
    int y = sub(10, 5);
    return 0;
}
```

## Function prologue and epilogue

Prologue is the code that is executed before the function is called.

`ESP` and `EBP` have the same address.

```asm
push  ebp # (1)!
mov   ebp, esp # (2)!
```

1. Push `EBP` to the stack. Save old EBP to the stack.
2. Replace `EBP` with `ESP`

Epilogue is the code that is executed after the function is called.

```asm
pop ebp # (1)!
```

1. Move top of stack to `EBP`
