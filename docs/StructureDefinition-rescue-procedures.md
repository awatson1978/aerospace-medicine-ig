# Rescue Procedures Used - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rescue Procedures Used**

## Extension: Rescue Procedures Used 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/rescue-procedures | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:RescueProcedures |

Specific rescue procedures and techniques employed

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/rescue-procedures)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rescue-procedures.csv), [Excel](StructureDefinition-rescue-procedures.xlsx), [Schematron](StructureDefinition-rescue-procedures.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rescue-procedures",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/rescue-procedures",
  "version" : "0.5.6",
  "name" : "RescueProcedures",
  "title" : "Rescue Procedures Used",
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
  "description" : "Specific rescue procedures and techniques employed",
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
        "short" : "Rescue Procedures Used",
        "definition" : "Specific rescue procedures and techniques employed"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/rescue-procedures"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      }
    ]
  }
}

```
