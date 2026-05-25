# Expanded Specimen Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Expanded Specimen Type Code System**

## CodeSystem: Expanded Specimen Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/expanded-specimen-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ExpandedSpecimenTypeCS |

 
Specimen types for astronaut biobank and multi-omics analysis 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ExpandedSpecimenTypeVS](ValueSet-expanded-specimen-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "expanded-specimen-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/expanded-specimen-type-cs",
  "version" : "0.6.0",
  "name" : "ExpandedSpecimenTypeCS",
  "title" : "Expanded Specimen Type Code System",
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
  "description" : "Specimen types for astronaut biobank and multi-omics analysis",
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
