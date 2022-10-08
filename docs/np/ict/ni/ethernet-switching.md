# Ethernet switching

A switch routes packets to different devices connected to its ports. It usually does switching at layer 2, which is on the same level as MAC addresses.

> IP addresses are layer 3

## Layer 2 switching operations

### Address learning

* Learn source MAC address of each data frame transmitted and keeping track of the port where the frame enters the switch

### Flooding

* Send out on all ports when the destination MAC address is unknown or a broadcast

> If destination address is unknown to the switch, it forwards the frame to all segments except the one which sent the frame

### Forwarding

* Learns source MAC address of each data frame that is transmitted
* Notes that port where the frame enters the switch
* Forwards when the destination MAC matches an entry in the MAC Address Table

> If the destination address is on a different segment, the switch forwards the frame to the appropriate segment

### Filtering

* Filters when destination is located on the same port

> If the destination address is on the same segment as the frame, the switch **blocks** the frame from going on to other segments

## Switching modes

### Cut through switching

* Fastest - used by default
* Reads beginning of frame up till destination MAC address (6 bytes)
* Bad frames are forwarded, may congest the network
  * Fragment < 64 bytes
  * Corrupted frame - FCS check error

### Store and forward switching

* Reads entire frame into buffer and *checks for errors* before forwarding
* Reduces bandwidth wastage as bad frames are not forwarded

### Fragment-Free switching

* Fragment free switching holds the frame until the first 64 bytes are read from the source to detect a collision before forwarding
* Reduces latency as the frame is sent after it has read 64 bytes

### Switching Modes Summary

| Modes             | Advantages                  | Disadvantages                      |
|-------------------|-----------------------------|------------------------------------|
| Store-and-Forward | No invalid frames forwarded | Variable latency (delay in switch) |
| Cut-through       | Low constant latency        | Forward fragments & error frames   |
| Fragment-Free     | Filters out fragments       | Forward error frames               |

## Redundancy in switch topologies

* Resilience with multiple switches and trunk links
* One link or device fails another takes over

### Problem with Redundancy

* Broadcast storms
  * Floods broadcast through non-source ports and so on
* Multiple frame transmission
  * Multiple copies of frames may be delivered to the destination
* Inconsistent switch tables
  * Switch tables per switch is inconsistent causing it to send the frame through the wrong interface

### Redundancy without loops
* One path at a time
* Redundant path is close but ready to be open when needed
* Process is quick and automatic
* Spanning Tree Protocol does this

## Spanning Tree Protocol (STP)

4 steps:

1. Select root bridge
   1. Choose one with the **lowest** bridge ID -> Priority + MAC address
2. Select root port
3. Select ports on other switches with the lowest distance to root bridge
4. Select designated ports
5. Block unused ports

### Spanning Tree Overview
* STP is a Layer 2 link-management protocol that provide path redundancy while preventing undesirable loops
* Loop-free topology is accomplished when a switch recognizes a loop and blocks one or more redundant ports automatically
* Bridge Protocol Data Units (BPDUs) are used by switches in a network to exchange information regarding their status
* STA to resolve and shutdown redundant paths
* STP is defined in the **IEEE 802.1d** specification

### Spanning Tree Protocol Summary

* Redundant Paths is good for network resilience
* Broadcast Storms caused by redundant paths
* STP overcomes broadcast storms by using Loop Avoidance:
  * Redundant paths are blocked
  * One active path between any node in the network
  * If active path fail, blocked path is activated automatically
  * Network resilience is achieved without broadcast storms

### Root bridge election

* Switches exchange BDPUs with each other, containing their bridge ID.
  * Bridge ID = Priority (default: 32768 = $2^15$) + MAC address
* Switch with the lowest bridge ID is elected as new bridge

## Routing table

For directly connected networks

| Destination network | Next hop / outgoing interface |
|---------------------|-------------------------------|
| 192.168.2.0         | Directly connected            |

## Stub networks

* Send all non local traffic out a single interface

## Cisco IOS commands

Show spanning tree:

```shell
show spanning-tree
```

Show IP addresses & on/off status of interface:

```shell
show ip interface brief
```

Show all configuration of the router:

```shell
show running-config
```

```shell
show run all
```

Configure interface IP:

```shell
config terminal
interface <e>
ip address <ip> <subnet mask>
```

Configure static routing:
```shell
ip route <network> <subnet mask> <outgoing interface>
```

> Outgoing interface can only use P2P, using next hop IP can be used for multipoint

Configure stub routing:
```shell
ip route 0.0.0.0 0.0.0.0 <outgoing interface>
```

