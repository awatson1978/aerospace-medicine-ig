# ISS Emergency Contingency Plan - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISS Emergency Contingency Plan**

## Example CarePlan: ISS Emergency Contingency Plan

Profile: [Emergency Care Plan](StructureDefinition-emergency-care-plan.md)

**status**: Active

**intent**: Plan

**title**: ISS Expedition 75 Emergency Contingency Plan

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/emergency-care-plan"
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
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/emergency-response-cs",
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
              "system" : "https://mitre.org/fhir/space-health/CodeSystem/emergency-response-cs",
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
