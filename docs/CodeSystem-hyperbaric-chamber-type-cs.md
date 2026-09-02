# Hyperbaric Chamber Types - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Hyperbaric Chamber Types**

## CodeSystem: Hyperbaric Chamber Types (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hyperbaric-chamber-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:HyperbaricChamberTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of hyperbaric chambers 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HyperbaricChamberTypeVS](ValueSet-hyperbaric-chamber-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "hyperbaric-chamber-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/hyperbaric-chamber-type-cs",
  "version" : "0.7.0",
  "name" : "HyperbaricChamberTypeCS",
  "title" : "Hyperbaric Chamber Types",
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
  "description" : "Types of hyperbaric chambers",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "monoplace",
      "display" : "Monoplace Chamber"
    },
    {
      "code" : "multiplace",
      "display" : "Multiplace Chamber"
    },
    {
      "code" : "portable",
      "display" : "Portable Chamber"
    },
    {
      "code" : "research",
      "display" : "Research Chamber"
    },
    {
      "code" : "veterinary",
      "display" : "Veterinary Chamber"
    }
  ]
}

```
