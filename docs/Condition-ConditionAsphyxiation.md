# Condition - Asphyxiation - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Asphyxiation**

## Example Condition: Condition - Asphyxiation

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Death by asphyxiation (event)

**subject**: [Space Engineer](Patient-space-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionAsphyxiation",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "74332007",
        "display" : "Death by asphyxiation (event)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/space-engineer-1",
    "display" : "Space Engineer"
  },
  "onsetDateTime" : "2022"
}

```
