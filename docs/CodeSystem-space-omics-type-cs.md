# Space Omics Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Omics Type Code System**

## CodeSystem: Space Omics Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/space-omics-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceOmicsTypeCS |

 
Multi-omics analysis types for astronaut molecular profiling 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SpaceOmicsTypeVS](ValueSet-space-omics-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "space-omics-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/space-omics-type-cs",
  "version" : "0.6.0",
  "name" : "SpaceOmicsTypeCS",
  "title" : "Space Omics Type Code System",
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
  "description" : "Multi-omics analysis types for astronaut molecular profiling",
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
