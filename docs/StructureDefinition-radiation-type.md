# Space Radiation Type - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Radiation Type**

## Extension: Space Radiation Type 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-type | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:RadiationType |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Type of space radiation exposure

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Radiation Exposure](StructureDefinition-space-radiation-exposure.md)
* Examples for this Extension: [Observation/CumulativeDose-Transit](Observation-CumulativeDose-Transit.md) and [Observation/space-radiation-exposure-example](Observation-space-radiation-exposure-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radiation-type)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radiation-type.csv), [Excel](StructureDefinition-radiation-type.xlsx), [Schematron](StructureDefinition-radiation-type.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radiation-type",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-type",
  "version" : "0.7.0",
  "name" : "RadiationType",
  "title" : "Space Radiation Type",
  "status" : "draft",
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
  "description" : "Type of space radiation exposure",
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
        "short" : "Space Radiation Type",
        "definition" : "Type of space radiation exposure"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-type"
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
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/space-radiation-type-vs"
        }
      }
    ]
  }
}

```
