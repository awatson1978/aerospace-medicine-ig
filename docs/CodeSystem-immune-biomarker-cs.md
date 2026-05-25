# Immune Biomarker Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immune Biomarker Code System**

## CodeSystem: Immune Biomarker Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:ImmuneBiomarkerCS |

 
Immune function biomarkers monitored during spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImmuneBiomarkerVS](ValueSet-immune-biomarker-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "immune-biomarker-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
  "version" : "0.6.0",
  "name" : "ImmuneBiomarkerCS",
  "title" : "Immune Biomarker Code System",
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
  "description" : "Immune function biomarkers monitored during spaceflight",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [
    {
      "code" : "il-6",
      "display" : "Interleukin-6 (IL-6)",
      "definition" : "Pro-inflammatory cytokine marker"
    },
    {
      "code" : "tnf-alpha",
      "display" : "Tumor Necrosis Factor Alpha (TNF-α)",
      "definition" : "Pro-inflammatory cytokine"
    },
    {
      "code" : "ifn-gamma",
      "display" : "Interferon Gamma (IFN-γ)",
      "definition" : "Th1 immune response cytokine"
    },
    {
      "code" : "cd4-cd8-ratio",
      "display" : "CD4/CD8 Ratio",
      "definition" : "T-cell subset ratio indicating immune balance"
    },
    {
      "code" : "nk-cell-pct",
      "display" : "Natural Killer Cell Percentage",
      "definition" : "NK cell fraction of total lymphocytes"
    },
    {
      "code" : "ebv-pcr",
      "display" : "EBV PCR",
      "definition" : "Epstein-Barr virus reactivation detection by PCR"
    },
    {
      "code" : "cmv-pcr",
      "display" : "CMV PCR",
      "definition" : "Cytomegalovirus reactivation detection by PCR"
    },
    {
      "code" : "salivary-iga",
      "display" : "Salivary IgA",
      "definition" : "Mucosal immune function marker"
    }
  ]
}

```
