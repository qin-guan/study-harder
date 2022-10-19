# Server security basics

## Network models

### 1. P2P

In the P2P model, no server is needed and clients connect to each other to exchange data. 

*[P2P]: Peer-to-peer

### 2. Client server

In the client server model, clients connect to a central server to exchange data.

A server takes requests sent by a client (another server, or PC, etc) and sends back a response. 

The server can also process the data, and perform other actions. Therefore, there are multiple types of servers:

* Application/web server
  * Web servers are used to provide data (i.e. HTML files) to a client
    * i.e. IIS
  * Application servers processes business logic (i.e. creating new user accounts)
    * i.e. ASP.NET Core server
  * The terminology is interchangeable, an application server can also serve HTML files to a client

* Database server
  * Runs a database such as PostgreSQL

* File server
  * Runs a file system that can be accessed by network users
    * i.e. IIS

* Network services server
  * Provide services to allow users to access the network
    * i.e. DNS, DHCP, etc

* Directory services server
  * Provides authentication/authorization services
    * i.e. Active Directory

## CIA triad

The CIA triad is a model that describes the three main security goals of an information system.

### Confidentiality

Confidentiality is the protection of data from unauthorized access.

### Integrity

Integrity is the protection of data from unauthorized modification.

### Availability

Availability is the protection of data from denial of access.

## Server attack vectors

Aside from the ones in this list, there are many other attack vectors that can be used to compromise a server.

[OWASP top 10](https://cheatsheetseries.owasp.org/IndexTopTen.html)

### 1. Compromised credentials

**Preventive measures**

1. Use strong passwords
2. Use 2FA
3. Use 2FA hardware keys (i.e. FIDO2)

### 2. Poor encryption

**Preventive measures**

1. :bangbang: ALWAYS USE TLS :bangbang:

### 3. Denial of service

Denial of service ([Wikipedia](https://en.wikipedia.org/wiki/Denial-of-service_attack)) prevents a system from processing or responding to legitimate requests.

Botnets are a common way to perform a DoS attack.

**Preventive measures**

1. Rate limiting
2. Load balancing

### 4. `SYN` flood attack

`SYN` flood attack ([Wikipedia](https://en.wikipedia.org/wiki/SYN_flood)) is a type of DoS attack that exploits the TCP three-way handshake.

By rapidly flooding falsified TCP connections to the server, the attacker creates many "half-open" connection, where the server is waiting for a response from the client, but the client never sends a response. This may eventually causes the server to run out of resources, and become unresponsive.

### 5. ICMP attacks

`ICMP` flood attack ([Wikipedia](https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Flood_attack)) exploits the `ICMP` protocol by flooding the server with ping requests.

The server may run out of resources responding to the ping requests, and become unresponsive.

Ping of death ([Wikipedia](https://en.wikipedia.org/wiki/Ping_of_death)) is another attack that sends oversized ping requests to the server, causing the server to crash. 

*[ICMP]: Internet Control Message Protocol

## Disaster recovery

Disaster recovery is the process of recovering from a catastrophic event, such as:

* Natural disasters
* Cyber attack

Disaster recovery primarily comprises of a DRP, which lays out:

* Scenarios for catastrophic events and options for response
* Recovery procedures for scenarios
* Train staff on recovery procedures

### Data recovery

There are different types of data backups that can be used to recover data:

| Type                | Description                                                        | Backup duration | Restore duration |
| ------------------- | ------------------------------------------------------------------ | --------------- | ---------------- |
| Full backup         | Backs up all data                                                  | Long            | Low              |
| Incremental backup  | Backs up only the data that has changed since the last backup      | Low             | High             |
| Differential backup | Backs up only the data that has changed since the last full backup | Medium          | Medium           |

*[DRP]: Disaster Recovery Plan
