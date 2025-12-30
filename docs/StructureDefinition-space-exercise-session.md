# Space Exercise Session - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Exercise Session**

## Resource Profile: Space Exercise Session 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-session | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:SpaceExerciseSession |

 
Procedural record of a space-based exercise event, linking prescriptions, goals, devices, and observations 

**Usages:**

* Examples for this Profile: [Procedure/ISS-Exercise-Session-Proc-001](Procedure-ISS-Exercise-Session-Proc-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-exercise-session)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-exercise-session.csv), [Excel](StructureDefinition-space-exercise-session.xlsx), [Schematron](StructureDefinition-space-exercise-session.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-exercise-session",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-exercise-session",
  "version" : "0.5.5",
  "name" : "SpaceExerciseSession",
  "title" : "Space Exercise Session",
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
  "description" : "Procedural record of a space-based exercise event, linking prescriptions, goals, devices, and observations",
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
        "id" : "Procedure.extension:missionContext",
        "path" : "Procedure.extension",
        "sliceName" : "missionContext",
        "short" : "Links procedure to specific mission",
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
        "id" : "Procedure.basedOn",
        "path" : "Procedure.basedOn",
        "short" : "Exercise prescription (ServiceRequest)",
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
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.text",
        "path" : "Procedure.code.text",
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
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.encounter",
        "path" : "Procedure.encounter",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.reasonReference",
        "path" : "Procedure.reasonReference",
        "short" : "Fitness goals or medical indications",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.report",
        "path" : "Procedure.report",
        "short" : "Comprehensive exercise report",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.usedReference",
        "path" : "Procedure.usedReference",
        "short" : "Exercise equipment (ARED, T2, CEVIS, etc.)",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
