# Organ-on-Chip Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organ-on-Chip Type Code System**

## CodeSystem: Organ-on-Chip Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/organ-chip-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:OrganChipTypeCS |

 
Types of organ-on-chip (microphysiological systems) used in the AVATAR investigation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrganChipTypeVS](ValueSet-organ-chip-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "organ-chip-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/organ-chip-type-cs",
  "version" : "0.6.0",
  "name" : "OrganChipTypeCS",
  "title" : "Organ-on-Chip Type Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T15:07:02-06:00",
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
