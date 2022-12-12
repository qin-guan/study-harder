# Evidence Extraction & Analysis

## Slack Space

!!! important

    * RAM slack
    * File slack

- Within this slack space (so called file slack) there are 2 areas to consider:
  - The first is that between the end of the actual file and the sector in which the file ends
    - This sometimes referred to as RAM Slack, is padded with data as determined by the OS
  - The second is the remaining sectors in the cluster that contain no data
    - It is also OS dependent but can either be untouched or wiped
    - In cases where the OS does not wipe the unused sectors, there will be remnants of the previous file that existed. An analysis of the slack space in this case could expose sensitive information

- Unused space between the end of the actual file and the end of the defined data unit (cluster)
- When file is written, and does not occupy the entire cluster, the remaining space is slack space
- Example:
  - Assume that the OS uses a 4k cluster and 512 byte sector. This means that if a 2000 byte file were written to this cluster the remaining 2096 bytes would be slack
![](3-evidence-extraction-n-analysis-images/3-slack-space-example.png)

---

## Unallocated space
- It is an area or space on the hard drive of the computer that is available to write data to
- Not viewable to the typical computer use and requires specialized computer forensic software to view and analyze

---

## Hard Drisk Drive (Optional)
- Main Storage Media for most computer systems
- Holds:
  - Boot files
  - Operating System files
  - Programs files
  - Data files

### What does a Hard Disk Drive contains? (Optional)
- Tracks
  - Thin concentric circular strips on a disk or platter surface which comprise the magnetic medium to which data is written by the drive heads
- Cylinder
  - Consists of the same track number on each platter, spanning all such tracks across each platter surface that is able to store data
- Data is written to and read from the surface of a platter by device called a head
- Tracks are divided into sectors
  - Sector is the smallest physical storage unit on a disk 512 bytes in size
