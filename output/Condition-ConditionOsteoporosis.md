# Condition - Osteoporosis - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Osteoporosis**

## Example Condition: Condition - Osteoporosis

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Osteoporosis (disorder)

**subject**: [Catherine Janeway](Patient/CaptainJaneway)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionOsteoporosis",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "64859006",
        "display" : "Osteoporosis (disorder)"
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
