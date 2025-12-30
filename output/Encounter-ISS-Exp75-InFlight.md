# ISS Expedition 75 In-Flight Period - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Expedition 75 In-Flight Period**

## Example Encounter: ISS Expedition 75 In-Flight Period

**status**: In Progress

**class**: [ActCode: AMB](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**period**: 2025-03-01 00:00:00+0000 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "ISS-Exp75-InFlight",
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
    "start" : "2025-03-01T00:00:00Z"
  }
}

```
