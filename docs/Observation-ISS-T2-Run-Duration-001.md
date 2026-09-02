# ISS T2 Treadmill Run - Duration - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Run - Duration**

## Example Observation: ISS T2 Treadmill Run - Duration

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Activity

**code**: Duration of physical activity

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-01 13:30:00+0000

**value**: 30 min(Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-T2-Run-Duration-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-exercise-activity-measure"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "activity",
          "display" : "Activity"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes",
        "code" : "duration",
        "display" : "Duration of physical activity"
      },
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-exercise-modality-cs",
        "code" : "treadmill"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-06-01T13:30:00Z",
  "valueQuantity" : {
    "value" : 30,
    "unit" : "min",
    "system" : "http://unitsofmeasure.org",
    "code" : "min"
  }
}

```
