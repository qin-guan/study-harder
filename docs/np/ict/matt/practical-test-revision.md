# Practical Test Revision

!!! warning "Warning!"

    * Content here is not fully updated

## Static Analysis Tools

1. PEview - view when the PE is compiled in the file header

!!! note "Why do we need to know when the file is compiled?"

    * The time it is compiled can show whether the malware is old/new. If it is a zero-day/relatively new malware, then most AVs might not be able to detect it.

2. Dependency Walker
3. BinText
4. PEID - view whether malware is packed or unpacked

## How to Static Analysis

## Dynamic Analysis Tools

1. ApateDNS - record down any requests of connections to a domain/IP by the malware
2. CMD netcat
3. Process Explorer
4. Process Monitor
5. Regshot - scan directries for any changes that have been made

## How to Dynamic Analysis

1. Set the IP Address in Local Area Connection -> DNS Server -> 127.0.0.1

!!! note "Why do we need to set the DNS Server to 127.0.0.1 (looopback address, is a fake network) ?"

    * Some malwares will try to establish a connection to a domain/IP and you can use dynamic malware analysis tools to help detect such attempts
    * Using this fake network address will secure the network, and the rest of the internet or LAN is not affected even if the malware is a worm.

2. Set DNS Reply address in ApateDNS to 127.0.0.1 and start the server
3. Execute Process Explorer and Process Monitor
4. Execute in two separate Command prompt tabs the following two commands : nc -l -p 80 (http) and nc -l -p 443 (https)
5. Execute RegShot and take first shot

!!! warning "Make sure you do these before Step 5! "

    * All dynamic analysis tools should be open before taking the first shot - if not the shots will show not just the changes made to the device by the malware, but also by opening the tools.

    * In Regshot, make sure that the Scan Dirs is set to c:/

6. Execute the malware - * watch out whether it is a .dll or an .exe 

!!! note "How to run .dll/.exe files?"

    * Go to cmd
    * `cd` to the directory where the malware is.
    * The next command - `rundll32.exe (DLLNAME), [export argument <sub><sup>(found in dependancy walker)</sub></sup>]`

7. Check that the malware has run/exectued in Process Monitoring
8. If malware has executed, take a second shot in RegShot and compare.
9. Check the rest of with the rest of the tools - ApateDNS, the two cmds, which provide **Network-Based Indicators**
10. Check on Process Explorer

## Tools that may/may not be used during both analysis

1. MD5hash - compare the hash value of created files to the original files,

   Sometimes, malwares like to duplicate itself in the WINDOWS32 file and rename itself to hide the fact that the .dll/.exe is harmful.
