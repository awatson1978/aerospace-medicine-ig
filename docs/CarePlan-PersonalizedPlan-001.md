# Personalized Countermeasure Plan - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Personalized Countermeasure Plan**

## Example CarePlan: Personalized Countermeasure Plan

Profile: [Personalized Countermeasure Plan](StructureDefinition-personalized-countermeasure-plan.md)

**Mission Phase**: Orbital Operations

**status**: Active

**intent**: Plan

**title**: Personalized Bone-Muscle Countermeasure Protocol

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**supportingInfo**: [Observation Metabolomics](Observation-Metabolomics-Observation-001.md)

> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Status** | **Description** |
| * | In Progress | Enhanced ARED resistance exercise 6x/week with increased load progression based on elevated CTX/P1NP ratio |


> **activity**

### Details

| | | |
| :--- | :--- | :--- |
| - | **Status** | **Description** |
| * | In Progress | Vitamin D supplementation 4000 IU/day based on CYP2R1 variant reducing hydroxylation efficiency |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "PersonalizedPlan-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/personalized-countermeasure-plan"
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
    }
  ],
  "status" : "active",
  "intent" : "plan",
  "title" : "Personalized Bone-Muscle Countermeasure Protocol",
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "supportingInfo" : [
    {
      "reference" : "Observation/Metabolomics-Observation-001"
    }
  ],
  "activity" : [
    {
      "detail" : {
        "status" : "in-progress",
        "description" : "Enhanced ARED resistance exercise 6x/week with increased load progression based on elevated CTX/P1NP ratio"
      }
    },
    {
      "detail" : {
        "status" : "in-progress",
        "description" : "Vitamin D supplementation 4000 IU/day based on CYP2R1 variant reducing hydroxylation efficiency"
      }
    }
  ]
}

```
