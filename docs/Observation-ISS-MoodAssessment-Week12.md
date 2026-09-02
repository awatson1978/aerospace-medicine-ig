# ISS Mood Assessment - Mission Week 12 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Mood Assessment - Mission Week 12**

## Example Observation: ISS Mood Assessment - Mission Week 12

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Behavioral Health State](StructureDefinition-behavioral-health-state.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Psychological assessment

**code**: Mood level

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-01 10:00:00+0000

**value**: -1 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Cortisol [Mass/volume] in Serum or Plasma**value**: 18.5 ug/dL(Details: UCUM codeug/dL = 'ug/dL')

> **component****code**:Sleep efficiency (%)**value**: 72 %(Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-MoodAssessment-Week12",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/behavioral-health-state"
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "mood-level",
        "display" : "Mood level"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
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
            "system" : "http://loinc.org",
            "code" : "2143-6",
            "display" : "Cortisol [Mass/volume] in Serum or Plasma"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 18.5,
        "unit" : "ug/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "ug/dL"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/behavioral-biomarker-cs",
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
