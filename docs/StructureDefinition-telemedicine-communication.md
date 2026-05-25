# Telemedicine Communication - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Communication**

## Resource Profile: Telemedicine Communication 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-communication | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:TelemedicineCommunication |

 
Telemedicine communication request with clinical data and imaging payloads 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/telemedicine-communication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-telemedicine-communication.csv), [Excel](StructureDefinition-telemedicine-communication.xlsx), [Schematron](StructureDefinition-telemedicine-communication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "telemedicine-communication",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-communication",
  "version" : "0.6.0",
  "name" : "TelemedicineCommunication",
  "title" : "Telemedicine Communication",
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
  "description" : "Telemedicine communication request with clinical data and imaging payloads",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CommunicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CommunicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CommunicationRequest",
        "path" : "CommunicationRequest"
      },
      {
        "id" : "CommunicationRequest.extension",
        "path" : "CommunicationRequest.extension",
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
        "id" : "CommunicationRequest.extension:missionContext",
        "path" : "CommunicationRequest.extension",
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
        "id" : "CommunicationRequest.status",
        "path" : "CommunicationRequest.status",
        "mustSupport" : true
      },
      {
        "id" : "CommunicationRequest.medium",
        "path" : "CommunicationRequest.medium",
        "short" : "Communication modality",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/telemedicine-modality-vs"
        }
      },
      {
        "id" : "CommunicationRequest.subject",
        "path" : "CommunicationRequest.subject",
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
        "id" : "CommunicationRequest.payload",
        "path" : "CommunicationRequest.payload",
        "short" : "Clinical data, images, or other attachments",
        "mustSupport" : true
      },
      {
        "id" : "CommunicationRequest.payload.content[x]",
        "path" : "CommunicationRequest.payload.content[x]",
        "mustSupport" : true
      },
      {
        "id" : "CommunicationRequest.recipient",
        "path" : "CommunicationRequest.recipient",
        "short" : "Receiving party (ground specialist or crew)",
        "mustSupport" : true
      },
      {
        "id" : "CommunicationRequest.sender",
        "path" : "CommunicationRequest.sender",
        "short" : "Crew member or ground team sending data",
        "mustSupport" : true
      }
    ]
  }
}

```
