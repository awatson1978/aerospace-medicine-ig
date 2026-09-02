# CGM Device Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CGM Device Type Code System**

## CodeSystem: CGM Device Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-device-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:CGMDeviceTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of continuous glucose monitoring devices 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CGMDeviceTypeVS](ValueSet-cgm-device-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "cgm-device-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-device-type-cs",
  "version" : "0.7.0",
  "name" : "CGMDeviceTypeCS",
  "title" : "CGM Device Type Code System",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Types of continuous glucose monitoring devices",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
