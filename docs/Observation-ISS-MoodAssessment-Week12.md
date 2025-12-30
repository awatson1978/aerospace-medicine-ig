# ISS Mood Assessment - Mission Week 12 - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Mood Assessment - Mission Week 12**

## Example Observation: ISS Mood Assessment - Mission Week 12

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

**status**: Final

**category**: Psychological assessment

**code**: Mood level

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2025-06-01 10:00:00+0000

**value**: -1 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Cortisol (µg/dL)**value**: 18.5 µg/dL(Details: UCUM codeug/dL = 'ug/dL')

> **component****code**:Sleep efficiency (%)**value**: 72 %(Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-MoodAssessment-Week12",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/behavioral-health-state"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "55467-8",
          "display" : "Psychological assessment"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "mood-level",
        "display" : "Mood level"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2025-06-01T10:00:00Z",
  "valueQuantity" : {
    "value" : -1,
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
            "code" : "cortisol-ugdl"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 18.5,
        "unit" : "µg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "ug/dL"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs",
            "code" : "sleep-efficiency-pct"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 72,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  ]
}

```
