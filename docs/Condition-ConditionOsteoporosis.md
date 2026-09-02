# Condition - Osteoporosis - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Condition - Osteoporosis**

## Example Condition: Condition - Osteoporosis

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Health Condition](StructureDefinition-space-condition.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**code**: Osteoporosis (disorder)

**subject**: [Catherine Janeway](Patient-janeway.md)

**onset**: 2022



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionOsteoporosis",
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
        "code" : "64859006",
        "display" : "Osteoporosis (disorder)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/janeway",
    "display" : "Catherine Janeway"
  },
  "onsetDateTime" : "2022"
}

```
