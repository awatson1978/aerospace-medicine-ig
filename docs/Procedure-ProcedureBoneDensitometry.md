# Procedure - Bone Densitometry - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure - Bone Densitometry**

## Example Procedure: Procedure - Bone Densitometry

Profile: [Space Health Procedure](StructureDefinition-SpaceProcedure.md)

**status**: Completed

**code**: Bone densitometry scan (procedure)

**subject**: [Space Miner](Patient-spaceminer1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureBoneDensitometry",
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
        "display" : "Bone densitometry scan (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  }
}

```
