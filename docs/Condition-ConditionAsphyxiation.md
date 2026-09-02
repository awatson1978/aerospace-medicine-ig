# Condition - Asphyxiation - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Asphyxiation**

## Example Condition: Condition - Asphyxiation

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Health Condition](StructureDefinition-space-condition.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**code**: Death by asphyxiation (event)

**subject**: [Space Engineer](Patient-space-engineer-1.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionAsphyxiation",
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
        "code" : "74332007",
        "display" : "Death by asphyxiation (event)"
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
