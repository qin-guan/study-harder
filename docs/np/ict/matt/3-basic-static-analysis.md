# Basic Static Analysis

!!! warning

    The content is still WIP, please come back at another time!

## Malware Fingerprint

First step to analyse a suspicious file is to scan the file using an Antivirus Virus (AV) scanner. Using the scanner, it should look out for these things:

1. File Signatures

   Identifiable pieces of suspicious code

2. Heuristics

   Behavioral / Pattern-matching analysis

However, AVs are **not** perfect. A malicious file may be detected by one AV, but unidentifiable by other AVs. A suggested tool that we use is *VirusTotal*

### VirusTotal

- Scans files using different AV engines
- Generates a report and provide total number of AV which deems the scanned file as suspicious.

!!! warning "Abuse"

    Malware authors can abuse the system to check how many AVs can detect their malware. This allows malware authors to **fine tune** their malware, and make it more **undetectable**.

### Hashing

Hashing is a common way of fingerprinting a malware. Common hashing functions - MD5,SHA-1. By calculating the hash of the original file and the suspected to be suspicious file, we can check whether the executable/program is truly authentic.

## Finding Strings in Malware

A string is a sequence of characters terminated with a NULL (0x00) character. It can reveal some info about what the program does, like *URLs,Filenames,Windows Function Calls*. Strings are usually represented in these two ways:

![Representation of Strings](https://user-images.githubusercontent.com/103948042/197375084-2a257c43-9d52-4e0d-b601-1705daf0be2d.png)

!!! tip

    *BinText* can also be used to view strings in malware
  
## Portable Executable (PE)

PEs are the most common file format for executables and object code. It is a standard format for executables, object code, DLLs, and others used in 32-bit and 64-bit versions of Windows operating systems.

- `.dll` is the file formate used by Windows executables and object code
- This file format is a data structure that contains necessary info for the Windows OS Loader to execute the compiled code
- The files begin with a header that includes information about the code, type of application, required libraries & space requirements

The process of getting to a PE is as follows:

1. Source file (`.c`)
2. Object module (`.obj`)
   1. Linker combines various object module
3. Executable file (`.exe`)
   1. Loader does the final work in getting the program ready to run

```mermaid
flowchart LR
    sc[Source Code]--> Compiler --> oc[Object Code] --> Linker --> pe[Executable PE]
```

```mermaid
flowchart LR
    pe[Executable PE] --> Loader --> rp[Running Program]
```

### Loading a PE

#### Absolute Loading

Absolute Loading loads a program at a fixed location **every time**

!!! tip

    This is avoided nowadays to prevent applications from knowing which memory location they will always use.

#### Relocatable Loading

Relocatable Loading loads a program at a **random** location **every time**

#### Dynamic Run-Time Loading

Dynamic Run-Time Loading loads a program at a **random** location **every time**. The program is loaded into memory and then relocated to a random location while it is running

### Address binding

TODO: Add more info

### Linking

Linking is the process of combining object files into an executable file. The linker combines the object files and resolves any references between them.

#### Static linking

Static linking combines all executable code from libraries into an executable.

However, this makes the executable very big.

#### Dynamic linking

Dynamic linking combines only the references to the libraries into the executable. The executable will then **search and load** the libraries during runtime.

### Sections

The linker combines text and data from various object modules (`.obj`) to form the executable.

!!! tip

    Compilers can append `$...` to the end of the names to dictate the ordering within a section

#### `.text`

Executable code

#### `.data`

Read/write initialized data

#### `.rdata`

Readonly data

#### `.edata`

#### `.resrc`

Resources such as images / icons, this section is organized like a file system.

## Addresses

### Base address

Addresses are referenced relative to the base address of the program. The base address is the address of the first byte of the program.

!!! tip

    Information for address resolution is stored in `.idata` section

## Packed malwares

A malicious actor would like to add as many roadblocks to the investigation as possible. One way to achieve this is using a packer.

A packer is a program that takes a malicious program and adds a layer of obfuscation (i.e. encryption) to it. This makes it harder to analyze the program and to detect it.

The program would then be unpacked when it is executed. This is done by the unpacker. The unpacker is a program that decrypts the malicious program.

!!! tip "How to identify packed malware"

    * Raw size > virtual size.

Encryption / compression is used to obfuscate the malware.

In a packed executable, there is a "Wrapper Program" that decrypts the inner packed malware. Therefore in static analysis, only the wrapper program is analyzed.

## Ordinal values

The ordinal values are the numbers that are used to identify the functions in the Windows API. The ordinal values are used in the import table of the PE file.

In static analysis, ordinal values are not available because the program is not running. The ordinal values are only available in dynamic analysis.
