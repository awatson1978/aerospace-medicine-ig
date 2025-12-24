# Procedure - Eye Exam - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Procedure - Eye Exam**

## Example Procedure: Procedure - Eye Exam

Profile: [Space Health Procedure](StructureDefinition-SpaceProcedure.md)

**status**: Completed

**code**: Eye exam (procedure)

**subject**: [Space Miner](Patient-spaceminer1.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureEyeExam",
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
        "display" : "Eye exam (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  }
}

```
