# Underwater EVA Simulation - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Underwater EVA Simulation**

## Resource Profile: Underwater EVA Simulation 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-eva-simulation | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:UnderwaterEVASimulation |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Extravehicular activity simulation conducted underwater 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/underwater-eva-simulation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-underwater-eva-simulation.csv), [Excel](StructureDefinition-underwater-eva-simulation.xlsx), [Schematron](StructureDefinition-underwater-eva-simulation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "underwater-eva-simulation",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-eva-simulation",
  "version" : "0.7.0",
  "name" : "UnderwaterEVASimulation",
  "title" : "Underwater EVA Simulation",
  "status" : "draft",
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
  "baseDefinition" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-session",
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/suit-configuration"
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/tool-usage-assessment"
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/crew-coordination"
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
              "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-emergency-response-ext"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
