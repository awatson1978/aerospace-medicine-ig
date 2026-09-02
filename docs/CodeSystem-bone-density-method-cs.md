# Bone Density Method Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bone Density Method Code System**

## CodeSystem: Bone Density Method Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bone-density-method-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BoneDensityMethodCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Methods for bone mineral density measurement in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BoneDensityMethodVS](ValueSet-bone-density-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bone-density-method-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bone-density-method-cs",
  "version" : "0.7.0",
  "name" : "BoneDensityMethodCS",
  "title" : "Bone Density Method Code System",
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
  "description" : "Methods for bone mineral density measurement in spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "dxa",
      "display" : "Dual-Energy X-ray Absorptiometry (DXA)",
      "definition" : "Standard ground-based BMD measurement"
    },
    {
      "code" : "qct",
      "display" : "Quantitative Computed Tomography (QCT)",
      "definition" : "Volumetric BMD measurement via CT"
    },
    {
      "code" : "pqct",
      "display" : "Peripheral QCT (pQCT)",
      "definition" : "Peripheral quantitative CT for extremity BMD"
    },
    {
      "code" : "quantitative-ultrasound",
      "display" : "Quantitative Ultrasound (QUS)",
      "definition" : "Ultrasound-based bone quality assessment, suitable for in-flight use"
    }
  ]
}

```
