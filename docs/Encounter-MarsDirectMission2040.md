# Mars Direct Mission 2040 - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Direct Mission 2040**

## Example Encounter: Mars Direct Mission 2040

**status**: In Progress

**class**: [ActCode: FLD](http://terminology.hl7.org/7.0.1/CodeSystem-v3-ActCode.html#v3-ActCode-FLD) (field)

**subject**: [Sarah Chen Female, DoB: 1990-03-15 ( http://nasa.gov/astronaut-id#AST-2029-001)](Patient-MarsCrewMember1.md)

**period**: 2040-09-01 00:00:00+0000 --> (ongoing)

**reasonCode**: First Mars Direct mission - 18 month surface stay with ISRU demonstration



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "MarsDirectMission2040",
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "FLD",
    "display" : "field"
  },
  "subject" : {
    "reference" : "Patient/MarsCrewMember1"
  },
  "period" : {
    "start" : "2040-09-01T00:00:00Z"
  },
  "reasonCode" : [
    {
      "text" : "First Mars Direct mission - 18 month surface stay with ISRU demonstration"
    }
  ]
}

```
