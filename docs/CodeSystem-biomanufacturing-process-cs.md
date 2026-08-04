# Biomanufacturing Process Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biomanufacturing Process Code System**

## CodeSystem: Biomanufacturing Process Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/biomanufacturing-process-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:BiomanufacturingProcessCS |

 
Biomanufacturing processes for in-situ resource utilization and life support 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BiomanufacturingProcessVS](ValueSet-biomanufacturing-process-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "biomanufacturing-process-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/biomanufacturing-process-cs",
  "version" : "0.6.2",
  "name" : "BiomanufacturingProcessCS",
  "title" : "Biomanufacturing Process Code System",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-03T22:31:50-05:00",
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
