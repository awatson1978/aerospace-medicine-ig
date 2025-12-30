# Procedure - Compression - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure - Compression**

## Example Procedure: Procedure - Compression

Profile: [Space Health Procedure](StructureDefinition-SpaceProcedure.md)

**status**: Completed

**code**: Compression (procedure)

**subject**: [Space Miner](Patient-spaceminer1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureCompression",
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
        "display" : "Compression (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  }
}

```
