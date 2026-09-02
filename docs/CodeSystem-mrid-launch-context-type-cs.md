# MRID Launch Context Type CodeSystem - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MRID Launch Context Type CodeSystem**

## CodeSystem: MRID Launch Context Type CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mrid-launch-context-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MRIDLaunchContextTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
FHIR resource types for launch context 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MRIDLaunchContextTypeVS](ValueSet-mrid-launch-context-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mrid-launch-context-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mrid-launch-context-type-cs",
  "version" : "0.7.0",
  "name" : "MRIDLaunchContextTypeCS",
  "title" : "MRID Launch Context Type CodeSystem",
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
  "description" : "FHIR resource types for launch context",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "Patient",
      "display" : "Patient",
      "definition" : "Patient resource type"
    },
    {
      "code" : "Encounter",
      "display" : "Encounter",
      "definition" : "Encounter resource type"
    },
    {
      "code" : "Practitioner",
      "display" : "Practitioner",
      "definition" : "Practitioner resource type"
    }
  ]
}

```
