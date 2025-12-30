# Mars Extravehicular Activity Procedure - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Extravehicular Activity Procedure**

## Resource Profile: Mars Extravehicular Activity Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mars-eva-procedure | *Version*:0.5.4 |
| Active as of 2025-12-29 | *Computable Name*:MarsEVAProcedure |

 
Record of Mars surface EVA with duration, location, participants, suit device, metabolic data, and dust exposure 

**Usages:**

* Examples for this Profile: [Procedure/MarsEVA-Sol147](Procedure-MarsEVA-Sol147.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mars-eva-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mars-eva-procedure.csv), [Excel](StructureDefinition-mars-eva-procedure.xlsx), [Schematron](StructureDefinition-mars-eva-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mars-eva-procedure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mars-eva-procedure",
  "version" : "0.5.4",
  "name" : "MarsEVAProcedure",
  "title" : "Mars Extravehicular Activity Procedure",
  "status" : "active",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Record of Mars surface EVA with duration, location, participants, suit device, metabolic data, and dust exposure",
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
        "short" : "Links EVA to specific Mars mission",
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
        "short" : "Sequential EVA identifier (e.g., EVA-1, EVA-247)",
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
        "id" : "Procedure.extension:communicationDelay",
        "path" : "Procedure.extension",
        "sliceName" : "communicationDelay",
        "short" : "Earth-Mars light time delay at EVA time",
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
        "id" : "Procedure.code.coding:snomedCT.code",
        "path" : "Procedure.code.coding.code",
        "patternCode" : "103741001"
      },
      {
        "id" : "Procedure.code.text",
        "path" : "Procedure.code.text",
        "patternString" : "Mars Surface Extravehicular Activity"
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
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
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/Practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Procedure.location",
        "path" : "Procedure.location",
        "short" : "Mars surface location where EVA occurred (areographic coordinates)",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.usedReference",
        "path" : "Procedure.usedReference",
        "short" : "EVA suit device and other equipment used",
        "mustSupport" : true
      }
    ]
  }
}

```
