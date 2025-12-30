# Example Dive Medical Clearance - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Dive Medical Clearance**

## Example Procedure: Example Dive Medical Clearance

Profile: [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md)

**status**: Completed

**code**: Diving medical examination

**subject**: [Catherine Janeway (no stated gender), DoB Unknown](Patient-janeway.md)

**performed**: 2025-05-15 14:00:00+0000

**outcome**: Cleared for diving operations



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ExampleDiveMedicalClearance",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/DiveMedicalClearance"
    ]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "79492003",
        "display" : "Diving medical examination"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/janeway"
  },
  "performedDateTime" : "2025-05-15T14:00:00Z",
  "outcome" : {
    "text" : "Cleared for diving operations"
  }
}

```
