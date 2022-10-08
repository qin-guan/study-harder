# Virtual LAN

In short, VLAN allows you to split a LAN logically, instead of physically (i.e. with separate routers).

This provides several benefits:

* Restricts/limits network wide broadcasts
  * Broadcasts are only sent to VLANs with the same ID
* Improved security 
  * Limits inter-device communication
* Flexible design
  * Dynamic device membership in VLAN

VLAN operates at the data link layer (OSI layer 2). Therefore, it largely involves **switches** (operating with MAC
addresses).

## VLAN assignment

There are 2 ways of assigning membership:

* Static assignment
  * Membership is assigned to switch port
* Dynamic assignment
  * Membership is assigned based on device data

### Static

Static assignment operates at OSI layer 1, and VLAN membership is assigned to the physical port on a switch.

### Dynamic

Dynamic assignment usually operates at OSI layer 2 and above.

#### MAC address

OSI layer 2. MAC address is checked against a predefined list to determine VLAN membership.

#### Network protocol

OSI layer 3. Protocol is checked against a predetermined list to determine VLAN membership.

#### Application used

OSI layer 7. Application traffic is analyzed and checked against a predefined list to determine VLAN membership.

## Trunking

A logical VLAN might be split across multiple switches. To communicate from the VLAN on one switch to the same VLAN on
another switch, trunking is used.

Trunks usually have high link speeds (10GB/s) or greater.

### IEEE 802.1Q

IEEE 802.1Q is the standard for frame tagging in trunks.

A **unique VLAN identifier** is assigned to each *frame* before it is sent across the trunk. This is removed before the
frame is sent to the host.

* **Size:** 4 bytes / 32 bits

| 16 bits                               | 3 bits              | 1 bit                                                          | 12 bits |
|---------------------------------------|---------------------|----------------------------------------------------------------|---------|
| 0x8100 (hex)                          | Priority Code Point | Canonical Format Identifier                                    | VLAN ID |
| Indicates that this is a tagged frame | Priority of frame   | If 1: will not send to ports that do not support tagged frames |         |

> This might be slightly outdated. Refer to [here](https://en.wikipedia.org/wiki/IEEE_802.1Q) for more.

## Communication between VLAN

By default, devices between VLANs cannot talk to each other. Communication between VLANs require the use of a **router**
or a **layer 3 switch**.

Each VLAN can only be connected to 1 port of the router.

However, if the router port is VLAN aware, then multiple VLANs can be connected to a single port.

## Cisco IOS commands

### Setup static VLAN

```shell
enable
configure terminal
vlan <vlan no.>
name <vlan name>
interface range g0/1-10
switchport mode access
switchport access vlan <vlan no.>
```
