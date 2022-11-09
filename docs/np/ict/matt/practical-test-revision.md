# Practical Test Revision

!!! warning "Warning!"

    * Content here is not fully updated

## Static Analysis Tools

1. PEview - view when the PE is compiled in the file header

   !!! note "Why do we need to know when the file is compiled?"

       * The time it is compiled can show whether the malware is old/new. If it is a zero-day/relatively new malware, then most AVs might not be able to detect it.

2. Dependency Walker - find possible functionalities of a malware
3. BinText - find possible functionalities of a malware
4. PEID - view whether malware is packed or unpacked

## How to Static Analysis

!!! warning "Warning!"

    * The following is a suggested method to perform analysis, however, do use the tools as and when you feel like it it required.

### 1. Open PEview to find out when the PE is compiled

### 2. Open PEID and analyse the results - is it packed or unpacked?

To find out whether it is packed or not, there are **two** main ways:

1. Look at the line above the 'Multi Scan' option. This will show the compiler used to compile the PE.

Some examples of common compilers are :

- PEncrypt
- Microsoft Visual Studio C++

!!! note "Space where the compiler is suppoed to be is empty?"

      *  You can press the right arrow (->) at the bottom right of PEiD and perform a <b>Normal Scan</b> , <b>Deep Scan</b> and <b>Hardcore Scan</b>. The compiler should show.

2. Press the arrow to the right of 'EP Section'. A popup as seen below should appear.

![Section Viewer of EP Section](https://user-images.githubusercontent.com/103948042/200547934-a41786a9-2087-41c5-b7a8-69f0e1be1c10.png)

As mentioned previously, **Raw Size > Virtual Size** helps to identify whether the malware is packed or not. If the R.Size is indeed > V.Size, then the malware is **packed**.

### 3. Open Dependency Walker and observe the PE

Firstly, observe the number of files when unpacked. If the number of files are lesser than 4, then it is a 🚩 red flag - suspect that the malware is packed.

### 4. Open BinText and observe the PE. Look for the following things:

1. Network Based Indicators

- Some examples being connection to http/https or ip address or domain , creation of sockets.

Some more examples below:

- [ws2_32](https://learn.microsoft.com/en-us/windows/win32/winsock/windows-sockets-start-page-2)
- CONNECT %s%HTTP/1.0 , followed by ?503 and 200 (May be status codes)
- Any domain names

2. Host Based Indicators

- Some examples being creation of mutext or process , file manipulation or registry records
- Some more examples below:
- SOFTWARE\Classes\http -> as long as there is SOFTWARE, will refers to registry records
- SOFTWARE\\Microsoft\Windows\CurrentVersion\Run -> refering to dowwnloading the malware at Run folder in the registry(files in this folder will be executed when the computer starts)

(Mutex - used to protect a shared resource from simultaneous acces by multiple processes. A string which processes must own so that it can execute the code that requires access to a shared resource. If processes do not have ownership of the mutext, they are unable to execute their own code that requires access to a shared resourced and must wait until they have ownership of the mutex.)

3. Important, Perhaps some suspicious things?

- File Names (eg. vmx32to64.exe)

## Dynamic Analysis Tools

1. ApateDNS - record down any requests of connections to a domain/IP by the malware
2. CMD netcat - 
3. Process Explorer - 
4. Process Monitor - any process/registry keys accessed or modified in any way will be seen here , highly noisy 😞
5. Regshot - scan directories and registry details for any changes that have been made

## How to Dynamic Analysis

### 1. Set the IP Address in Local Area Connection -> DNS Server -> 127.0.0.1

!!! note "Why do we need to set the DNS Server to 127.0.0.1 (loopback address, is a fake network) ?"

    * Some malwares will try to establish a connection to a domain/IP and you can use dynamic malware analysis tools to help detect such attempts
    * Using this fake network address will secure the network, and the rest of the internet or LAN is not affected even if the malware is a worm.

### 2. Set DNS Reply address in ApateDNS to 127.0.0.1 and start the server

### 3. Execute Process Explorer and Process Monitor

- In Process Monitor, you can clear the records by pressing onto the capture button to disable it from listening **(but remember to enable it again later)**, then pressing onto the clear button.

- ![Clearing history in Process Monitor](https://user-images.githubusercontent.com/103948042/200710108-bed8bf7e-f8f7-4587-b7c3-0ae5a516362c.gif)

### 4. Execute in two separate Command prompt tabs the following two commands : `nc -l -p 80 (http) and nc -l -p 443 (https)

### 5. Execute RegShot and take first shot

- Make sure that the option to scan directory is checked (defaultly not checked)
   The directory to scan should also be C:\

![RegShot Settings](https://user-images.githubusercontent.com/103948042/200707925-f2cd647a-5323-40df-a45b-6e82b31d6b52.png)

!!! warning "Make sure you do these before Step 5! "

    * All dynamic analysis tools should be open before taking the first shot - if not the shots will show not just the changes made to the device by the malware, but also by opening the tools.

    * In Regshot, make sure that the Scan Dirs is set to c:/

### 6. Ensure that your screen has the 'Process Explorer' tab at the front, then execute the malware - * watch out whether it is a .dll or an .exe

!!! note "How to run .dll/.exe files?"

    * Go to cmd
    * `cd` to the directory where the malware is.
    * The next command - `rundll32.exe (DLLNAME), [export argument (found in dependancy walker)]`

### 7. Check that the malware has run/exectued in Process Explorer - the process of running the malware will pop out there <sub><sup>(may bevery fast though)</sub></sup>

### 8. If malware has executed, take a second shot in RegShot and compare

!!! tip "Must take note!"

    * Under the Files added, any `.pf` files are prefix files, not a file created by the malware
    * Under Values Added, look out for registry changes to CurrentVersion/Run - malware is inserting itself to the folder of processes to run when a computer boots/starts up
    * Under Values Modified, stay away from those that say 'Cryptography' - these are quite normal changes 
    * Under Values Modified, also check for Services that the malware may have

### 9. Check the rest of with the rest of the tools - ApateDNS, the two cmds <sub><sup>(for garbage text-> usually encrypted)</sub></sup> , which provide **Network-Based Indicators**, which are indicators of compromise

### 10. Check on Process Explorer

There are 3 things you can do in process explorer that can make huge differences to your final inference of the malware's functionality.<br>

1. See `.dlls` functionality <sub><sup>(a huge cheat for those unsure of .dlls functionalities 🤩)</sub><sup>

   ![Finding out .dll's functionality](https://user-images.githubusercontent.com/103948042/200862646-b48de322-a0f0-4299-baa6-38b760a12073.gif)

2. Observe Strings in image and memory

   ![prop_full](https://user-images.githubusercontent.com/103948042/200864220-9fe6b337-0e48-4f1b-abe3-0f698f6bbff3.gif)

   If there are any extra strings in memory, it would hint that the malware is a packed malware as there when the PE is run, it is unpacked and executed. As such the additional strings in memory only show that the PE was previously packed.

!!! tip "Dr Divyan's protip"

    * Ensure what you have found in Dynamic Analysis matches strings/information found in Static Analysis.
    * (Take this with a grain of salt), if you press on the 'Verify' button, it will help to check whether the PE is legitimate or not.

3. Look for Mutext (under Mutant type)

   ![mutext](https://user-images.githubusercontent.com/103948042/200864631-8b736767-d902-4f8d-bb19-1eba0a7e897f.gif)
   
### 11. Check on Process Monitor - Filter by Process Name/PID

After setting a filter via process name (eg. Lab03-01.exe or PID: 1120), set further filters for operations to help to further narrow down the scope of actions recorded by Process Monitor.

## Tools that may/may not be used during both analysis

1. MD5hash - compare the hash value of created files to the original files,

   Sometimes, malwares like to duplicate itself in the WINDOWS32 file and rename itself to hide the fact that the .dll/.exe is harmful.

3Ls

- Little Endian
- Left side
- Least significant bit
