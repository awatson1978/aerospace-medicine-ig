# Shielding Condition - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Shielding Condition**

## CodeSystem: Shielding Condition (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/shielding-condition-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ShieldingConditionCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Qualitative radiation shielding condition of the crew at the time of a radiation exposure measurement 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ShieldingConditionVS](ValueSet-shielding-condition-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "shielding-condition-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/shielding-condition-cs",
  "version" : "0.7.0",
  "name" : "ShieldingConditionCS",
  "title" : "Shielding Condition",
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
  "description" : "Qualitative radiation shielding condition of the crew at the time of a radiation exposure measurement",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "unshielded",
      "display" : "Unshielded",
      "definition" : "No structural or suit shielding beyond the ambient environment (e.g., open-space exposure)"
    },
    {
      "code" : "minimal-shielding",
      "display" : "Minimal Shielding",
      "definition" : "Suit fabric or thin structure only, roughly below 1 g/cm2 areal density (e.g., lunar surface EVA)"
    },
    {
      "code" : "nominal-shielding",
      "display" : "Nominal Shielding",
      "definition" : "Nominal vehicle or habitat structure, roughly 5-20 g/cm2 areal density (e.g., Orion crew module, Gateway HALO)"
    },
    {
      "code" : "enhanced-shielding",
      "display" : "Enhanced Shielding",
      "definition" : "Augmented shielding such as water walls, polyethylene, or regolith cover"
    },
    {
      "code" : "storm-shelter",
      "display" : "Storm Shelter",
      "definition" : "Crew located in a dedicated solar particle event storm shelter configuration"
    }
  ]
}

```
