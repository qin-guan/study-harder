# Investigative process

## Key steps

Step 1: A crime is suspected.

Step 2: Do preliminary assessment of the case.

Step 3: Obtain a search warrant for seizure (if required).

Step 4: Perform first response procedures at crime scene (involve 6 steps).

Step 5: Perform Forensic duplication/imaging at forensic lab.

Step 6: Generate MD5 checksum (hash) on the images.

Step 7: Prepare Chain of Custody. (may have already started at crime scene)

Step 8: Store the original evidence in a secure location. (in Evidence Bag)

Step 9: Analyze the image copy for evidence.

Step 10: Prepare relevant forensic reports.

Step 11: Submit the report to the client.

Step 12: If required, attend court and testify as an expert witness.
  
## Preliminary assessment

Determine occurrence of incident and impact.

* Know what to look out for
  * ==Evidence should be relevant and admissible==

Computer forensics examiners should assess digital evidence thoroughly with respect to the ^^scope^^ of the case to determine the ^^course of action to take.

* ==Not all evidence== is admissible

Evidence collected should be relevant and admissible

* Relevant
  * Evidence that ==proves or disproves facts== in a case
* Admissible
  * Evidence that ==conforms to all regulations and statutes== governing the nature and manner in which it was obtained and collected

Prioritize the evidence

* Location of evidence at crime scene
* Stability of media to be examined

Establish how to document evidence

Evaluate storage locations for electromagnetic interference

Evaluate the necessity to provide unregulated power supply to battery-operated devices

## Preparation Stage

Before going to a crime scene, obtain the following details

* Description of incident
* Incident manager running the incident
* Location of incident
* Details fo what to be seized
* Other work to be performed at scene

Then, prepare to take the following

* Acquisition
  * Forensic software
  * Large capacity sotrae drive
  * Live response tools
  * Write blockers
  * Driver adapters (SATA/eSATA/etc)
* Documentation
  * Camera
  * Notepads, pens, pencils, markers
* Disassembly tools
  * Toolkits - screw drivers, etc
  * Anti static wrist straps
* Packaging
  * Anti static bags
  * Evidence bags
  * Evidence tape
  * Cable ties
  * Sturdy boxes
* Misc
  * Latex gloves
  * Magnifying glass
  * UPS

Before evidence is collected, the investigator has to ensure he has the right to either search or seize the evidence in question.

Voluntary Surrender

    This occurs most often where primary owner is different from suspect. For seizure of business critical-system, special arrangement is needed to avoid disruption to the business function.

Search Warrant

    A search warrant allows law enforcement officers to acquire evidence from a suspect’s machine without giving suspect/owner prior notice.

        This is to avoid damaging the evidence and render it useless if suspects knows of the investigations.

    Warrants can be issued for:

        Entire company, floor, room, house etc.

    It can also be issued for all or part of a target computer.

    This option is open only to law enforcement officials.

## First Response Procedures

### 1. Secure the scene

Ensure that all persons are removed from the area where evidence is to be collected

This is done by a security team. They will

* Establish perimeter control
* Make initial entry
* Secure the area for ==search team==
* Search team carries out search operation

### 2. Conduct preliminary interviews

!!! tip

    This can be done in parallel with documenting the scene

Enquire those who were present on site at time of offense

Conduct interviews and record their location a time of entry and reason for being there

During the interview, gather information such as

* Owners of decides found at scene
* Passwords to access data
* Presence of offsite storage

### 3. Documenting the scene

**Before anything is ==touched== or removed**, record the scene with:

* Field notes
* Sketches
* Videos
* Photographs

!!! tip

    Even small things such as mouse position, location of components, etc. can be important later on. 
    Therefore, it should be documented.

Record the condition of computers, storage media, and other devices.

Take photos of monitor screens, rear of computer, as well as ==the entire site 360 deg==

### 4. Searching and seizing

!!! warn

    Use latex gloves when handling computer evidence

    Avoid leaving fingerprints, hairs, fibers and body tissue on any computer evidence

Do not change the state of electronic devices or equipment

If the ==device is off==, ==leave it off==

If the ==device is on==:

* Take photos of the monitor screen
* Record programs running on the screen

#### Handling live systems

In the event a computer is powered on, you **should not disconnect the power supply OR network connection**. THIS CAN DESTROY CRUCIAL EVIDENCE.

You should choose to:

1. Freeze the system

    This is done by pulling the plug.

    It will ==destroy everything in memory==, and may ==crash a UNIX system and CORRUPT the evidence files==

2. Perform proper shutdown

    The shutdown process will inevitably alter the disk and may change evidence. ==EVIDENCE MAY BE INADMISSIBLE IN COURT==

    Suspect computer may run ^^CLEANUP^^ procedures on shutdown, resulting in ==LOSS OF EVIDENCE==

3. Leave the computer running

    Run live forensic software

    Good option if there is a manageable number of workstations

#### Handling internal hard disks

Wear an anti-static strap to ensure protection from static electricity.

Disassemble the case of the computer to be examined to access the drives.

Ensure equipment is protected from magnetic fields.

Document internal devices and hardware configuration:

* Drive conditions (e.g. model, geometry, size)
* Internal components of the computer

Disconnect storage devices to prevent the destruction, damage, or alteration of data.

### 5. Bagging and tagging

#### Chain of custody

* All evidence presented in court of law must exist in the same condition as it was collected, in legal term, it must be in pristine condition.
* The document that chronicles every move and access of evidence is called chain of custody.
  * The courts expects chain of custody to be complete and without gaps.
* The chain starts when evidence is collected.

Chain of custody is used to prove the integrity of evidence. It should answer:

* Who collected the evidence?
* Where is the evidence stored?
* Who took possession of the evidence?
* How was the evidence stored and protected during storage?
* Who took the evidence out of storage and why?

For example,

| Date and time of action | Action type                              | Personnel collecting |
| ----------------------- | ---------------------------------------- | -------------------- |
| 2018-01-01 12:00        | Initial evidence collection              | John Doe             |
| 2018-01-01 12:30        | Evidence transferred to storage          | John Doe             |
| 2018-01-01 13:00        | Evidence transferred to lab for analysis | John Doe             |
| 2018-01-01 13:30        | Evidence transferred to storage          | Jane Doe             |

Some other information that should be recorded:

    Computer descriptive information

      Computer make and model
      Serial number(s)
      Location
      BIOS settings specific to disk drives

    Disk drive descriptive information

      Disk drive manufacturer, model, serial number
      Drive parameters(head, cylinders, sectors per track)

    Handling procedure

      Preparation (static grounding, prevention of physical shock, etc.)
      Contamination precautions taken

    Complete description of action

      Procedure used
      Tools used
      Description of each analysis step and its results

    Reason for action

#### Bagging

Bagging protects against contamination and tampering.

#### Tagging

Tagging provides a means of associating the attached and bagged evidence with a particular location, date, time, case, event, and seizure agent. It provides a first link in the chain of custody of the evidence.

### 6. Transporting electronic evidence

When transporting electronic evidence, ==damage must be avoided==.

Keep electronic evidence collected away from magnetic sources (e.g. radio transmitter, speaker magnets etc.).

Store evidence away from high temperature and humidity. Conditions too hot, cold or humid can damage evidence.

Do not place them in car boot. Rear seat is a better choice.

Maintain chain of custody on evidence to be transported.
