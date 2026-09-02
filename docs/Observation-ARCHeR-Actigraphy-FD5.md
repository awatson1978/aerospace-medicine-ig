# ARCHeR Actigraphy - Flight Day 5 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ARCHeR Actigraphy - Flight Day 5**

## Example Observation: ARCHeR Actigraphy - Flight Day 5

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [ARCHeR Actigraphy Observation](StructureDefinition-archer-actigraphy-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**Mission Phase**: Outbound Transit

**status**: Final

**category**: Exam

**code**: Circadian rhythm

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-03-20 00:00:00+0000 --> 2028-03-21 00:00:00+0000

> **component****code**:Interdaily Stability (IS)**value**: 0.72 1(Details: UCUM code1 = '1')

> **component****code**:Circadian Period (Tau)**value**: 24.3 h(Details: UCUM codeh = 'h')

> **component****code**:Total Sleep Time (TST)**value**: 390 min(Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ARCHeR-Actigraphy-FD5",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/archer-actigraphy-observation"
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
        "reference" : "Encounter/Artemis-IV-Mission"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs",
            "code" : "transit-outbound",
            "display" : "Outbound Transit"
          }
        ]
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "30920001",
        "display" : "Circadian rhythm"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2028-03-20T00:00:00Z",
    "end" : "2028-03-21T00:00:00Z"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/actigraphy-metric-cs",
            "code" : "interdaily-stability",
            "display" : "Interdaily Stability (IS)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.72,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/circadian-assessment-cs",
            "code" : "circadian-period",
            "display" : "Circadian Period (Tau)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 24.3,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sleep-architecture-cs",
            "code" : "total-sleep-time",
            "display" : "Total Sleep Time (TST)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 390,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  ]
}

```
