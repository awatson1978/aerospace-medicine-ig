# Mission Timeline Plan - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Timeline Plan**

## Resource Profile: Mission Timeline Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mission-timeline-plan | *Version*:0.5.3 |
| Active as of 2025-12-29 | *Computable Name*:MissionTimelinePlan |

 
Mars mission timeline with phases, events, EVA schedules, and medical protocols 

**Usages:**

* Examples for this Profile: [PlanDefinition/MarsDirectMissionPlan2040](PlanDefinition-MarsDirectMissionPlan2040.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mission-timeline-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mission-timeline-plan.csv), [Excel](StructureDefinition-mission-timeline-plan.xlsx), [Schematron](StructureDefinition-mission-timeline-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mission-timeline-plan",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-timeline-plan",
  "version" : "0.5.3",
  "name" : "MissionTimelinePlan",
  "title" : "Mission Timeline Plan",
  "status" : "active",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Mars mission timeline with phases, events, EVA schedules, and medical protocols",
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
      "identity" : "objimpl",
      "uri" : "http://hl7.org/fhir/object-implementation",
      "name" : "Object Implementation Information"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PlanDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PlanDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PlanDefinition",
        "path" : "PlanDefinition"
      },
      {
        "id" : "PlanDefinition.extension",
        "path" : "PlanDefinition.extension",
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
        "id" : "PlanDefinition.extension:missionContext",
        "path" : "PlanDefinition.extension",
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
        "id" : "PlanDefinition.title",
        "path" : "PlanDefinition.title",
        "short" : "Mission plan title (e.g., Mars Direct Mission Plan)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.type",
        "path" : "PlanDefinition.type",
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.type.coding.system",
        "path" : "PlanDefinition.type.coding.system",
        "patternUri" : "http://terminology.hl7.org/CodeSystem/plan-definition-type"
      },
      {
        "id" : "PlanDefinition.type.coding.code",
        "path" : "PlanDefinition.type.coding.code",
        "patternCode" : "workflow-definition"
      },
      {
        "id" : "PlanDefinition.status",
        "path" : "PlanDefinition.status",
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.description",
        "path" : "PlanDefinition.description",
        "short" : "Detailed mission description including objectives, timeline, crew, risks",
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.action",
        "path" : "PlanDefinition.action",
        "short" : "Mission phases and activities (launch, transit, surface ops, return)",
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.action.title",
        "path" : "PlanDefinition.action.title",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "PlanDefinition.action.description",
        "path" : "PlanDefinition.action.description",
        "short" : "Detailed phase description with timing and procedures",
        "mustSupport" : true
      }
    ]
  }
}

```
