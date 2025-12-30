# Mission Plan - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mission Plan**

## Resource Profile: Mission Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mission-plan | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:MissionPlan |

 
Artemis mission timeline with phases, events, constraints, and medical protocols 

**Usages:**

* Examples for this Profile: [PlanDefinition/Artemis-III-Mission-Plan](PlanDefinition-Artemis-III-Mission-Plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mission-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mission-plan.csv), [Excel](StructureDefinition-mission-plan.xlsx), [Schematron](StructureDefinition-mission-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mission-plan",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-plan",
  "version" : "0.5.5",
  "name" : "MissionPlan",
  "title" : "Mission Plan",
  "status" : "active",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Artemis mission timeline with phases, events, constraints, and medical protocols",
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
        "short" : "Links plan to specific Artemis mission",
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
        "short" : "Mission plan title (e.g., Artemis III Mission Plan)",
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
        "short" : "Mission phases and activities (launch, transit, EVA, etc.)",
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
        "short" : "Detailed description including timing, duration, and procedures",
        "mustSupport" : true
      }
    ]
  }
}

```
