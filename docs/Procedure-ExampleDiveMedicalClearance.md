# Example Dive Medical Clearance - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Dive Medical Clearance**

## Example Procedure: Example Dive Medical Clearance

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Dive Medical Clearance](StructureDefinition-dive-medical-clearance.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/dive-medical-clearance"
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
