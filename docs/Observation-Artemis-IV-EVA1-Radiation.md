# Artemis IV EVA-1 Radiation Exposure - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis IV EVA-1 Radiation Exposure**

## Example Observation: Artemis IV EVA-1 Radiation Exposure

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**partOf**: [Procedure Extravehicular Activity](Procedure-Artemis-IV-EVA-1.md)

**status**: Final

**category**: Laboratory

**code**: Radiation Dose Rate

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2027-09-10 11:00:00+0000

**value**: 0.15 mSv/hr(Details: UCUM codemSv/h = 'mSv/h')

> **component****code**:Radiation Source**value**:Galactic Cosmic Radiation

> **component****code**:Shielding Condition**value**:Lunar surface EVA - suit fabric only (~0.3 g/cm²)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Artemis-IV-EVA1-Radiation",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/artemis-radiation-exposure"
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
    }
  ],
  "partOf" : [
    {
      "reference" : "Procedure/Artemis-IV-EVA-1"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-radiation-measure-cs",
        "code" : "dose-rate",
        "display" : "Radiation Dose Rate"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2027-09-10T11:00:00Z",
  "valueQuantity" : {
    "value" : 0.15,
    "unit" : "mSv/hr",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv/h"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-radiation-measure-cs",
            "code" : "radiation-source",
            "display" : "Radiation Source"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-type-cs",
            "code" : "gcr",
            "display" : "Galactic Cosmic Radiation"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-radiation-measure-cs",
            "code" : "shielding-condition",
            "display" : "Shielding Condition"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/shielding-condition-cs",
            "code" : "minimal-shielding",
            "display" : "Minimal Shielding"
          }
        ],
        "text" : "Lunar surface EVA - suit fabric only (~0.3 g/cm²)"
      }
    }
  ]
}

```
