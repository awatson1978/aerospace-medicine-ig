# Telemedicine Consult Request - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Consult Request**

## Resource Profile: Telemedicine Consult Request 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-consult-request | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:TelemedicineConsultRequest |

 
Request for telemedicine consultation from crew medical officer to ground specialist 

**Usages:**

* Examples for this Profile: [ServiceRequest/Telemedicine-POCUS-Request-001](ServiceRequest-Telemedicine-POCUS-Request-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/telemedicine-consult-request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-telemedicine-consult-request.csv), [Excel](StructureDefinition-telemedicine-consult-request.xlsx), [Schematron](StructureDefinition-telemedicine-consult-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "telemedicine-consult-request",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-consult-request",
  "version" : "0.6.0",
  "name" : "TelemedicineConsultRequest",
  "title" : "Telemedicine Consult Request",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "Request for telemedicine consultation from crew medical officer to ground specialist",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest"
      },
      {
        "id" : "ServiceRequest.extension",
        "path" : "ServiceRequest.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "ServiceRequest.extension:communicationLatency",
        "path" : "ServiceRequest.extension",
        "sliceName" : "communicationLatency",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/communication-latency"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.extension:missionContext",
        "path" : "ServiceRequest.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "Requested telemedicine modality",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/telemedicine-modality-vs"
        }
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "Crew Medical Officer requesting consultation",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.performer",
        "path" : "ServiceRequest.performer",
        "short" : "Ground-based specialist",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "short" : "Clinical reason for consult",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.note",
        "path" : "ServiceRequest.note",
        "short" : "Clinical details and urgency",
        "mustSupport" : true
      }
    ]
  }
}

```
