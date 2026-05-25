# Remote-Guided POCUS Request - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Remote-Guided POCUS Request**

## Example ServiceRequest: Remote-Guided POCUS Request

Profile: [Telemedicine Consult Request](StructureDefinition-telemedicine-consult-request.md)

**status**: Active

**intent**: Order

**code**: Remote-Guided Procedure

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-consult-request"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "code" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/telemedicine-modality-cs",
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
