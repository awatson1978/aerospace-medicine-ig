# Hyperbaric Treatment Table - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Treatment Table**

## Extension: Hyperbaric Treatment Table 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/treatment-table | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:TreatmentTable |

Specific treatment table used (e.g., USN Table 6)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md) and [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/treatment-table)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-treatment-table.csv), [Excel](StructureDefinition-treatment-table.xlsx), [Schematron](StructureDefinition-treatment-table.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "treatment-table",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/treatment-table",
  "version" : "0.5.5",
  "name" : "TreatmentTable",
  "title" : "Hyperbaric Treatment Table",
  "status" : "draft",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "Specific treatment table used (e.g., USN Table 6)",
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
      "expression" : "Element"
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
        "short" : "Hyperbaric Treatment Table",
        "definition" : "Specific treatment table used (e.g., USN Table 6)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/treatment-table"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
