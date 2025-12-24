# Underwater EVA Simulation - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater EVA Simulation**

## Resource Profile: Underwater EVA Simulation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/UnderwaterEVASimulation | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:UnderwaterEVASimulation |

 
Extravehicular activity simulation conducted underwater 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/UnderwaterEVASimulation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-UnderwaterEVASimulation.csv), [Excel](StructureDefinition-UnderwaterEVASimulation.xlsx), [Schematron](StructureDefinition-UnderwaterEVASimulation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "UnderwaterEVASimulation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/UnderwaterEVASimulation",
  "version" : "0.4.2",
  "name" : "UnderwaterEVASimulation",
  "title" : "Underwater EVA Simulation",
  "status" : "draft",
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Extravehicular activity simulation conducted underwater",
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
  "baseDefinition" : "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancySession",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      },
      {
        "id" : "Procedure.extension:suitConfig",
        "path" : "Procedure.extension",
        "sliceName" : "suitConfig",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/suit-configuration"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:toolUsage",
        "path" : "Procedure.extension",
        "sliceName" : "toolUsage",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/tool-usage-assessment"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:crewCoord",
        "path" : "Procedure.extension",
        "sliceName" : "crewCoord",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/crew-coordination"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Procedure.extension:emergencyResp",
        "path" : "Procedure.extension",
        "sliceName" : "emergencyResp",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/emergency-response"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
