# Store-and-Forward Telemedicine Encounter - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Store-and-Forward Telemedicine Encounter**

## Example Encounter: Store-and-Forward Telemedicine Encounter

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Telemedicine Encounter](StructureDefinition-telemedicine-encounter.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Communication Latency**: 1.3 s(Details: UCUM codes = 's')

**status**: Finished

**class**: [ActCode: VR](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-VR) (virtual)

**type**: Store-and-Forward

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**period**: 2028-05-10 09:00:00+0000 --> 2028-05-10 09:15:00+0000

**reasonCode**: Skin disorder



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "Telemedicine-StoreForward-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/telemedicine-encounter"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/communication-latency",
      "valueQuantity" : {
        "value" : 1.3,
        "unit" : "s",
        "system" : "http://unitsofmeasure.org",
        "code" : "s"
      }
    }
  ],
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "VR",
    "display" : "virtual"
  },
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-modality-cs",
          "code" : "store-forward",
          "display" : "Store-and-Forward"
        }
      ]
    }
  ],
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "period" : {
    "start" : "2028-05-10T09:00:00Z",
    "end" : "2028-05-10T09:15:00Z"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "95320005",
          "display" : "Skin disorder"
        }
      ]
    }
  ]
}

```
