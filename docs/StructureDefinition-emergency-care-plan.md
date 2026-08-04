# Emergency Care Plan - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Care Plan**

## Resource Profile: Emergency Care Plan 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/emergency-care-plan | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:EmergencyCarePlan |

 
Evacuation and contingency plan addressing spaceflight emergency conditions 

**Usages:**

* Examples for this Profile: [CarePlan/ISS-Emergency-Plan-001](CarePlan-ISS-Emergency-Plan-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/emergency-care-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-emergency-care-plan.csv), [Excel](StructureDefinition-emergency-care-plan.xlsx), [Schematron](StructureDefinition-emergency-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "emergency-care-plan",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/emergency-care-plan",
  "version" : "0.6.2",
  "name" : "EmergencyCarePlan",
  "title" : "Emergency Care Plan",
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
  "description" : "Evacuation and contingency plan addressing spaceflight emergency conditions",
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
        "short" : "Emergency plan title",
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
        "short" : "Emergency conditions addressed",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/space-emergency-condition"
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
        "short" : "Planned emergency response action",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/emergency-response-vs"
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
        "short" : "Detailed emergency procedure steps",
        "mustSupport" : true
      }
    ]
  }
}

```
