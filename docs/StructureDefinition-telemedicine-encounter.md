# Telemedicine Encounter - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Telemedicine Encounter**

## Resource Profile: Telemedicine Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-encounter | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:TelemedicineEncounter |

 
Telemedicine encounter between crew and ground medical team 

**Usages:**

* Examples for this Profile: [Encounter/Telemedicine-StoreForward-001](Encounter-Telemedicine-StoreForward-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/telemedicine-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-telemedicine-encounter.csv), [Excel](StructureDefinition-telemedicine-encounter.xlsx), [Schematron](StructureDefinition-telemedicine-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "telemedicine-encounter",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/telemedicine-encounter",
  "version" : "0.6.0",
  "name" : "TelemedicineEncounter",
  "title" : "Telemedicine Encounter",
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
  "description" : "Telemedicine encounter between crew and ground medical team",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
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
        "id" : "Encounter.extension:communicationLatency",
        "path" : "Encounter.extension",
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
        "id" : "Encounter.extension:missionContext",
        "path" : "Encounter.extension",
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
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "short" : "Telemedicine modality used",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/telemedicine-modality-vs"
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
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
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "short" : "CMO (crew) or ground specialist",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "short" : "Encounter duration",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.reasonCode",
        "path" : "Encounter.reasonCode",
        "short" : "Clinical reason for consultation",
        "mustSupport" : true
      }
    ]
  }
}

```
