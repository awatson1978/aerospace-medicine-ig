# Biomanufacturing Process Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biomanufacturing Process Code System**

## CodeSystem: Biomanufacturing Process Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-process-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BiomanufacturingProcessCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Biomanufacturing processes for in-situ resource utilization and life support 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BiomanufacturingProcessVS](ValueSet-biomanufacturing-process-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "biomanufacturing-process-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-process-cs",
  "version" : "0.7.0",
  "name" : "BiomanufacturingProcessCS",
  "title" : "Biomanufacturing Process Code System",
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
  "description" : "Biomanufacturing processes for in-situ resource utilization and life support",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "algae-photobioreactor",
      "display" : "Algae Photobioreactor",
      "definition" : "Photosynthetic algae cultivation for O2 production and biomass"
    },
    {
      "code" : "fermentation-bioreactor",
      "display" : "Fermentation Bioreactor",
      "definition" : "Microbial fermentation for food, pharmaceuticals, or biomaterials"
    },
    {
      "code" : "isru-processor",
      "display" : "ISRU Processor",
      "definition" : "In-situ resource utilization bioprocessing of regolith or atmosphere"
    },
    {
      "code" : "biocement-production",
      "display" : "Biocement Production",
      "definition" : "Microbially-induced calcium carbonate precipitation for construction"
    },
    {
      "code" : "pharmaceutical-synthesis",
      "display" : "Pharmaceutical Synthesis",
      "definition" : "On-demand biopharmaceutical production using engineered organisms"
    },
    {
      "code" : "biomass-conversion",
      "display" : "Biomass Conversion",
      "definition" : "Conversion of waste biomass to usable products"
    }
  ]
}

```
