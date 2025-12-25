# Enhanced Neutral Buoyancy Training Session - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Enhanced Neutral Buoyancy Training Session**

## Resource Profile: Enhanced Neutral Buoyancy Training Session 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/enhanced-neutral-buoyancy-session | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:EnhancedNeutralBuoyancySession |

 
Comprehensive neutral buoyancy training session with full regulatory compliance tracking 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/enhanced-neutral-buoyancy-session)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-enhanced-neutral-buoyancy-session.csv), [Excel](StructureDefinition-enhanced-neutral-buoyancy-session.xlsx), [Schematron](StructureDefinition-enhanced-neutral-buoyancy-session.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "enhanced-neutral-buoyancy-session",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/enhanced-neutral-buoyancy-session",
  "version" : "0.4.2",
  "name" : "EnhancedNeutralBuoyancySession",
  "title" : "Enhanced Neutral Buoyancy Training Session",
  "status" : "draft",
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
  "description" : "Comprehensive neutral buoyancy training session with full regulatory compliance tracking",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:sessionDuration",
        "path" : "Procedure.extension",
        "sliceName" : "sessionDuration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/session-duration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:maximumDepth",
        "path" : "Procedure.extension",
        "sliceName" : "maximumDepth",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/maximum-depth"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:trainingObjectives",
        "path" : "Procedure.extension",
        "sliceName" : "trainingObjectives",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/training-objectives"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:taskMetrics",
        "path" : "Procedure.extension",
        "sliceName" : "taskMetrics",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/task-completion-metrics"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:commSystems",
        "path" : "Procedure.extension",
        "sliceName" : "commSystems",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/communication-systems"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:safetyProtocols",
        "path" : "Procedure.extension",
        "sliceName" : "safetyProtocols",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/safety-protocols"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:compliance",
        "path" : "Procedure.extension",
        "sliceName" : "compliance",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/regulatory-compliance"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:environmental",
        "path" : "Procedure.extension",
        "sliceName" : "environmental",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/environmental-conditions"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/neutral-buoyancy-training-activities"
        }
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.performed[x]:performedDateTime",
        "path" : "Procedure.performed[x]",
        "sliceName" : "performedDateTime",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancyFacility"
            ]
          }
        ]
      }
    ]
  }
}

```
