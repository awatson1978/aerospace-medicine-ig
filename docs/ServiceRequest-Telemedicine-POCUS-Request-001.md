# Remote-Guided POCUS Request - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Remote-Guided POCUS Request**

## Example ServiceRequest: Remote-Guided POCUS Request

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Telemedicine Consult Request](StructureDefinition-telemedicine-consult-request.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**intent**: Order

**code**: Remote-Guided Procedure

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**reasonCode**: Abdominal pain

**note**: 

> 

Crew member reports acute RLQ pain x 6 hours. Request remote-guided abdominal POCUS.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "Telemedicine-POCUS-Request-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/telemedicine-consult-request"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "active",
  "intent" : "order",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/telemedicine-modality-cs",
        "code" : "remote-guided-procedure",
        "display" : "Remote-Guided Procedure"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "21522001",
          "display" : "Abdominal pain"
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "Crew member reports acute RLQ pain x 6 hours. Request remote-guided abdominal POCUS."
    }
  ]
}

```
