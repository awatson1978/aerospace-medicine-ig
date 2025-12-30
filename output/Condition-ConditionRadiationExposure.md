# Condition - Radiation Exposure - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Radiation Exposure**

## Example Condition: Condition - Radiation Exposure

Profile: [Space Health Condition](StructureDefinition-SpaceCondition.md)

**code**: Exposure to radiation (event)

**subject**: [Space Constructioneer](Patient-space-construction-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionRadiationExposure",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition"
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "218190002",
        "display" : "Exposure to radiation (event)"
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
