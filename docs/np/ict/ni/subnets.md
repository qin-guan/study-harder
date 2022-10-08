# Subnetting

To understand subnetting, we have to take a look at IP addresses.

> Assume we're using IPv4

An IP address a 32 byte identifier for a device on a network.

It's made up of 4 octets, each of which is a number between 0 and 255. Therefore, IP addresses can range from `0.0.0.0`
to `255.255.255.255`.

In binary, this can be represented as:

```
00000000 00000000 00000000 00000000 to
11111111 11111111 11111111 11111111
```

An IP address is split into 2 parts, to identify the network and the host. Subnetting allows us to "borrow" bits from
the host part of an IP address to identify the network.

This has several benefits:

* Improve network performance
* Reduce network congestion
  * Without subnetting, a broadcast will reach every device in the network
* Better network security
  * Without subnetting, if a device is compromised, the entire network becomes visible

## Subnet mask

A subnet mask determines which parts are the network and host portions of the IP address

## Classes

IP addresses are split into 4 classes.

To differentiate between the classes, the leading bits of an IP address is set to a predefined value

### Class A

| Default subnet mask | Leading bits (binary ) | Network bits | Host bits | First octet range |
|---------------------|------------------------|--------------|-----------|-------------------|
| 255.0.0.0           | 0                      | 7            | 24        | 0 - 127           |

### Class B

| Default subnet mask | Leading bits (binary) | Network bits | Host bits | First octet range |
|---------------------|-----------------------|--------------|-----------|-------------------|
| 255.255.0.0         | 10                    | 16           | 16        | 128 - 191         |

### Class C

| Default subnet mask | Leading bits (binary) | Network bits | Host bits | First octet range |
|---------------------|-----------------------|--------------|-----------|-------------------|
| 255.255.255.0       | 110                   | 24           | 8         | 192 - 223         |

### Class D

| Default subnet mask | Leading bits (binary) | First octet range |
|---------------------|-----------------------|-------------------|
| N/A, multicast      | 1110                  | 224 - 239         |

### Class E

| Default subnet mask | Leading bits (binary) | First octet range |
|---------------------|-----------------------|-------------------|
| N/A, research       | 11110                 | 240 - 247         |

## Reserved IPs

1. **[Broadcast address]** - Host bits all set to 1
  * This is the address that is used to send messages to all devices on the network.
2. **[Network ID]**  - Host bits all set to 0
  * This is the address that is used to identify the network.
3. **[Loopback IP]** - 127.x.x.x
  * This is the address that is used to send messages to the device itself.

## IP broadcast addresses

1. **Limited broadcast** - 255.255.255.255
2. **Directed broadcast** - Same as broadcast address, host bits all set to 1

## IP prefixes

A prefixed IP address simply represents the network bits used after the IP address itself.

For example, a subnet mask `255.255.255.240` will have the prefix `/28`.

## Calculations

Some helpful calculations

### Network ID

```
<destination IP> AND <subnet mask>
```

### Number of subnets


If all zeros and all ones are not allowed:

$$ 2 ^ {subnet bits} - 2 $$

Else:

$$ 2 ^ {subnet bits} $$

### Number of hosts

$$ 2 ^ {host bits} - 2 $$

## Practice

Given class C network address `195.63.10.0`, how to create 10 subnets?

Firstly we need to find the amount of subnet bits

$$ 2 ^ {subnet bits} - 2 \geq 10 $$
$$ 2 ^ {4} \geq 10 $$

Therefore, subnet mask is

```
11111111 11111111 11111111 11110000
```

Which in decimal is

```
255.255.255.240
```

<u>**Number of usable hosts for subnet**</u>

$$ 2 ^ {4} - 2 = 14 $$
