# Gathering software requirements

## Protection Needs Elicitation (PNE) Techniques

### Brainstorming

* Quick, unstructured
* Determine preliminary security requirements, but it may not relate to business context

### Surveys and questionnaires

* Collect *functional* and *assurance* requirements
* Quality of questions determines effectiveness of survey
* Explicit & open ended question should be asked
  * Open ended questions can provide security related information

#### Examples

* What kind of data will be processed, transmitted or stored by the software?
* Is the data highly sensitive or confidential in nature?
* Will the software handle personally identifiable information or privacy related information?

### Policy decomposition

* *Internal* or *external regulatory* policies need to be decomposed to determine the security requirement

### Data classification

* Assign **labels** (i.e. level of sensitivity) to data
* Based on potential impact to CIA triad upon *disclosure, alteration or destruction*
  * Confidentiality: public, confidential, restricted
  * Integrity: Low, medium, high
  * Availability: Support, essential, critical
* Lower cost of data protection, maximize return on investment when data is protected  

#### Data ownership

* Business owner has to make decisions to classify data, who has access and what level of access etc.
* They are responsible for
  * Ensuring that information is **appropriately classified**
  * Validating that *security measures are in place* as needed by **periodically reviewing the classification**
  * Defining **list of users authorized** and their *access criteria*
    * This supports the separation of duties principle in secure design
  * Ensuring **backup and recovery** mechanisms are in place
  * Delegating classification responsibility, access approval, backup and recovery duties to a **data custodian**

### Subject-object matrix

* Identify allowable actions between subjects and objects based on use cases
* 2D representation of roles and components
* Inversing allowable actions in the matrix allows visibility into threats, which can determine security requirements

### Use case and misuse case modelling

* Determine software functionality and security requirements
* Model misuse cases from use cases -> help to identify security requirements by modelling threats or unintended behavior of the system
* Misuse cases may be **intentional** or **accidental**
