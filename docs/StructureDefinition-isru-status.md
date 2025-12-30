# ISRU System Status - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU System Status**

## Extension: ISRU System Status 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/isru-status | *Version*:0.5.2 |
| Active as of 2025-12-29 | *Computable Name*:ISRUStatus |

In-Situ Resource Utilization system status and propellant production levels

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/isru-status)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-isru-status.csv), [Excel](StructureDefinition-isru-status.xlsx), [Schematron](StructureDefinition-isru-status.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "isru-status",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isru-status",
  "version" : "0.5.2",
  "name" : "ISRUStatus",
  "title" : "ISRU System Status",
  "status" : "active",
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "In-Situ Resource Utilization system status and propellant production levels",
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
    },
    {
      "type" : "element",
      "expression" : "Device"
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
        "short" : "ISRU System Status",
        "definition" : "In-Situ Resource Utilization system status and propellant production levels"
      },
      {
        "id" : "Extension.extension:productionStatus",
        "path" : "Extension.extension",
        "sliceName" : "productionStatus",
        "short" : "ISRU production status (nominal, degraded, failed)",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:productionStatus.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:productionStatus.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "productionStatus"
      },
      {
        "id" : "Extension.extension:productionStatus.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "Extension.extension:propellantLevel",
        "path" : "Extension.extension",
        "sliceName" : "propellantLevel",
        "short" : "Cumulative propellant produced (kg)",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:propellantLevel.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:propellantLevel.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "propellantLevel"
      },
      {
        "id" : "Extension.extension:propellantLevel.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/isru-status"
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
