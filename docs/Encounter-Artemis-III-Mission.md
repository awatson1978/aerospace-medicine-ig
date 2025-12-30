# Artemis III Mission Encounter - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III Mission Encounter**

## Example Encounter: Artemis III Mission Encounter

**status**: In Progress

**class**: [ActCode: AMB](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**period**: 2027-09-01 00:00:00+0000 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Artemis-III-Mission",
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "period" : {
    "start" : "2027-09-01T00:00:00Z"
  }
}

```
