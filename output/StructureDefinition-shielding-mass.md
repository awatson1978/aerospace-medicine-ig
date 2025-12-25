# Shielding Mass - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Shielding Mass**

## Extension: Shielding Mass 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/shielding-mass | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:ShieldingMass |

Effective shielding mass in g/cm²

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/shielding-mass)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-shielding-mass.csv), [Excel](StructureDefinition-shielding-mass.xlsx), [Schematron](StructureDefinition-shielding-mass.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "shielding-mass",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/shielding-mass",
  "version" : "0.4.2",
  "name" : "ShieldingMass",
  "title" : "Shielding Mass",
  "status" : "draft",
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
  "description" : "Effective shielding mass in g/cm²",
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
      "expression" : "Observation"
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
        "short" : "Shielding Mass",
        "definition" : "Effective shielding mass in g/cm²"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/shielding-mass"
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
        "patternCode" : "g/cm2"
      }
    ]
  }
}

```
