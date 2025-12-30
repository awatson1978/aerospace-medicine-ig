# Procedure - Decompression - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure - Decompression**

## Example Procedure: Procedure - Decompression

Profile: [Space Health Procedure](StructureDefinition-SpaceProcedure.md)

**status**: Completed

**code**: Decompression (procedure)

**subject**: [Space Miner](Patient-spaceminer1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureDecompression",
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
        "display" : "Decompression (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  }
}

```
