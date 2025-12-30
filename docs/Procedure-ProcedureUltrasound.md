# Procedure - Ultrasound - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure - Ultrasound**

## Example Procedure: Procedure - Ultrasound

Profile: [Space Health Procedure](StructureDefinition-SpaceProcedure.md)

**status**: Completed

**code**: Ultrasound scan of the abdomen (procedure)

**subject**: [Space Miner](Patient-spaceminer1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureUltrasound",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceProcedure"
    ]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "281613004",
        "display" : "Ultrasound scan of the abdomen (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  }
}

```
