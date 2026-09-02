# Expanded Specimen Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Expanded Specimen Type Code System**

## CodeSystem: Expanded Specimen Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/expanded-specimen-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ExpandedSpecimenTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Specimen types for astronaut biobank and multi-omics analysis 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExpandedSpecimenTypeVS](ValueSet-expanded-specimen-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "expanded-specimen-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/expanded-specimen-type-cs",
  "version" : "0.7.0",
  "name" : "ExpandedSpecimenTypeCS",
  "title" : "Expanded Specimen Type Code System",
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
  "description" : "Specimen types for astronaut biobank and multi-omics analysis",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "dried-blood-spot",
      "display" : "Dried Blood Spot",
      "definition" : "Capillary blood collected on filter paper for storage and analysis"
    },
    {
      "code" : "extracellular-vesicle",
      "display" : "Extracellular Vesicle",
      "definition" : "Isolated extracellular vesicles from blood or other biofluids"
    },
    {
      "code" : "microbiome-swab-nasal",
      "display" : "Nasal Microbiome Swab",
      "definition" : "Nasal swab for microbiome analysis"
    },
    {
      "code" : "microbiome-swab-skin",
      "display" : "Skin Microbiome Swab",
      "definition" : "Skin swab for microbiome analysis"
    },
    {
      "code" : "microbiome-swab-oral",
      "display" : "Oral Microbiome Swab",
      "definition" : "Oral swab for microbiome analysis"
    },
    {
      "code" : "microbiome-swab-gut",
      "display" : "Gut Microbiome Sample",
      "definition" : "Fecal sample for gut microbiome analysis"
    },
    {
      "code" : "hair-follicle",
      "display" : "Hair Follicle",
      "definition" : "Hair follicle sample for DNA or biomarker analysis"
    },
    {
      "code" : "exhaled-breath-condensate",
      "display" : "Exhaled Breath Condensate",
      "definition" : "Condensed exhaled breath for volatile organic compound analysis"
    }
  ]
}

```
