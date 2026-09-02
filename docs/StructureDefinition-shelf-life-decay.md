# Shelf Life Decay - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Shelf Life Decay**

## Extension: Shelf Life Decay 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/shelf-life-decay | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ShelfLifeDecay |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

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
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/shelf-life-decay",
  "version" : "0.7.0",
  "name" : "ShelfLifeDecay",
  "title" : "Shelf Life Decay",
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
  "description" : "Degradation of nutritional value over time in space conditions",
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
      "expression" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/NutritionProduct"
    },
    {
      "type" : "element",
      "expression" : "Medication"
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
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/shelf-life-decay"
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
