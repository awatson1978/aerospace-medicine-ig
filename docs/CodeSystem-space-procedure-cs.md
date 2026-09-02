# Space Procedure Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Procedure Code System**

## CodeSystem: Space Procedure Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-procedure-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceProcedureCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Operational procedures performed in spaceflight that have no SNOMED CT equivalent 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-procedure-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-procedure-cs",
  "version" : "0.7.0",
  "name" : "SpaceProcedureCS",
  "title" : "Space Procedure Code System",
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
  "description" : "Operational procedures performed in spaceflight that have no SNOMED CT equivalent",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "eva",
      "display" : "Extravehicular Activity",
      "definition" : "Crewed activity outside the pressurized volume of a spacecraft or habitat"
    },
    {
      "code" : "vehicle-decompression",
      "display" : "Vehicle Compartment Decompression",
      "definition" : "Controlled reduction of cabin or airlock pressure"
    },
    {
      "code" : "vehicle-repressurization",
      "display" : "Vehicle Compartment Repressurization",
      "definition" : "Controlled restoration of cabin or airlock pressure"
    }
  ]
}

```
