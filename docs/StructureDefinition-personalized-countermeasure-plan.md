# Personalized Countermeasure Plan - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Personalized Countermeasure Plan**

## Resource Profile: Personalized Countermeasure Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/personalized-countermeasure-plan | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:PersonalizedCountermeasurePlan |

 
Individualized countermeasure plan informed by multi-omics data for spaceflight health optimization 

**Usages:**

* Examples for this Profile: [CarePlan/PersonalizedPlan-001](CarePlan-PersonalizedPlan-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/personalized-countermeasure-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-personalized-countermeasure-plan.csv), [Excel](StructureDefinition-personalized-countermeasure-plan.xlsx), [Schematron](StructureDefinition-personalized-countermeasure-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "personalized-countermeasure-plan",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/personalized-countermeasure-plan",
  "version" : "0.6.2",
  "name" : "PersonalizedCountermeasurePlan",
  "title" : "Personalized Countermeasure Plan",
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
  "description" : "Individualized countermeasure plan informed by multi-omics data for spaceflight health optimization",
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
        "id" : "CarePlan.extension:missionPhase",
        "path" : "CarePlan.extension",
        "sliceName" : "missionPhase",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase"
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
        "short" : "Countermeasure plan title",
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
        "short" : "Conditions or risks being addressed",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.supportingInfo",
        "path" : "CarePlan.supportingInfo",
        "short" : "References to omics observations and risk assessments",
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
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.status",
        "path" : "CarePlan.activity.detail.status",
        "mustSupport" : true
      },
      {
        "id" : "CarePlan.activity.detail.description",
        "path" : "CarePlan.activity.detail.description",
        "short" : "Personalized countermeasure details",
        "mustSupport" : true
      }
    ]
  }
}

```
