# Condition - Heart Attack - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Heart Attack**

## Example Condition: Condition - Heart Attack

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Myocardial infarction (disorder)

**subject**: [Space Constructioneer](Patient-space-construction-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionHeartAttack",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "22298006",
        "display" : "Myocardial infarction (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/space-construction-engineer-1",
    "display" : "Space Constructioneer"
  },
  "onsetDateTime" : "2022"
}

```
