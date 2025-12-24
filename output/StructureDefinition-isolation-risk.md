# Isolation Risk Factor - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Isolation Risk Factor**

## Extension: Isolation Risk Factor 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:IsolationRisk |

Captures isolation and confinement risk factors affecting behavioral health

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Psychological Countermeasure Activity](StructureDefinition-psychological-countermeasure-activity.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/isolation-risk)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-isolation-risk.csv), [Excel](StructureDefinition-isolation-risk.xlsx), [Schematron](StructureDefinition-isolation-risk.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "isolation-risk",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk",
  "version" : "0.4.2",
  "name" : "IsolationRisk",
  "title" : "Isolation Risk Factor",
  "status" : "active",
  "date" : "2025-12-24T15:11:38-07:00",
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
  "description" : "Captures isolation and confinement risk factors affecting behavioral health",
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
        "short" : "Isolation Risk Factor",
        "definition" : "Captures isolation and confinement risk factors affecting behavioral health"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isolation-risk"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/uv/aerospace/ValueSet/isolation-syndrome-factors-vs"
        }
      }
    ]
  }
}

```
