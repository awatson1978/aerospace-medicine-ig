# ISS T2 Treadmill Session - Activity Group - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Session - Activity Group**

## Example Observation: ISS T2 Treadmill Session - Activity Group

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**Exercise Device**: [Device: status = active; manufacturer = NASA; modelNumber = T2-TVIS; type =](Device-ISS-T2-Treadmill.md)

**Harness Load**: 75 %(Details: UCUM code% = '%')

**status**: Final

**category**: Activity

**code**: ISS T2 treadmill session

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-01 13:00:00+0000 --> 2025-06-01 13:30:00+0000

**hasMember**: 

* [Observation Type of exercise](Observation-ISS-T2-Run-Type-001.md)
* [Observation Duration of physical activity](Observation-ISS-T2-Run-Duration-001.md)
* [Observation Heart rate](Observation-ISS-T2-Run-MeanHR-001.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-T2-Run-Group-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-exercise-activity-group"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/ISS-Exp75-InFlight"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/exercise-device",
      "valueReference" : {
        "reference" : "Device/ISS-T2-Treadmill"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/harness-load",
      "valueQuantity" : {
        "value" : 75,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  ],
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
        "code" : "PAPanel",
        "display" : "Physical activity panel"
      }
    ],
    "text" : "ISS T2 treadmill session"
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2025-06-01T13:00:00Z",
    "end" : "2025-06-01T13:30:00Z"
  },
  "hasMember" : [
    {
      "reference" : "Observation/ISS-T2-Run-Type-001"
    },
    {
      "reference" : "Observation/ISS-T2-Run-Duration-001"
    },
    {
      "reference" : "Observation/ISS-T2-Run-MeanHR-001"
    }
  ]
}

```
