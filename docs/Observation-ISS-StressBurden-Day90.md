# ISS Cumulative Stress Burden - Mission Day 90 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Cumulative Stress Burden - Mission Day 90**

## Example Observation: ISS Cumulative Stress Burden - Mission Day 90

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Cumulative Stress Burden](StructureDefinition-cumulative-stress-burden.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Final

**code**: Cumulative stress burden

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2025-06-01 00:00:00+0000

**value**: 245 score(Details: UCUM code{score} = '{score}')

> **component****code**:Mood level**value**: -1.2 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Cognitive readiness**value**: 7.5 {score}(Details: UCUM code{score} = '{score}')

> **component****code**:Social connectedness**value**: 6 {score}(Details: UCUM code{score} = '{score}')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISS-StressBurden-Day90",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/cumulative-stress-burden"
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
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
        "code" : "cumulative-stress",
        "display" : "Cumulative stress burden"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2025-06-01T00:00:00Z",
  "valueQuantity" : {
    "value" : 245,
    "unit" : "score",
    "system" : "http://unitsofmeasure.org",
    "code" : "{score}"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
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
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
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
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-behavioral-state-cs",
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
