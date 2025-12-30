# Oxygen Concentration - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oxygen Concentration**

## Extension: Oxygen Concentration 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration | *Version*:0.5.4 |
| Draft as of 2025-12-29 | *Computable Name*:OxygenConcentration |

Oxygen concentration during treatment

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Hyperbaric Treatment](StructureDefinition-HyperbaricTreatment.md) and [Enhanced Hyperbaric Treatment](StructureDefinition-enhanced-hyperbaric-treatment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/oxygen-concentration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oxygen-concentration.csv), [Excel](StructureDefinition-oxygen-concentration.xlsx), [Schematron](StructureDefinition-oxygen-concentration.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oxygen-concentration",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration",
  "version" : "0.5.4",
  "name" : "OxygenConcentration",
  "title" : "Oxygen Concentration",
  "status" : "draft",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Oxygen concentration during treatment",
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
        "short" : "Oxygen Concentration",
        "definition" : "Oxygen concentration during treatment"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration"
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
        "id" : "Extension.value[x].unit",
        "path" : "Extension.value[x].unit",
        "patternString" : "%"
      }
    ]
  }
}

```
