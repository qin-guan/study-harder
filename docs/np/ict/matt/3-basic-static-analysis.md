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
  
## Portable Executable

- `.dll` is the file formate used by Windows executables and object code
- This file format is a data structure that contains necessary info for the Windows OS Loader to execute the compiled code
- The files begin with a header that includes information about the code, type of application, required libraries & space requirements