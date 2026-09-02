# Space Health Procedure - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Health Procedure**

## Resource Profile: Space Health Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-procedure | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceProcedure |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Health procedures performed in the spaceflight environment. Constrains Procedure for use with astronaut and analog-crew records. 

**Usages:**

* Examples for this Profile: [Procedure/ProcedureBoneDensitometry](Procedure-ProcedureBoneDensitometry.md), [Procedure/ProcedureCompression](Procedure-ProcedureCompression.md), [Procedure/ProcedureDecompression](Procedure-ProcedureDecompression.md), [Procedure/ProcedureEyeExam](Procedure-ProcedureEyeExam.md)...Show 2 more,[Procedure/ProcedureHearingExam](Procedure-ProcedureHearingExam.md)and[Procedure/ProcedureUltrasound](Procedure-ProcedureUltrasound.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-procedure.csv), [Excel](StructureDefinition-space-procedure.xlsx), [Schematron](StructureDefinition-space-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-procedure",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-procedure",
  "version" : "0.7.0",
  "name" : "SpaceProcedure",
  "title" : "Space Health Procedure",
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
  "description" : "Health procedures performed in the spaceflight environment. Constrains Procedure for use with astronaut and analog-crew records.",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Procedure",
        "path" : "Procedure"
      }
    ]
  }
}

```
