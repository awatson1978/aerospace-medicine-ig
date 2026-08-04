# Space Transfusion Procedure Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Transfusion Procedure Code System**

## CodeSystem: Space Transfusion Procedure Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-transfusion-procedure-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceTransfusionProcedureCS |

 
Transfusion procedures adapted for spaceflight and austere environments 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceTransfusionProcedureVS](ValueSet-space-transfusion-procedure-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-transfusion-procedure-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-transfusion-procedure-cs",
  "version" : "0.6.2",
  "name" : "SpaceTransfusionProcedureCS",
  "title" : "Space Transfusion Procedure Code System",
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
  "description" : "Transfusion procedures adapted for spaceflight and austere environments",
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
