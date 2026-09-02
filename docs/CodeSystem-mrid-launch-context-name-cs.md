# MRID Launch Context Name CodeSystem - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Launch Context Name CodeSystem**

## CodeSystem: MRID Launch Context Name CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mrid-launch-context-name-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MRIDLaunchContextNameCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Names for launch context variables 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MRIDLaunchContextNameVS](ValueSet-mrid-launch-context-name-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mrid-launch-context-name-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mrid-launch-context-name-cs",
  "version" : "0.7.0",
  "name" : "MRIDLaunchContextNameCS",
  "title" : "MRID Launch Context Name CodeSystem",
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
  "description" : "Names for launch context variables",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "patient",
      "display" : "Patient",
      "definition" : "The astronaut/crewmember subject"
    },
    {
      "code" : "encounter",
      "display" : "Encounter",
      "definition" : "The mission or medical encounter"
    },
    {
      "code" : "user",
      "display" : "User",
      "definition" : "The user completing the questionnaire"
    }
  ]
}

```
