# Example Neutral Buoyancy Training Session - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Neutral Buoyancy Training Session**

## Example Procedure: Example Neutral Buoyancy Training Session

Profile: [Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md)

**status**: Completed

**code**: Training activity

**subject**: [Catherine Janeway (no stated gender), DoB Unknown](Patient-janeway.md)

**performed**: 2025-06-01 09:00:00+0000

**location**: [Location NASA Neutral Buoyancy Laboratory (NBL)](Location-NASANeutralBuoyancyLaboratory.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ExampleNeutralBuoyancySession",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancySession"
    ]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "182813001",
        "display" : "Training activity"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/janeway"
  },
  "performedDateTime" : "2025-06-01T09:00:00Z",
  "location" : {
    "reference" : "Location/NASANeutralBuoyancyLaboratory"
  }
}

```
