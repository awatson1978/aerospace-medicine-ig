# BFRT Device Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Device Type Code System**

## CodeSystem: BFRT Device Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/bfrt-device-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BFRTDeviceTypeCS |

 
Types of blood flow restriction devices 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BFRTDeviceTypeVS](ValueSet-bfrt-device-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bfrt-device-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/bfrt-device-type-cs",
  "version" : "0.6.0",
  "name" : "BFRTDeviceTypeCS",
  "title" : "BFRT Device Type Code System",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Types of blood flow restriction devices",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "pneumatic-cuff",
      "display" : "Pneumatic Cuff",
      "definition" : "Automated pneumatic occlusion cuff with controlled pressure"
    },
    {
      "code" : "intelligent-pressure-cuff",
      "display" : "Intelligent Pressure Cuff",
      "definition" : "Smart cuff with auto-regulation based on limb occlusion pressure"
    },
    {
      "code" : "elastic-wrap",
      "display" : "Elastic Wrap",
      "definition" : "Elastic band or wrap for manual blood flow restriction"
    }
  ]
}

```
