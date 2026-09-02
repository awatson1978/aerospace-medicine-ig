# Immune Biomarker Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immune Biomarker Code System**

## CodeSystem: Immune Biomarker Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/immune-biomarker-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ImmuneBiomarkerCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Immune function biomarkers monitored during spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ImmuneBiomarkerVS](ValueSet-immune-biomarker-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "immune-biomarker-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/immune-biomarker-cs",
  "version" : "0.7.0",
  "name" : "ImmuneBiomarkerCS",
  "title" : "Immune Biomarker Code System",
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
  "description" : "Immune function biomarkers monitored during spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [
    {
      "code" : "immune-panel",
      "display" : "Immune Function Panel",
      "definition" : "Panel of immune function biomarkers monitored across mission phases"
    },
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
