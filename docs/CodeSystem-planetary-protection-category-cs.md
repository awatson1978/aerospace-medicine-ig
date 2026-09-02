# Planetary Protection Category Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Planetary Protection Category Code System**

## CodeSystem: Planetary Protection Category Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/planetary-protection-category-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:PlanetaryProtectionCategoryCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
COSPAR planetary protection categories for mission classification 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PlanetaryProtectionCategoryVS](ValueSet-planetary-protection-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "planetary-protection-category-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/planetary-protection-category-cs",
  "version" : "0.7.0",
  "name" : "PlanetaryProtectionCategoryCS",
  "title" : "Planetary Protection Category Code System",
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
  "description" : "COSPAR planetary protection categories for mission classification",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "category-i",
      "display" : "Category I",
      "definition" : "Missions to target bodies not of direct interest for understanding chemical evolution or origin of life (e.g., undifferentiated metamorphosed asteroids)"
    },
    {
      "code" : "category-ii",
      "display" : "Category II",
      "definition" : "Missions to target bodies of significant interest but low contamination concern (e.g., comets, Jupiter, Saturn)"
    },
    {
      "code" : "category-iii",
      "display" : "Category III",
      "definition" : "Flyby and orbiter missions to target bodies of chemical evolution and/or origin-of-life interest (e.g., Mars, Europa)"
    },
    {
      "code" : "category-iv",
      "display" : "Category IV",
      "definition" : "Lander and probe missions to target bodies of chemical evolution and/or origin-of-life interest"
    },
    {
      "code" : "category-v",
      "display" : "Category V",
      "definition" : "All Earth-return missions; subcategories for restricted and unrestricted return"
    }
  ]
}

```
