# Microbial Contaminant Type Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Microbial Contaminant Type Code System**

## CodeSystem: Microbial Contaminant Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/microbial-contaminant-type-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:MicrobialContaminantTypeCS |

 
Types of microbial contamination relevant to planetary protection 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MicrobialContaminantTypeVS](ValueSet-microbial-contaminant-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "microbial-contaminant-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/microbial-contaminant-type-cs",
  "version" : "0.6.0",
  "name" : "MicrobialContaminantTypeCS",
  "title" : "Microbial Contaminant Type Code System",
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
  "description" : "Types of microbial contamination relevant to planetary protection",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "bacterial-spore",
      "display" : "Bacterial Spore",
      "definition" : "Heat-resistant bacterial endospore"
    },
    {
      "code" : "fungal-spore",
      "display" : "Fungal Spore",
      "definition" : "Fungal spore capable of surviving environmental extremes"
    },
    {
      "code" : "vegetative-bacteria",
      "display" : "Vegetative Bacteria",
      "definition" : "Actively growing bacterial cell"
    },
    {
      "code" : "biofilm",
      "display" : "Biofilm",
      "definition" : "Microbial community embedded in extracellular polymer matrix"
    },
    {
      "code" : "viable-microbe",
      "display" : "Viable Microbe",
      "definition" : "Any culturable or metabolically active microorganism"
    }
  ]
}

```
