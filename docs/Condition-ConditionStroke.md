# Condition - Stroke - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Stroke**

## Example Condition: Condition - Stroke

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Cerebrovascular accident (disorder)

**subject**: [Catherine Janeway](Patient/CaptainJaneway)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionStroke",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "230690007",
        "display" : "Cerebrovascular accident (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/CaptainJaneway",
    "display" : "Catherine Janeway"
  },
  "onsetDateTime" : "2022"
}

```
