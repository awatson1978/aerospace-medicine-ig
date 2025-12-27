# ISS T2 Treadmill Session - Activity Group - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS T2 Treadmill Session - Activity Group**

## Example Observation: ISS T2 Treadmill Session - Activity Group

Profile: [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**Exercise Device**: [Device: status = active; manufacturer = NASA; modelNumber = T2-TVIS; type =](Device-ISS-T2-Treadmill.md)

**Harness Load**: 75 %(Details: UCUM code% = '%')

**status**: Final

**category**: Activity

**code**: ISS T2 treadmill session

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 13:00:00+0000 --> 2025-06-01 13:30:00+0000

**hasMember**: 

* [Observation Treadmill running in microgravity](Observation-ISS-T2-Run-Type-001.md)
* [Observation Duration of physical activity](Observation-ISS-T2-Run-Duration-001.md)
* [Observation Heart rate](Observation-ISS-T2-Run-MeanHR-001.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-T2-Run-Group-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-activity-group"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/ISS-Exp75-InFlight"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device",
      "valueReference" : {
        "reference" : "Device/ISS-T2-Treadmill"
      }
    },
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/harness-load",
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
    "reference" : "Patient/AstronautExample"
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
