# Condition - Heart Attack - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Heart Attack**

## Example Condition: Condition - Heart Attack

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Health Condition](StructureDefinition-space-condition.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**code**: Myocardial infarction (disorder)

**subject**: [Space Constructioneer](Patient-space-construction-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionHeartAttack",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-condition"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
