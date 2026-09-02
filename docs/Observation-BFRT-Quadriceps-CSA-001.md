# Quadriceps CSA Outcome - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Quadriceps CSA Outcome**

## Example Observation: Quadriceps CSA Outcome

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Phase**: Orbital Operations

**Flight Day**: 56

**status**: Final

**code**: Muscle Cross-Sectional Area

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-06-10 09:00:00+0000

> **component****code**:Muscle Cross-Sectional Area**value**: 72.5 cm2(Details: UCUM codecm2 = 'cm2')

> **component****code**:P1NP (Procollagen Type I N-Propeptide)**value**: 45.2 ng/mL(Details: UCUM codeng/mL = 'ng/mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BFRT-Quadriceps-CSA-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bfrt-outcome-observation"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs",
            "code" : "orbital-ops",
            "display" : "Orbital Operations"
          }
        ]
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
      "valueInteger" : 56
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-outcome-cs",
        "code" : "muscle-csa",
        "display" : "Muscle Cross-Sectional Area"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-06-10T09:00:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-outcome-cs",
            "code" : "muscle-csa",
            "display" : "Muscle Cross-Sectional Area"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 72.5,
        "unit" : "cm2",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm2"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-outcome-cs",
            "code" : "p1np",
            "display" : "P1NP (Procollagen Type I N-Propeptide)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 45.2,
        "unit" : "ng/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "ng/mL"
      }
    }
  ]
}

```
