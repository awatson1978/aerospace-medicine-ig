# Neutral Buoyancy Training Session - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Training Session**

## Resource Profile: Neutral Buoyancy Training Session 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancySession | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:NeutralBuoyancySession |

 
Training session in neutral buoyancy facility for EVA simulation 

**Usages:**

* Derived from this Profile: [Underwater EVA Simulation](StructureDefinition-UnderwaterEVASimulation.md)
* Examples for this Profile: [Procedure/ExampleNeutralBuoyancySession](Procedure-ExampleNeutralBuoyancySession.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/NeutralBuoyancySession)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NeutralBuoyancySession.csv), [Excel](StructureDefinition-NeutralBuoyancySession.xlsx), [Schematron](StructureDefinition-NeutralBuoyancySession.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NeutralBuoyancySession",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancySession",
  "version" : "0.5.1",
  "name" : "NeutralBuoyancySession",
  "title" : "Neutral Buoyancy Training Session",
  "status" : "draft",
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Training session in neutral buoyancy facility for EVA simulation",
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
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "182813001",
              "display" : "Training activity"
            }
          ]
        },
        "mustSupport" : true
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
      },
      {
        "id" : "Procedure.bodySite",
        "path" : "Procedure.bodySite",
        "max" : "0"
      }
    ]
  }
}

```
