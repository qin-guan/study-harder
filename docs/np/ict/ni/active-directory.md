# Active Directory

Active Directory (AD) is a Microsoft product that allows you to manage resources in an organization.

These resources reside under a "directory", and can include users, groups, computers, printers, and other items.

!!! tip "Goal"

    Active Directory aims to provide simplified and efficient system administration


AD works with and requires a DNS server, and is also incorporated into most Windows Server operating systems.

AD makes use of:

* **Lightweight Directory Access Protocol (LDAP):** Directory access
* **X.500**
  * ISO standard for *directory structure, content, and access*

!!! danger "Important"

    AD does not implement X.500 standard for **access**

## Forest, tree & branch

A directory is based on a system of domains that are arranged in trees and forests.

* Forest
  * Collection of root level domains
* Tree
  * Root level domain
* Branch
  * Subdomains

## Objects

AD objects are the fundamental building blocks of a directory. An object is an instance of an *object class*, for example:

* Computers
* Users
* Groups (of users or other groups)
* Shared files/directories
* Policies

An object can have properties, and are usually predefined. However, new object types can also be defined and added. 

An object is either a leaf object, or a container object. A leaf object is usually a user, group, computer, or other object. A container object is a group or other object that contains other objects.

## Domains

A domain is a container object, meaning it is a container for other objects, and is usually a single organization. 

It also has the following properties:

* It is an independent unit of security
* It has a distinct database
* It has its own administrators
* It has an [internet domain](#forest-tree--branch)
* It has *one or more* domain controllers

!!! warning

    Each Active Directory domain must have an Internet name.
    This is how the client will connect to the domain.

## Organization Units

Organization Units (OUs) allow administrators to logically organize objects in a directory.

For example, an OU can be "Admin", and can contain users, computers, or groups.

!!! tip "Benefits"

    * Easily organize and manage AD objects
    * Delegate user in OU to perform certain tasks
    * Apply policies to a **group** of users/computers

## Group Policies 

Group policies are used to customize computers (i.e. desktop background)

There are a few settings available for configuration:

* **Software settings:** Deploying software
  * Deployment modes
    * Computer: installs when computer turns on
    * User: installs when user logs on
    * Publish: user can choose to install
* **Windows settings**
  * Password policy
  * Lockout policy
* **Administrative templates**
  * Lockdown policy

!!! tip

    Computers query domain controller every 60 to 90 minutes for changes
    If you're doing a practical, just force manual updates

## Windows Servers

There are three types of relationships a Windows Server instance can have with an AD:

* Standalone
  * No relationship to domain
* Member
  * Member of domain
  * Does not run AD services/databases
* Domain controller
  * Runs AD services/databases
  * Sync changes with other domain controllers
  * Responds to AD queries

## Domain controllers

**Domain controllers** are servers that:

* Maintains a copy of the directory
* Accepts update & query transactions

They also provide *authentication and authorization* services, and *share information* with other domain controllers.

!!! tip

    Every domain in a directory requires a domain controller

### Replication

AD database can be **replicated** across multiple domain controllers for fault tolerance.

| Advantages                                   | Disadvantages             |
|----------------------------------------------|---------------------------|
| Fault tolerance                              | Cost (hardware, licenses) |
| Improved performance in distributed networks | Sync delays               |
| Scalable                                     | Increased bandwidth usage |

## User accounts

In **Windows**, there are two types of user accounts:

* Local
* Domain

**Local** user accounts are:

* Maintained locally on a computer

!!! tip

    Windows also contains the default `Guest` and `Administrator` local user accounts

**Domain** user accounts are:

* Created within a domain controller and stored in AD
  * This also means it's propagated to other domain controllers
* Permits access throughout domain 

Once a domain user is authenticated by the controller, an **access token** is obtained. 

The **access token** determines permissions granted to resources for the user.

!!! tip

    Domain user accounts allow centralized user management through AD

### Requirements

* Domain account names must be unique within the domain
* Logon names are case **insensitive**
* Logon names must not contain more than **20 characters**
* Logon names must not contain these symbols
  * `+,*,?,<,>,/,\,[,],:,;.`

## Computer accounts

Computer accounts are essentially computers in an AD. 

A computer account has the **same name as the computer**, and must be unique within the domain.

This computer account can be **granted permissions** to resources in the AD, and can also be part of a group.

!!!warning "Important"

    Every computer in an AD needs to have a computer account

### Benefits

* **Authentication**
    * Requiring computer accounts ensure that a user can only logon from a computer that is a member of the domain
* Computer access can be audited
* Computers can be managed as a fleet 
    * Easier software deployment
    * Desktop management
  
!!! tip

    Keep better track of computers by moving them to an OU!

## Group accounts

Group accounts are logical "groups" that contain users, computers, or other groups.

Groups **simplify administration** --- configuration changes such as permissions can be set to target an entire group of users

A **user** can belong in multiple groups, and a group can contain other groups.

!!! danger

    A group can contain a max of 5000 members

### Group types

There are two types of groups:

* Distribution: for sending email, no permissions can be assigned
* Security: for assigning permissions

!!! tip

    Groups can be converted between the two types


### Group scope

There are three scopes of groups, and determine the locality of the group:

| Type         | Scope                       | Permission               | Members                                                                                                            | Can be members of                                                             |
|--------------|-----------------------------|--------------------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| Domain local | Own domain                  | Own domain               | Users, *global and universal* groups from any domain in the forest, *domain local* groups from the **same** domain | Domain local groups                                                           |
| Global       | Own domain, trusted domains | Any domain in the forest | Users, *global groups* from own domain                                                                             | Universal and domain local groups in any domain, global groups in same domain |
| Universal    | Any domain                  | Any domain in the forest | Users, *global and universal* groups from any domain in the forest                                                 | *Domain local and universal* groups in any domain                             |

#### Grouping strategy

* Users
  * Global group
* Resources
  * Domain local
* Global group -> domain local group

!!! tip

    Assign permissions to domain local groups

## Best practices

* Permissions should be assigned to groups instead of directly to users 
* Create naming convention for resources
* `Administrator` account should be renamed
* Disable accounts that are not used immediately
* Require users to change passwords on first logon

## Resource sharing permissions

Each object has 2 sets of permissions, one for NTFS and one for the network share. 

When a user has both NTFS and network share permissions, the two permission sets are combined to form the **MOST RESTRICTIVE** permission.

### NTFS

* NTFS chooses the **LEAST RESTRICTIVE** permission set
  * **EXCEPT** when **DENY** overrides **ALLOW**

!!! danger

    Explicit permissions override implicit permissions

    An explicit allow **WILL** override an implicit deny

### Network share

By default, **everyone** has *read* permission.

* Network share chooses the **MOST RESTRICTIVE** permission set
