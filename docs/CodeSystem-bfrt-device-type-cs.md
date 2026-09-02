# BFRT Device Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BFRT Device Type Code System**

## CodeSystem: BFRT Device Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-device-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BFRTDeviceTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of blood flow restriction devices 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BFRTDeviceTypeVS](ValueSet-bfrt-device-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bfrt-device-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-device-type-cs",
  "version" : "0.7.0",
  "name" : "BFRTDeviceTypeCS",
  "title" : "BFRT Device Type Code System",
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
  "description" : "Types of blood flow restriction devices",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
