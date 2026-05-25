# Sterilization Procedure - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sterilization Procedure**

## Resource Profile: Sterilization Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/sterilization-procedure | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SterilizationProcedure |

 
Sterilization procedure for planetary protection bioburden reduction (UV, DHMR, VHP, etc.) 

**Usages:**

* Examples for this Profile: [Procedure/Sterilization-DHMR-001](Procedure-Sterilization-DHMR-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/sterilization-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sterilization-procedure.csv), [Excel](StructureDefinition-sterilization-procedure.xlsx), [Schematron](StructureDefinition-sterilization-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sterilization-procedure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/sterilization-procedure",
  "version" : "0.6.0",
  "name" : "SterilizationProcedure",
  "title" : "Sterilization Procedure",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Sterilization procedure for planetary protection bioburden reduction (UV, DHMR, VHP, etc.)",
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
        "id" : "Procedure.extension:planetaryProtectionCategory",
        "path" : "Procedure.extension",
        "sliceName" : "planetaryProtectionCategory",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:missionContext",
        "path" : "Procedure.extension",
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
        "id" : "Procedure.extension:gravityContext",
        "path" : "Procedure.extension",
        "sliceName" : "gravityContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context"
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
        "short" : "Sterilization method used",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/sterilization-method-vs"
        }
      },
      {
        "id" : "Procedure.subject",
        "path" : "Procedure.subject",
        "short" : "Equipment or surface being sterilized",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.performed[x]",
        "path" : "Procedure.performed[x]",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.outcome",
        "path" : "Procedure.outcome",
        "short" : "Sterilization outcome (bioburden reduction achieved)",
        "mustSupport" : true
      },
      {
        "id" : "Procedure.note",
        "path" : "Procedure.note",
        "short" : "Process parameters (temperature, duration, pressure)",
        "mustSupport" : true
      }
    ]
  }
}

```
