# Space Omics Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Omics Type Code System**

## CodeSystem: Space Omics Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-omics-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceOmicsTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Multi-omics analysis types for astronaut molecular profiling 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceOmicsTypeVS](ValueSet-space-omics-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-omics-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-omics-type-cs",
  "version" : "0.7.0",
  "name" : "SpaceOmicsTypeCS",
  "title" : "Space Omics Type Code System",
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
  "description" : "Multi-omics analysis types for astronaut molecular profiling",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "genomics",
      "display" : "Genomics",
      "definition" : "Whole genome sequencing or genotyping analysis"
    },
    {
      "code" : "transcriptomics",
      "display" : "Transcriptomics",
      "definition" : "RNA sequencing or gene expression profiling"
    },
    {
      "code" : "proteomics",
      "display" : "Proteomics",
      "definition" : "Protein expression and modification analysis"
    },
    {
      "code" : "metabolomics",
      "display" : "Metabolomics",
      "definition" : "Small molecule metabolite profiling"
    },
    {
      "code" : "epigenomics",
      "display" : "Epigenomics",
      "definition" : "DNA methylation and histone modification analysis"
    },
    {
      "code" : "microbiomics",
      "display" : "Microbiomics",
      "definition" : "Microbiome composition and diversity analysis"
    },
    {
      "code" : "lipidomics",
      "display" : "Lipidomics",
      "definition" : "Lipid species profiling and quantification"
    }
  ]
}

```
