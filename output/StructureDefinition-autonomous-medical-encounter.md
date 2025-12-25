# Autonomous Medical Encounter - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Autonomous Medical Encounter**

## Resource Profile: Autonomous Medical Encounter 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/autonomous-medical-encounter | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:AutonomousMedicalEncounter |

 
Encounter profile for crew-led medical events with no real-time ground support due to communication delays 

**Usages:**

* Examples for this Profile: [Encounter/Emergency-Appendicitis-Sol189](Encounter-Emergency-Appendicitis-Sol189.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/autonomous-medical-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-autonomous-medical-encounter.csv), [Excel](StructureDefinition-autonomous-medical-encounter.xlsx), [Schematron](StructureDefinition-autonomous-medical-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "autonomous-medical-encounter",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/autonomous-medical-encounter",
  "version" : "0.4.2",
  "name" : "AutonomousMedicalEncounter",
  "title" : "Autonomous Medical Encounter",
  "status" : "active",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Encounter profile for crew-led medical events with no real-time ground support due to communication delays",
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
        "id" : "Encounter.extension:communicationDelay",
        "path" : "Encounter.extension",
        "sliceName" : "communicationDelay",
        "short" : "Earth-Mars delay at time of event",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/communication-delay"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.extension:missionContext",
        "path" : "Encounter.extension",
        "sliceName" : "missionContext",
        "short" : "Links to specific Mars mission",
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
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.period",
        "path" : "Encounter.period",
        "short" : "Time period of medical event",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.reasonCode",
        "path" : "Encounter.reasonCode",
        "short" : "Reason for autonomous medical intervention",
        "mustSupport" : true
      },
      {
        "id" : "Encounter.diagnosis",
        "path" : "Encounter.diagnosis",
        "short" : "Conditions diagnosed during encounter",
        "mustSupport" : true
      }
    ]
  }
}

```
