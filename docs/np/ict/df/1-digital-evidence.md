# Digital Evidence

## What is Digital Evidence?
- Digital evidence may be found in storage devices such as:
  - Hard Disk Drive (HDD)
  - Random Access Memory (RAM)
  - Mobile Phones
  - Network or External Storage Devices

- Digital evidence is fragile and can be altered, damaged, or destroyed by improper handling or examination
- Failure to preserve the evidence may render it unusable or lead to an inaccurate conclusion which loses its credibility
- Extremely important that the original evidence is acquired in a manner that protects and preserves the evidence
- Any probative information stored or transmitted in digital form that a party to a court case may use at trial is considered as a digital evidence
- Examples:
  - Emails
  - Digital Photographs
  - Word processing documents
  - Instant message histories
  - Internet browsing histories
  - Content of Memory(RAM)
  - Video and Audio files

## Categories of Forensic Data
- Computer forensics focuses on 3 categories of data:
  - Active Data
    - Data that can be seen
      - Example: Files, programs, data used by OS
  - Latent Data
    - Data that exists despite being deleted
      - Example: Data that was partially overwritten or stored in slack space
      - For recovering such data, specialised tool is required
  - Archival Data
    - Data in backup
      - Can be stored offshore in tapes, flash drives, HDDs, SSDs, etc.

## Persistent vs Volatile Data
- A significant amount of data is gathered, preserved, and analysed
- 2 basic types of data are collected
  - Persistent
    - Data that is stored on a local hard drive (or another medium)
    - Data is preserved when the computer is turned off
  - Volatile
    - Data that is stored in memory, or exists in transit, that will be lost when the computer loses power or is turned off.
    - Volatile data resides in registries, cache, and random access memory (RAM)

## Forensic Image
- Forensic image of an affected or suspect computer system is one of the most comprehensive sources of information
- Forensic image is a copy of original evidence generally collected by a tool that performs bit-level copying from one location to another
- 3 common disk image formats
  - Expert Witness/EnCase (E01)
  - Raw (DD)
  - Virtual machine disk files (VMDK, OVF, VDI, VHD, etc.)
- Images could include:
  - Physical or logical copy of a hard drive (logical or physical)
  - Memory dump
  - Copies of removable media
  
## Forensic Image Format
- FI should create 2 bit stream copies of evidence
- 3 types of images:
  - Complete disk
    - Most preferred method as it is the most comprehensive
  - Partition
    - Contains all allocation units from an individual partition on a drive
    - Includes unallocated space and file slacks within the partition
    - Does not capture all data on a drive (as other partitions are not captured)
    - Only used in certain circumstances.
      - Example: Excessively large disk
  - Logical

## EnCase Evidence File (E01)
