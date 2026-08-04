# Antiemetic Care Plan - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Care Plan**

## Resource Profile: Antiemetic Care Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-care-plan | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:AntiemeticCarePlan |

 
Care plan for antiemetic prophylaxis and rescue protocols across mission phases 

**Usages:**

* Examples for this Profile: [CarePlan/SMS-Prophylaxis-Protocol](CarePlan-SMS-Prophylaxis-Protocol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/antiemetic-care-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-antiemetic-care-plan.csv), [Excel](StructureDefinition-antiemetic-care-plan.xlsx), [Schematron](StructureDefinition-antiemetic-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "antiemetic-care-plan",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-care-plan",
  "version" : "0.6.2",
  "name" : "AntiemeticCarePlan",
  "title" : "Antiemetic Care Plan",
  "status" : "active",
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Care plan for antiemetic prophylaxis and rescue protocols across mission phases",
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
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan"
      },
      {
        "id" : "CarePlan.extension",
        "path" : "CarePlan.extension",
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
        "id" : "CarePlan.extension:missionContext",
        "path" : "CarePlan.extension",
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
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "short" : "Care plan title (e.g., SMS Prophylaxis Protocol)",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
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
        "id" : "CarePlan.addresses",
        "path" : "CarePlan.addresses",
        "short" : "Motion sickness condition(s) being addressed",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/space-motion-sickness-condition"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity",
        "path" : "CarePlan.activity",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail",
        "path" : "CarePlan.activity.detail",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.code",
        "path" : "CarePlan.activity.detail.code",
        "short" : "Protocol type (prophylactic, rescue, etc.)",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/antiemetic-protocol-vs"
        }
      },
      {
        "id" : "CarePlan.activity.detail.status",
        "path" : "CarePlan.activity.detail.status",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.description",
        "path" : "CarePlan.activity.detail.description",
        "short" : "Protocol details including medication, dose, timing",
        "mustSupport" : true
      }
    ]
  }
}

```
