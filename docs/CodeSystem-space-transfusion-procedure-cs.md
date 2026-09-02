# Space Transfusion Procedure Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Transfusion Procedure Code System**

## CodeSystem: Space Transfusion Procedure Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-transfusion-procedure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceTransfusionProcedureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Transfusion procedures adapted for spaceflight and austere environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceTransfusionProcedureVS](ValueSet-space-transfusion-procedure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-transfusion-procedure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-transfusion-procedure-cs",
  "version" : "0.7.0",
  "name" : "SpaceTransfusionProcedureCS",
  "title" : "Space Transfusion Procedure Code System",
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
  "description" : "Transfusion procedures adapted for spaceflight and austere environments",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "buddy-transfusion",
      "display" : "Buddy Transfusion",
      "definition" : "Direct crew-to-crew whole blood transfusion"
    },
    {
      "code" : "lyophilized-rbc-transfusion",
      "display" : "Lyophilized RBC Transfusion",
      "definition" : "Transfusion of reconstituted lyophilized red blood cells"
    },
    {
      "code" : "fdp-transfusion",
      "display" : "Freeze-Dried Plasma Transfusion",
      "definition" : "Transfusion of reconstituted freeze-dried plasma"
    },
    {
      "code" : "autologous-pre-deposit",
      "display" : "Autologous Pre-Deposit",
      "definition" : "Pre-mission autologous blood collection for mission use"
    }
  ]
}

```
