# Inventory Risk Flag - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Inventory Risk Flag**

## Extension: Inventory Risk Flag 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/inventory-risk-flag | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:InventoryRiskFlag |

Risk level for nutrition inventory status

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Nutrition Inventory Item](StructureDefinition-space-nutrition-inventory-item.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/inventory-risk-flag)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-inventory-risk-flag.csv), [Excel](StructureDefinition-inventory-risk-flag.xlsx), [Schematron](StructureDefinition-inventory-risk-flag.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "inventory-risk-flag",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/inventory-risk-flag",
  "version" : "0.4.2",
  "name" : "InventoryRiskFlag",
  "title" : "Inventory Risk Flag",
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
  "description" : "Risk level for nutrition inventory status",
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
      "expression" : "InventoryItem"
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
        "short" : "Inventory Risk Flag",
        "definition" : "Risk level for nutrition inventory status"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/inventory-risk-flag"
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
          "strength" : "required",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/nutrition-inventory-status-vs"
        }
      }
    ]
  }
}

```
