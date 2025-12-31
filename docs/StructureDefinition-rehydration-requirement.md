# Rehydration Requirement - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rehydration Requirement**

## Extension: Rehydration Requirement 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/rehydration-requirement | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:RehydrationRequirement |

Amount of water required to prepare space food

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Nutrition Product](StructureDefinition-space-nutrition-product.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/rehydration-requirement)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-rehydration-requirement.csv), [Excel](StructureDefinition-rehydration-requirement.xlsx), [Schematron](StructureDefinition-rehydration-requirement.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "rehydration-requirement",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/rehydration-requirement",
  "version" : "0.5.6",
  "name" : "RehydrationRequirement",
  "title" : "Rehydration Requirement",
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
  "description" : "Amount of water required to prepare space food",
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
        "short" : "Rehydration Requirement",
        "definition" : "Amount of water required to prepare space food"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/rehydration-requirement"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/water-volume-units-vs"
        }
      }
    ]
  }
}

```
