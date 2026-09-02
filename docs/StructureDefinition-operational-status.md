# Operational Status - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Operational Status**

## Extension: Operational Status 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/operational-status | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:OperationalStatus |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Current operational status of the facility

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/operational-status)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-operational-status.csv), [Excel](StructureDefinition-operational-status.xlsx), [Schematron](StructureDefinition-operational-status.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "operational-status",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/operational-status",
  "version" : "0.7.0",
  "name" : "OperationalStatus",
  "title" : "Operational Status",
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
  "description" : "Current operational status of the facility",
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
        "short" : "Operational Status",
        "definition" : "Current operational status of the facility"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/operational-status"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/operational-status-vs"
        }
      }
    ]
  }
}

```
