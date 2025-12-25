# Shelf Life Decay - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Shelf Life Decay**

## Extension: Shelf Life Decay 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/shelf-life-decay | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:ShelfLifeDecay |

Degradation of nutritional value over time in space conditions

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Nutrition Product](StructureDefinition-space-nutrition-product.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/shelf-life-decay)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-shelf-life-decay.csv), [Excel](StructureDefinition-shelf-life-decay.xlsx), [Schematron](StructureDefinition-shelf-life-decay.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "shelf-life-decay",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/shelf-life-decay",
  "version" : "0.4.2",
  "name" : "ShelfLifeDecay",
  "title" : "Shelf Life Decay",
  "status" : "active",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Degradation of nutritional value over time in space conditions",
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
      "expression" : "NutritionProduct"
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
        "short" : "Shelf Life Decay",
        "definition" : "Degradation of nutritional value over time in space conditions"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/shelf-life-decay"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Decay rate as percentage per time unit",
        "type" : [
          {
            "code" : "Ratio"
          }
        ]
      }
    ]
  }
}

```
