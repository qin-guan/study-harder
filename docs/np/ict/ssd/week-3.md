# Week 3

## Quality attributes of secure software

* Reliability
  * Software functions as it is expected to
* Resiliency
  * Software is able to *withstand actions of threat actors* that are posed intentionally or accidentally
* Recoverability
  * Software is able to restore operations to what is expected by *containing, limiting and remediating* the damage
    caused by threats


## Explicit vs high-level security requirements

**Explicit requirements** are often *not defined* in software requirements, but rather **high level requirements** are found. 

Example: "Passwords need to be protected" instead of "The user password needs to be hashed before it is stored"

## CIA triad examples

| Confidentiality    | Integrity        | Availability             |
| ------------------ | ---------------- | ------------------------ |
| Authentication     | Authorization    | Availability             |
| Session management | Error management | Configuration management |

## Confidentiality (Authentication)

* Validating an entity's claim. Entity may be a person, process or device
* Entity usually provides identity claims/credentials which are validated by a trusted source

### Session management requirements

* Each user activity needs to be **uniquely tracked**
* User **should not be required to reauthenticate** many times
* Sessions must be **explicitly abandoned**
  * i.e. user logs off or closes the browser window
* Session identifiers **must not be passed in cleartext or be easily guessable**

## Forms authentication

* Supply username and password for authentication -> validated against a database
* Connection to server should be e2ee as credentials are transferred over plaintext

## Integrity

### Accountability

* Audit logs - paper trail of activity conducted by a user
  * Can help detect when an unauthorized user makes a change
  * Or when an authorized user makes an unauthorized change
* Helps to prevent integrity violations

#### Requirements

* Who
* When
* What
* Where

### Authorization

#### Role Based Access Control (RBAC)

* Individuals (subjects) have access to a resource (object) based on their role(s)
* Objects have permissions (usually Create, Read, Update, Delete) which can be assigned to roles

### Error management

* All exceptions should be explicitly handled
* Error messages displayed to end user should only reveal required information
  * i.e. does not disclose internal implementation details etc.
* Security exception details should be periodically audited and monitored

## Availability

* Usually defined in Service Level Agreements (SLAs)
* Dictates the acceptable amount of downtime and expected uptime of a service

