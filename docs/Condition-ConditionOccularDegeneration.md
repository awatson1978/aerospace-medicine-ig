# Condition - Occular Degeneration - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Occular Degeneration**

## Example Condition: Condition - Occular Degeneration

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Decreased intraocular pressure (finding)

**subject**: [Catherine Janeway](Patient/CaptainJaneway)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionOccularDegeneration",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "23670006",
        "display" : "Decreased intraocular pressure (finding)"
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
