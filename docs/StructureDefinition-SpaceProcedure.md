# Space Health Procedure - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Health Procedure**

## Resource Profile: Space Health Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceProcedure | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceProcedure |

 
STUB - Health procedures specific to outerspace environment. 

**Usages:**

* Examples for this Profile: [Procedure/ProcedureBoneDensitometry](Procedure-ProcedureBoneDensitometry.md), [Procedure/ProcedureCompression](Procedure-ProcedureCompression.md), [Procedure/ProcedureDecompression](Procedure-ProcedureDecompression.md), [Procedure/ProcedureEyeExam](Procedure-ProcedureEyeExam.md)...Show 2 more,[Procedure/ProcedureHearingExam](Procedure-ProcedureHearingExam.md)and[Procedure/ProcedureUltrasound](Procedure-ProcedureUltrasound.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceProcedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceProcedure.csv), [Excel](StructureDefinition-SpaceProcedure.xlsx), [Schematron](StructureDefinition-SpaceProcedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceProcedure",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceProcedure",
  "version" : "0.5.6",
  "name" : "SpaceProcedure",
  "title" : "Space Health Procedure",
  "status" : "draft",
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
  "description" : "STUB - Health procedures specific to outerspace environment.",
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
