# Extravehicular Activity Procedure - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extravehicular Activity Procedure**

## Resource Profile: Extravehicular Activity Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/eva-procedure | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:EVAProcedure |

 
Record of an Artemis mission EVA (moonwalk) with duration, location, participants, suit device, and metabolic data 

**Usages:**

* Examples for this Profile: [Procedure/Artemis-III-EVA-1](Procedure-Artemis-III-EVA-1.md) and [Procedure/Artemis-III-EVA-2](Procedure-Artemis-III-EVA-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/eva-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eva-procedure.csv), [Excel](StructureDefinition-eva-procedure.xlsx), [Schematron](StructureDefinition-eva-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eva-procedure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/eva-procedure",
  "version" : "0.5.6",
  "name" : "EVAProcedure",
  "title" : "Extravehicular Activity Procedure",
  "status" : "active",
  "date" : "2025-12-30T19:11:20-07:00",
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
  "description" : "Record of an Artemis mission EVA (moonwalk) with duration, location, participants, suit device, and metabolic data",
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
        "short" : "Links EVA to specific Artemis mission and phase",
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
        "id" : "Procedure.extension:evaNumber",
        "path" : "Procedure.extension",
        "sliceName" : "evaNumber",
        "short" : "Sequential EVA identifier (e.g., EVA-1, EVA-2)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.status",
        "path" : "Procedure.status",
        "patternCode" : "completed",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code",
        "path" : "Procedure.code",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding",
        "path" : "Procedure.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Procedure.code.coding:snomedCT",
        "path" : "Procedure.code.coding",
        "sliceName" : "snomedCT",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.code.coding:snomedCT.system",
        "path" : "Procedure.code.coding.system",
        "min" : 1,
        "patternUri" : "http://snomed.info/sct"
      },
      {
        "id" : "Procedure.code.text",
        "path" : "Procedure.code.text",
        "patternString" : "Extravehicular Activity (EVA)"
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
        "id" : "Procedure.performed[x].start",
        "path" : "Procedure.performed[x].start",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performed[x].end",
        "path" : "Procedure.performed[x].end",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performer",
        "path" : "Procedure.performer",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performer.actor",
        "path" : "Procedure.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut",
              "http://hl7.org/fhir/StructureDefinition/Practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "short" : "Lunar landing site or surface location where EVA occurred",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.usedReference",
        "path" : "Procedure.usedReference",
        "short" : "EVA suit device (e.g., xEMU) and other equipment used",
        "mustSupport" : true
      }
    ]
  }
}

```
