# Condition - Burn - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Burn**

## Example Condition: Condition - Burn

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Burn injury (morphologic abnormality)

**subject**: [Space Miner](Patient-spaceminer1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionBurn",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "48333001",
        "display" : "Burn injury (morphologic abnormality)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/spaceminer1",
    "display" : "Space Miner"
  },
  "onsetDateTime" : "2022"
}

```
