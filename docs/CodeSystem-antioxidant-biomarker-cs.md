# Antioxidant Biomarker Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antioxidant Biomarker Code System**

## CodeSystem: Antioxidant Biomarker Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:AntioxidantBiomarkerCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Biomarkers of oxidative stress and antioxidant status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AntioxidantBiomarkerVS](ValueSet-antioxidant-biomarker-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "antioxidant-biomarker-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/antioxidant-biomarker-cs",
  "version" : "0.7.0",
  "name" : "AntioxidantBiomarkerCS",
  "title" : "Antioxidant Biomarker Code System",
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
  "description" : "Biomarkers of oxidative stress and antioxidant status",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "glutathione-reduced",
      "display" : "Reduced Glutathione (GSH)",
      "definition" : "Intracellular reduced glutathione level, primary cellular antioxidant"
    },
    {
      "code" : "malondialdehyde",
      "display" : "Malondialdehyde (MDA)",
      "definition" : "Lipid peroxidation marker indicating oxidative damage"
    },
    {
      "code" : "8-ohdg",
      "display" : "8-Hydroxy-2'-Deoxyguanosine (8-OHdG)",
      "definition" : "Oxidative DNA damage marker"
    },
    {
      "code" : "sod-activity",
      "display" : "Superoxide Dismutase (SOD) Activity",
      "definition" : "Antioxidant enzyme activity level"
    },
    {
      "code" : "catalase-activity",
      "display" : "Catalase Activity",
      "definition" : "Hydrogen peroxide decomposition enzyme activity"
    },
    {
      "code" : "tac",
      "display" : "Total Antioxidant Capacity (TAC)",
      "definition" : "Aggregate antioxidant capacity of biological sample"
    }
  ]
}

```
