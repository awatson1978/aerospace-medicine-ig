# Example Neutral Buoyancy Training Session - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Neutral Buoyancy Training Session**

## Example Procedure: Example Neutral Buoyancy Training Session

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Neutral Buoyancy Training Session](StructureDefinition-neutral-buoyancy-session.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-session"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
