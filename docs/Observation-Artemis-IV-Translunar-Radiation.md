# Artemis IV Translunar Radiation Exposure - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis IV Translunar Radiation Exposure**

## Example Observation: Artemis IV Translunar Radiation Exposure

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**status**: Final

**category**: Laboratory

**code**: Cumulative Radiation Dose

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2027-09-01 10:00:00+0000 --> 2027-09-05 10:00:00+0000

**value**: 3.2 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Radiation Source**value**:Galactic Cosmic Radiation

> **component****code**:Shielding Condition**value**:Orion crew module nominal aluminum shielding (~10 g/cm²)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Artemis-IV-Translunar-Radiation",
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
        "code" : "cumulative-dose",
        "display" : "Cumulative Radiation Dose"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2027-09-01T10:00:00Z",
    "end" : "2027-09-05T10:00:00Z"
  },
  "valueQuantity" : {
    "value" : 3.2,
    "unit" : "mSv",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv"
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
            "code" : "nominal-shielding",
            "display" : "Nominal Shielding"
          }
        ],
        "text" : "Orion crew module nominal aluminum shielding (~10 g/cm²)"
      }
    }
  ]
}

```
