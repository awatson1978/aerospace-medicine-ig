# Space Anemia Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Anemia Code System**

## CodeSystem: Space Anemia Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-anemia-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceAnemiaCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Parameters for spaceflight-associated anemia assessment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceAnemiaVS](ValueSet-space-anemia-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-anemia-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-anemia-cs",
  "version" : "0.7.0",
  "name" : "SpaceAnemiaCS",
  "title" : "Space Anemia Code System",
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
  "description" : "Parameters for spaceflight-associated anemia assessment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "rbc-mass",
      "display" : "Red Blood Cell Mass",
      "definition" : "Total red blood cell volume measurement"
    },
    {
      "code" : "co-breath-test",
      "display" : "CO Breath Test",
      "definition" : "Carbon monoxide breath test for RBC destruction rate"
    }
  ]
}

```
