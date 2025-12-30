# Condition - Hypoxia - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Hypoxia**

## Example Condition: Condition - Hypoxia

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Hypoxia (disorder)

**subject**: [Space Engineer](Patient-space-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionHypoxia",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "389086002",
        "display" : "Hypoxia (disorder)"
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
