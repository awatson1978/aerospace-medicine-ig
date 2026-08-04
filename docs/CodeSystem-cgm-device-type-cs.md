# CGM Device Type Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CGM Device Type Code System**

## CodeSystem: CGM Device Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/cgm-device-type-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:CGMDeviceTypeCS |

 
Types of continuous glucose monitoring devices 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CGMDeviceTypeVS](ValueSet-cgm-device-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cgm-device-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/cgm-device-type-cs",
  "version" : "0.6.2",
  "name" : "CGMDeviceTypeCS",
  "title" : "CGM Device Type Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Types of continuous glucose monitoring devices",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "dexcom-g7",
      "display" : "Dexcom G7",
      "definition" : "Dexcom G7 continuous glucose monitoring system"
    },
    {
      "code" : "libre-3",
      "display" : "FreeStyle Libre 3",
      "definition" : "Abbott FreeStyle Libre 3 flash glucose monitoring system"
    },
    {
      "code" : "guardian-4",
      "display" : "Guardian Sensor 4",
      "definition" : "Medtronic Guardian Sensor 4 CGM system"
    },
    {
      "code" : "eversense-e3",
      "display" : "Eversense E3",
      "definition" : "Senseonics Eversense E3 implantable CGM system"
    }
  ]
}

```
