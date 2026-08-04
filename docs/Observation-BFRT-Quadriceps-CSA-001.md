# Quadriceps CSA Outcome - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Quadriceps CSA Outcome**

## Example Observation: Quadriceps CSA Outcome

Profile: [BFRT Outcome Observation](StructureDefinition-bfrt-outcome-observation.md)

**Mission Phase**: Orbital Operations

**Flight Day**: 56

**status**: Final

**code**: Muscle Cross-Sectional Area

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-06-10 09:00:00+0000

> **component****code**:Muscle Cross-Sectional Area**value**: 72.5 cm2(Details: UCUM codecm2 = 'cm2')

> **component****code**:P1NP (Procollagen Type I N-Propeptide)**value**: 45.2 ng/mL(Details: UCUM codeng/mL = 'ng/mL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BFRT-Quadriceps-CSA-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/bfrt-outcome-observation"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs",
            "code" : "orbital-ops",
            "display" : "Orbital Operations"
          }
        ]
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flight-day",
      "valueInteger" : 56
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-outcome-cs",
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
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-outcome-cs",
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
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-outcome-cs",
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
