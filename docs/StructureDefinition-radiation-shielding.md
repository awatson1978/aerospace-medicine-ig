# Radiation Shielding - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Shielding**

## Extension: Radiation Shielding 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-shielding | *Version*:0.5.4 |
| Active as of 2025-12-29 | *Computable Name*:RadiationShielding |

Shielding mass and composition for habitat or vehicle

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Habitat Location](StructureDefinition-habitat-location.md)
* Examples for this Extension: [Lunar Gateway - HALO Module](Location-Gateway-HALO-Module.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radiation-shielding)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radiation-shielding.csv), [Excel](StructureDefinition-radiation-shielding.xlsx), [Schematron](StructureDefinition-radiation-shielding.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radiation-shielding",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-shielding",
  "version" : "0.5.4",
  "name" : "RadiationShielding",
  "title" : "Radiation Shielding",
  "status" : "active",
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
  "description" : "Shielding mass and composition for habitat or vehicle",
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
      "expression" : "Device"
    },
    {
      "type" : "element",
      "expression" : "Location"
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
        "short" : "Radiation Shielding",
        "definition" : "Shielding mass and composition for habitat or vehicle"
      },
      {
        "id" : "Extension.extension:shieldingMass",
        "path" : "Extension.extension",
        "sliceName" : "shieldingMass",
        "short" : "Shielding mass (g/cm²)",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:shieldingMass.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:shieldingMass.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "shieldingMass"
      },
      {
        "id" : "Extension.extension:shieldingMass.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:shieldingComposition",
        "path" : "Extension.extension",
        "sliceName" : "shieldingComposition",
        "short" : "Shielding material composition",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:shieldingComposition.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:shieldingComposition.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "shieldingComposition"
      },
      {
        "id" : "Extension.extension:shieldingComposition.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-shielding"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
