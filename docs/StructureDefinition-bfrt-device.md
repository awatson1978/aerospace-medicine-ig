# BFRT Device - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Device**

## Resource Profile: BFRT Device 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/bfrt-device | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BFRTDevice |

 
Blood flow restriction training occlusion cuff device 

**Usages:**

* Examples for this Profile: [Device/BFRT-Pneumatic-Cuff-001](Device-BFRT-Pneumatic-Cuff-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/bfrt-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bfrt-device.csv), [Excel](StructureDefinition-bfrt-device.xlsx), [Schematron](StructureDefinition-bfrt-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bfrt-device",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/bfrt-device",
  "version" : "0.6.0",
  "name" : "BFRTDevice",
  "title" : "BFRT Device",
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
  "description" : "Blood flow restriction training occlusion cuff device",
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
        "short" : "Type of BFRT device",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/bfrt-device-type-vs"
        }
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
