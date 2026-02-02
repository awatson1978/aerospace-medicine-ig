# MRID Document Number - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Document Number**

## Extension: MRID Document Number 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/mrid-document-number | *Version*:0.5.8 |
| Active as of 2026-02-02 | *Computable Name*:MRIDDocumentNumber |

The official MRID document identifier (e.g., MEDB 3.1, MR004L, MR005S)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MRID Questionnaire Profile](StructureDefinition-mrid-questionnaire.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/mrid-document-number)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-mrid-document-number.csv), [Excel](StructureDefinition-mrid-document-number.xlsx), [Schematron](StructureDefinition-mrid-document-number.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mrid-document-number",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-document-number",
  "version" : "0.5.8",
  "name" : "MRIDDocumentNumber",
  "title" : "MRID Document Number",
  "status" : "active",
  "date" : "2026-02-02T11:11:20-06:00",
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
  "description" : "The official MRID document identifier (e.g., MEDB 3.1, MR004L, MR005S)",
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
      "expression" : "Questionnaire"
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
        "short" : "MRID Document Number",
        "definition" : "The official MRID document identifier (e.g., MEDB 3.1, MR004L, MR005S)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/mrid-document-number"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "min" : 1,
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
