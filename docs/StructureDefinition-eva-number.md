# EVA Number - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Number**

## Extension: EVA Number 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-number | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:EVANumber |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md) and [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md)
* Examples for this Extension: [Procedure/Artemis-IV-EVA-1](Procedure-Artemis-IV-EVA-1.md), [Procedure/Artemis-IV-EVA-2](Procedure-Artemis-IV-EVA-2.md) and [Procedure/MarsEVA-Sol147](Procedure-MarsEVA-Sol147.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/eva-number)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eva-number.csv), [Excel](StructureDefinition-eva-number.xlsx), [Schematron](StructureDefinition-eva-number.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eva-number",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-number",
  "version" : "0.7.0",
  "name" : "EVANumber",
  "title" : "EVA Number",
  "status" : "active",
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
  "description" : "Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Procedure"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "EVA Number",
        "definition" : "Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-number"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "EVA sequential number (e.g., EVA-1, EVA-2)",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
