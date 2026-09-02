# Nutrition Product (logical model) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Product (logical model)**

## Logical Model: Nutrition Product (logical model) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/NutritionProduct | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:NutritionProduct |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
A product used for nutritional purposes. Logical model mirroring the FHIR R5 NutritionProduct resource so that R4 implementations can exchange space food-item catalogues; instances carry resourceType NutritionProduct. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/NutritionProduct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NutritionProduct.csv), [Excel](StructureDefinition-NutritionProduct.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NutritionProduct",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
      "valueBoolean" : true
    }
  ],
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/NutritionProduct",
  "version" : "0.7.0",
  "name" : "NutritionProduct",
  "title" : "Nutrition Product (logical model)",
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
  "description" : "A product used for nutritional purposes. Logical model mirroring the FHIR R5 NutritionProduct resource so that R4 implementations can exchange space food-item catalogues; instances carry resourceType NutritionProduct.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/NutritionProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "NutritionProduct",
        "path" : "NutritionProduct",
        "short" : "Nutrition Product (logical model)",
        "definition" : "A product used for nutritional purposes. Logical model mirroring the FHIR R5 NutritionProduct resource so that R4 implementations can exchange space food-item catalogues; instances carry resourceType NutritionProduct."
      },
      {
        "id" : "NutritionProduct.id",
        "path" : "NutritionProduct.id",
        "short" : "Logical id of this product record",
        "definition" : "Logical id of this product record",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "id"
          }
        ]
      },
      {
        "id" : "NutritionProduct.meta",
        "path" : "NutritionProduct.meta",
        "short" : "Metadata about the record, including provenance (meta.source) and the HTEST tag",
        "definition" : "Metadata about the record, including provenance (meta.source) and the HTEST tag",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Meta"
          }
        ]
      },
      {
        "id" : "NutritionProduct.status",
        "path" : "NutritionProduct.status",
        "short" : "active | inactive | entered-in-error",
        "definition" : "active | inactive | entered-in-error",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "NutritionProduct.code",
        "path" : "NutritionProduct.code",
        "short" : "A code that identifies the product",
        "definition" : "A code that identifies the product",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "NutritionProduct.category",
        "path" : "NutritionProduct.category",
        "short" : "Broad product groups or categories",
        "definition" : "Broad product groups or categories",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "NutritionProduct.note",
        "path" : "NutritionProduct.note",
        "short" : "Comments made about the product",
        "definition" : "Comments made about the product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Annotation"
          }
        ]
      },
      {
        "id" : "NutritionProduct.instance",
        "path" : "NutritionProduct.instance",
        "short" : "One or more physical instances or occurrences of the nutrition product",
        "definition" : "One or more physical instances or occurrences of the nutrition product",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "NutritionProduct.instance.name",
        "path" : "NutritionProduct.instance.name",
        "short" : "The name for the specific product",
        "definition" : "The name for the specific product",
        "min" : 0,
        "max" : "1",
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
