# Condition - Smoke Inhalation - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Smoke Inhalation**

## Example Condition: Condition - Smoke Inhalation

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Smoke inhalation injury (disorder)

**subject**: [Space Miner](Patient-spaceminer1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionSmokeInhalation",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "426936004",
        "display" : "Smoke inhalation injury (disorder)"
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
