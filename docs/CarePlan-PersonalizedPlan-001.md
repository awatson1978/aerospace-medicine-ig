# Personalized Countermeasure Plan - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Personalized Countermeasure Plan**

## Example CarePlan: Personalized Countermeasure Plan

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Personalized Countermeasure Plan](StructureDefinition-personalized-countermeasure-plan.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Phase**: Orbital Operations

**status**: Active

**intent**: Plan

**title**: Personalized Bone-Muscle Countermeasure Protocol

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/personalized-countermeasure-plan"
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
