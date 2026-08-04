# Space Blood Product Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Blood Product Code System**

## CodeSystem: Space Blood Product Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-blood-product-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceBloodProductCS |

 
Blood products adapted for spaceflight and austere environment use 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceBloodProductVS](ValueSet-space-blood-product-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-blood-product-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-blood-product-cs",
  "version" : "0.6.2",
  "name" : "SpaceBloodProductCS",
  "title" : "Space Blood Product Code System",
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
  "description" : "Blood products adapted for spaceflight and austere environment use",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "lyophilized-rbc",
      "display" : "Lyophilized Red Blood Cells",
      "definition" : "Freeze-dried RBCs for long-duration storage and reconstitution"
    },
    {
      "code" : "fresh-whole-blood",
      "display" : "Fresh Whole Blood",
      "definition" : "Warm fresh whole blood from buddy donor"
    },
    {
      "code" : "freeze-dried-plasma",
      "display" : "Freeze-Dried Plasma",
      "definition" : "Lyophilized plasma for reconstitution"
    },
    {
      "code" : "rehydrated-rbc",
      "display" : "Rehydrated Red Blood Cells",
      "definition" : "Reconstituted lyophilized RBCs ready for transfusion"
    }
  ]
}

```
