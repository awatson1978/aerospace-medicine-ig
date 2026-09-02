# ISS Emergency Contingency Plan - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Emergency Contingency Plan**

## Example CarePlan: ISS Emergency Contingency Plan

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Emergency Care Plan](StructureDefinition-emergency-care-plan.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**intent**: Plan

**title**: ISS Expedition 75 Emergency Contingency Plan

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Safe Haven | Not Started | Retreat to Soyuz or Dragon for safe haven in case of toxic atmosphere or fire |


> **activity**

### Details

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Status** | **Description** |
| * | Crew Dragon Return | Not Started | Emergency return via Crew Dragon if safe haven insufficient |




## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "ISS-Emergency-Plan-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/emergency-care-plan"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "active",
  "intent" : "plan",
  "title" : "ISS Expedition 75 Emergency Contingency Plan",
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "activity" : [
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs",
              "code" : "safe-haven",
              "display" : "Safe Haven"
            }
          ]
        },
        "status" : "not-started",
        "description" : "Retreat to Soyuz or Dragon for safe haven in case of toxic atmosphere or fire"
      }
    },
    {
      "detail" : {
        "code" : {
          "coding" : [
            {
              "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs",
              "code" : "crew-dragon-return",
              "display" : "Crew Dragon Return"
            }
          ]
        },
        "status" : "not-started",
        "description" : "Emergency return via Crew Dragon if safe haven insufficient"
      }
    }
  ]
}

```
