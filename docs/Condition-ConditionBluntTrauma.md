# Condition - Blunt Trauma - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Blunt Trauma**

## Example Condition: Condition - Blunt Trauma

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Blunt injury (disorder)

**subject**: [Space Miner](Patient-spaceminer1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionBluntTrauma",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "425359009",
        "display" : "Blunt injury (disorder)"
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
