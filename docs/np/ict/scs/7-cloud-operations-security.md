# Cloud Operations Security

## Security Operations Functions

SecOps (Security Operations) detect, respond to and recover an active attack from enterprise assets.

It's goals are to:

* Reactively ^^respond to attacks^^ detected by ==tools==
* Proactively ^^hunt for attacks^^ that slipped past reactive detections

## Importance of logging and monitoring

Logging is collecting and recording of an activity and its event data. It can be ^^provided by itself, or a secondary service^^.


Information logged will vary based on the service logging.

Common log fields:

* Date and time of event
* Origin of event
* Identity of resources accessed

Logging provides a trail of events, which is useful for:

* Troubleshooting
* Auditing
* Recordkeeping
* Incident response and remediation

Logs are a requirement for certain regulations:

* HIPAA
* GDPR
* LGPD

## Monitor and report

Monitoring is the process of observing the state of a system over time. It is used to detect changes in the state of a system. Monitoring can be used for security, performance of resources, applications, or data.

AWS provids a number of monitoring services:

* CloudWatch
* CloudTrail
* EventBridge
* X-Ray

!!! tip

    Logging simply writes data, whereas monitoring verifies the data (i.e. CloudWatch Alarms) etc.

!!! tip "Difference between CloudTrail and CloudWatch"

    CloudTrail is a service that records AWS API calls, typically from a user interacting with AWS cloud. CloudWatch is a monitoring and observability service built for your applications.

### AWS CloudTrail

*AWS CloudTrail* enables ^^governance and compliance^^, as well as ^^operational and risk auditing^^ of your AWS account.

CloudTrail records actions taken by users, roles, and services in your AWS account. It also records the source IP address from which the request was made.

!!! tip

    Use CloudTrail to view, search, download, archive, and analyze logs of all API calls made in your AWS account.

Relevant information provided by CloudTrail:

### AWS CloudWatch

*AWS CloudWatch* is a monitoring and observability service for AWS cloud resources and the applications you run on AWS.

CloudWatch provides a unified view of the operational health of your AWS resources, applications and services.

This allows easy infrastructure monitoring and troubleshooting.

!!! tip

    CloudWatch can collect metrics on premise and in AWS

## Best practices for logging and monitoring

* Define organizational requirements for ^^logs, alerts and metrics^^
* Configure service and application logging for all services
* Analyze logs centrally

## Identifying an incident

*Incident recognition and response* comprises of a set of information security ==policies and procedures== that you can use to ==quickly== identify, contain, and eliminate from an cyber attacks.

It can help to minimize damage and prevent future attacks

Some examples of incidents include:

* Logging in from a remote location
* Failing hard drive that is still fully operational
* Employee trying to access a system they are not authorized to access

### Phase 1: Discovery and recognition

1. Incident is discovered
2. Incident is notified to relevant people and escalated
3. Investigation and diagnosis of incident

### Phase 2: Resolution and recovery

1. Forensic isolation (reproduction of incident/bug)
2. Stage fix
3. Deploy fix
4. Incident closure
