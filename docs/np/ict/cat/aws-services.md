# AWS Services

## Simple Storage Service (S3)

Simple storage service is a cloud storage service that provides object storage, object versioning, and access control management. 

S3 a scalable, easy-to-use, cost-effective way to store and access objects.

S3 is similar to Google Drive, but is geared more towards application developers, unlike Google Drive, which is geared more towards end users/consumers. 

S3 provides different types of storage classes to fulfil different needs:

### Standard

* Frequent access - low latency, high throughput
* Resilient against events that impact an entire AZ

### Standard Infrequent Access

* *Less frequent* access but requires **rapid access** - same low latency, high throughput as Standard
* Resilient against events that impact an entire AZ


### One Zone Infrequent Access

* Similar to [Standard Infrequent Access](#standard-infrequent-access) but only in one AZ
* *NOT* resilient against events that impact an entire AZ

### Glacier Instant Retrieval

* Archive storage class 
  * Low cost storage for long lived data
  * Rarely accessed

* Same performance as Standard - low latency, high throughput
* Requires retrieval in milliseconds

### Glacier Flexible Retrieval

* Archive storage class 
  * Low cost storage for long lived data
  * Rarely accessed (1 - 2 times per year)

* Requires retrieval in minutes

### Glacier Deep Archive

* Archive storage class 
  * Low cost storage for long lived data (7 - 10 years)
  * Rarely accessed (1 - 2 times per year)
  * Can be used for backup and disaster recovery 

* Requires retrival in hours

## Elastic Cloud Computing (EC2)

### Amazon Machine Images (AMI)

* The base image used to create a new instance

> The basic unit of deployment of instances and defines the initial software installed
