# ISS T2 Treadmill Run - Duration - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Run - Duration**

## Example Observation: ISS T2 Treadmill Run - Duration

Profile: [Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md)

**status**: Final

**category**: Activity

**code**: Duration of physical activity

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 13:30:00+0000

**value**: 30 min(Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-T2-Run-Duration-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-measure"
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
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs",
        "code" : "treadmill"
      },
      {
        "system" : "http://hl7.org/fhir/us/physical-activity/CodeSystem/pa-temporary-codes",
        "code" : "duration",
        "display" : "Duration of physical activity"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
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
