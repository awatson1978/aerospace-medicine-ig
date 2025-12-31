# Space Nutrition Product - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Nutrition Product**

## Resource Profile: Space Nutrition Product 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-nutrition-product | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:SpaceNutritionProduct |

 
Space-rated food, supplements, and electrolytes with mission-specific properties 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-nutrition-product)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-nutrition-product.csv), [Excel](StructureDefinition-space-nutrition-product.xlsx), [Schematron](StructureDefinition-space-nutrition-product.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-nutrition-product",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-nutrition-product",
  "version" : "0.5.6",
  "name" : "SpaceNutritionProduct",
  "title" : "Space Nutrition Product",
  "status" : "active",
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
  "description" : "Space-rated food, supplements, and electrolytes with mission-specific properties",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.extension",
        "path" : "Medication.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Medication.extension:rehydrationRequirement",
        "path" : "Medication.extension",
        "sliceName" : "rehydrationRequirement",
        "short" : "Water needed for preparation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/rehydration-requirement"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Medication.extension:shelfLifeDecay",
        "path" : "Medication.extension",
        "sliceName" : "shelfLifeDecay",
        "short" : "Degradation rate in space conditions",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/shelf-life-decay"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/space-nutrition-type-vs"
        }
      },
      {
        "id" : "Medication.status",
        "path" : "Medication.status",
        "mustSupport" : true
      },
      {
        "id" : "Medication.manufacturer",
        "path" : "Medication.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/space-nutrition-type-vs"
        }
      },
      {
        "id" : "Medication.batch.lotNumber",
        "path" : "Medication.batch.lotNumber",
        "mustSupport" : true
      },
      {
        "id" : "Medication.batch.expirationDate",
        "path" : "Medication.batch.expirationDate",
        "mustSupport" : true
      }
    ]
  }
}

```
