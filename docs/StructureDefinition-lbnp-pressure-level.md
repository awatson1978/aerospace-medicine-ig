# LBNP Pressure Level - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LBNP Pressure Level**

## Extension: LBNP Pressure Level 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lbnp-pressure-level | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:LBNPPressureLevel |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Applied lower body negative pressure level in mmHg (negative values: -10 to -50 mmHg)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md) and [Lower Body Negative Pressure Procedure](StructureDefinition-lower-body-negative-pressure-procedure.md)
* Examples for this Extension: [Observation/IJV-Flow-During-LBNP-001](Observation-IJV-Flow-During-LBNP-001.md) and [Procedure/LBNP-Session-Microgravity-001](Procedure-LBNP-Session-Microgravity-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/lbnp-pressure-level)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lbnp-pressure-level.csv), [Excel](StructureDefinition-lbnp-pressure-level.xlsx), [Schematron](StructureDefinition-lbnp-pressure-level.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lbnp-pressure-level",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lbnp-pressure-level",
  "version" : "0.7.0",
  "name" : "LBNPPressureLevel",
  "title" : "LBNP Pressure Level",
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
  "description" : "Applied lower body negative pressure level in mmHg (negative values: -10 to -50 mmHg)",
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
      "expression" : "Procedure"
    },
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
        "short" : "LBNP Pressure Level",
        "definition" : "Applied lower body negative pressure level in mmHg (negative values: -10 to -50 mmHg)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lbnp-pressure-level"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "LBNP pressure in mmHg (negative values)",
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
        "patternCode" : "mm[Hg]"
      }
    ]
  }
}

```
