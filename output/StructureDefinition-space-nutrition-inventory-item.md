# Space Nutrition Inventory Item - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Nutrition Inventory Item**

## Resource Profile: Space Nutrition Inventory Item 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-nutrition-inventory-item | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:SpaceNutritionInventoryItem |

 
Tracks food stores aboard spacecraft or planetary habitats 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-nutrition-inventory-item)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-nutrition-inventory-item.csv), [Excel](StructureDefinition-space-nutrition-inventory-item.xlsx), [Schematron](StructureDefinition-space-nutrition-inventory-item.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-nutrition-inventory-item",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-nutrition-inventory-item",
  "version" : "0.4.2",
  "name" : "SpaceNutritionInventoryItem",
  "title" : "Space Nutrition Inventory Item",
  "status" : "active",
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Tracks food stores aboard spacecraft or planetary habitats",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Basic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Basic",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Basic",
        "path" : "Basic"
      },
      {
        "id" : "Basic.extension",
        "path" : "Basic.extension",
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
        "id" : "Basic.extension:inventoryRiskFlag",
        "path" : "Basic.extension",
        "sliceName" : "inventoryRiskFlag",
        "short" : "Inventory risk status",
        "definition" : "Risk level for current inventory status (adequate, low, critical, expired)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/inventory-risk-flag"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Basic.code",
        "path" : "Basic.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "226379006",
              "display" : "Nutrition and dietetics procedure (procedure)"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Basic.subject",
        "path" : "Basic.subject",
        "short" : "Spacecraft or habitat location",
        "mustSupport" : true
      }
    ]
  }
}

```
