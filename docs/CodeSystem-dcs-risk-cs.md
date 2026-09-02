# Decompression Sickness Risk Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Decompression Sickness Risk Code System**

## CodeSystem: Decompression Sickness Risk Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/dcs-risk-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:DCSRiskCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Decompression sickness risk factors and outcomes for EVA risk assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DCSRiskVS](ValueSet-dcs-risk-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "dcs-risk-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/dcs-risk-cs",
  "version" : "0.7.0",
  "name" : "DCSRiskCS",
  "title" : "Decompression Sickness Risk Code System",
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
  "description" : "Decompression sickness risk factors and outcomes for EVA risk assessment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "dcs-type-i",
      "display" : "DCS Type I",
      "definition" : "Musculoskeletal DCS (joint pain, limb pain)"
    },
    {
      "code" : "dcs-type-ii",
      "display" : "DCS Type II",
      "definition" : "Neurological or cardiopulmonary DCS"
    },
    {
      "code" : "vge",
      "display" : "Venous Gas Emboli (VGE)",
      "definition" : "Detectable venous gas bubbles"
    },
    {
      "code" : "pfo-status",
      "display" : "Patent Foramen Ovale Status",
      "definition" : "PFO present/absent affecting right-to-left shunt risk"
    },
    {
      "code" : "prebreathe-protocol",
      "display" : "Prebreathe Protocol",
      "definition" : "Oxygen prebreathe protocol used before EVA"
    }
  ]
}

```
