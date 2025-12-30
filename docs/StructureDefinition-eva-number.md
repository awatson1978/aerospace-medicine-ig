# EVA Number - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EVA Number**

## Extension: EVA Number 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:EVANumber |

Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Extravehicular Activity Procedure](StructureDefinition-eva-procedure.md) and [Mars Extravehicular Activity Procedure](StructureDefinition-mars-eva-procedure.md)
* Examples for this Extension: [Procedure/Artemis-III-EVA-1](Procedure-Artemis-III-EVA-1.md), [Procedure/Artemis-III-EVA-2](Procedure-Artemis-III-EVA-2.md) and [Procedure/MarsEVA-Sol147](Procedure-MarsEVA-Sol147.md)

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
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number",
  "version" : "0.5.5",
  "name" : "EVANumber",
  "title" : "EVA Number",
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
  "description" : "Sequential EVA identifier within a mission (e.g., EVA-1, EVA-2)",
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
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/eva-number"
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
