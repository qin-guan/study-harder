# Examining malicious web pages and document 

## Malicious website
Malware may propagate through the browser/operate within in.

Some examples of browser-based attacks may involve: 
1. Misusing the browser
2. Privilege escaltaion
3. Social Engineering

Need to understand browser technologies like VBScript (used in IE), Flash (unsupported and end of life now) and Java. (All these are not really used in modern webpages, but you may encounter)

## Safeguarding your system
1. Use lab systems that connect to the internet
2. Use VPNs or anonymizing proxies such as TOR and JonDonym
3. Use system and network monitoring tools if you connect using a full Windows system and browser
4. Download specific pages or files using tools such as `wget`/`curl` or online websites like [httrack](https://www.httrack.com) that downloads only the server side script.

!!! note

    ✔️ Downloading specific pages/files are good for offline analysis

## Deobfuscating Browser Scripts

Browser scripts help deliver exploits/redirect to other sites. The most common browser script is JavaScript.
These scripts are often obfuscated to avoid anti-malware detection and complicate analysis tasks.

To anaylse browser scripts, you need to deobfuscate them.

We can use the FireFox JS Engine (SpiderMonkey) to deobfuscate scripts.

```bash
js -f /usr/local/etc/def.js -f obfuscated.js > deobfuscated.js # this works in REMnux
```

## PDF files

```bash
pdfid sus.pdf # use this to analyze scripts in PDFs

pdf-parser.py --search /JavaScript sus.pdf # use this to search for JavaScript locations in PDFs
```

### PDF Parser

`pdf-parser` provides an object location for a script which can be extracted into it's own file

The location may be a reference. If it is a reference, use the location of the reference.

```bash
pdf-parser --object 32 --filter --raw file.pdf > out.js # Get object at 32
```

After obtaining the obfuscated JS, run it through steps [above](#deobfuscating-browser-scripts).

## Decoding Unicode

```bash
unicode2hex-escaped < input.txt > output.txt # convert any unicode into hex symbols 
shellcode2exe -s output.txt # convert hex symbols to an executable
```
