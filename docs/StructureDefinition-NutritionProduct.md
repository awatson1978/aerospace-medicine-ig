# Nutrition Product - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Nutrition Product**

## Resource Profile: Nutrition Product 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/NutritionProduct | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:NutritionProduct |

 
A product used for nutritional purposes. Backported from FHIR R5 for use in this R4 implementation guide. 

**Usages:**

* This Resource is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/NutritionProduct)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NutritionProduct.csv), [Excel](StructureDefinition-NutritionProduct.xlsx), [Schematron](StructureDefinition-NutritionProduct.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NutritionProduct",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/NutritionProduct",
  "version" : "0.5.12",
  "name" : "NutritionProduct",
  "title" : "Nutrition Product",
  "status" : "active",
  "date" : "2026-03-25T00:24:16-05:00",
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
  "description" : "A product used for nutritional purposes. Backported from FHIR R5 for use in this R4 implementation guide.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "NutritionProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DomainResource",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "NutritionProduct",
        "path" : "NutritionProduct",
        "short" : "Nutrition Product",
        "definition" : "A product used for nutritional purposes. Backported from FHIR R5 for use in this R4 implementation guide."
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
