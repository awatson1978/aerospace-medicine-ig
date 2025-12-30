# ISS Cumulative Stress Burden - Mission Day 90 - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Cumulative Stress Burden - Mission Day 90**

## Example Observation: ISS Cumulative Stress Burden - Mission Day 90

Profile: [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Final

**code**: Cumulative stress burden

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 00:00:00+0000

**value**: 245 stress units(Details: UCUM code{stress_units} = '{stress_units}')

> **component****code**:Mood level**value**: -1.2 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Cognitive readiness**value**: 7.5 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Social connectedness**value**: 6 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-StressBurden-Day90",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/cumulative-stress-burden"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/ISS-Exp75-InFlight"
      }
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "cumulative-stress",
        "display" : "Cumulative stress burden"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-01T00:00:00Z",
  "valueQuantity" : {
    "value" : 245,
    "unit" : "stress units",
    "system" : "http://unitsofmeasure.org",
    "code" : "{stress_units}"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
            "code" : "mood-level"
          }
        ]
      },
      "valueQuantity" : {
        "value" : -1.2,
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
            "code" : "cognitive-readiness"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 7.5,
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
            "code" : "social-connectedness"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 6,
        "system" : "http://unitsofmeasure.org",
        "code" : "{score}"
      }
    }
  ]
}

```
