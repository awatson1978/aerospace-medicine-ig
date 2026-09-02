# Organ-on-Chip Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organ-on-Chip Type Code System**

## CodeSystem: Organ-on-Chip Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/organ-chip-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:OrganChipTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of organ-on-chip (microphysiological systems) used in the AVATAR investigation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrganChipTypeVS](ValueSet-organ-chip-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "organ-chip-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/organ-chip-type-cs",
  "version" : "0.7.0",
  "name" : "OrganChipTypeCS",
  "title" : "Organ-on-Chip Type Code System",
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
  "description" : "Types of organ-on-chip (microphysiological systems) used in the AVATAR investigation",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "bone-marrow-chip",
      "display" : "Bone Marrow Chip",
      "definition" : "Microfluidic bone marrow model for hematopoiesis studies"
    },
    {
      "code" : "immune-chip",
      "display" : "Immune Chip",
      "definition" : "Microfluidic immune system model"
    },
    {
      "code" : "gut-chip",
      "display" : "Gut Chip",
      "definition" : "Intestinal epithelium microfluidic model"
    },
    {
      "code" : "lung-chip",
      "display" : "Lung Chip",
      "definition" : "Alveolar-capillary interface microfluidic model"
    },
    {
      "code" : "kidney-chip",
      "display" : "Kidney Chip",
      "definition" : "Renal tubular epithelium microfluidic model"
    },
    {
      "code" : "bbb-chip",
      "display" : "Blood-Brain Barrier Chip",
      "definition" : "Blood-brain barrier microfluidic model"
    }
  ]
}

```
