# LBNP Countermeasure System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LBNP Countermeasure System**

## Resource Profile: LBNP Countermeasure System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/lbnp-countermeasure-system | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:LBNPCountermeasureSystem |

 
Lower Body Negative Pressure device with configurable pressure range 

**Usages:**

* Examples for this Profile: [Device/LBNP-Chamber-001](Device-LBNP-Chamber-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/lbnp-countermeasure-system)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lbnp-countermeasure-system.csv), [Excel](StructureDefinition-lbnp-countermeasure-system.xlsx), [Schematron](StructureDefinition-lbnp-countermeasure-system.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lbnp-countermeasure-system",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/lbnp-countermeasure-system",
  "version" : "0.6.0",
  "name" : "LBNPCountermeasureSystem",
  "title" : "LBNP Countermeasure System",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Lower Body Negative Pressure device with configurable pressure range",
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
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.extension",
        "path" : "Device.extension",
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
        "id" : "Device.extension:missionContext",
        "path" : "Device.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Device.status",
        "path" : "Device.status",
        "mustSupport" : true
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "mustSupport" : true
      },
      {
        "id" : "Device.modelNumber",
        "path" : "Device.modelNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "short" : "LBNP device type",
        "mustSupport" : true
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "short" : "Device properties including pressure range",
        "mustSupport" : true
      },
      {
        "id" : "Device.patient",
        "path" : "Device.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
