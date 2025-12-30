# ISS T2 Treadmill Run - Activity Type - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Run - Activity Type**

## Example Observation: ISS T2 Treadmill Run - Activity Type

Profile: [Space Exercise Activity Measure](StructureDefinition-space-exercise-activity-measure.md)

**status**: Final

**category**: Activity

**code**: Treadmill running in microgravity

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 13:00:00+0000

**value**: 1 {activity}(Details: UCUM code{activity} = '{activity}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-T2-Run-Type-001",
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
        "code" : "treadmill",
        "display" : "Treadmill running in microgravity"
      },
      {
        "system" : "http://loinc.org",
        "code" : "74010-0",
        "display" : "Type of exercise"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-01T13:00:00Z",
  "valueQuantity" : {
    "value" : 1,
    "unit" : "{activity}",
    "system" : "http://unitsofmeasure.org",
    "code" : "{activity}"
  }
}

```
