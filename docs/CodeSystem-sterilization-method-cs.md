# Sterilization Method Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sterilization Method Code System**

## CodeSystem: Sterilization Method Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sterilization-method-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SterilizationMethodCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Sterilization methods for planetary protection bioburden reduction 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SterilizationMethodVS](ValueSet-sterilization-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sterilization-method-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sterilization-method-cs",
  "version" : "0.7.0",
  "name" : "SterilizationMethodCS",
  "title" : "Sterilization Method Code System",
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
  "description" : "Sterilization methods for planetary protection bioburden reduction",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "dhmr",
      "display" : "Dry Heat Microbial Reduction (DHMR)",
      "definition" : "Dry heat treatment for spore inactivation, typically 110-125°C"
    },
    {
      "code" : "uv-sterilization",
      "display" : "UV Sterilization",
      "definition" : "Ultraviolet radiation for surface decontamination"
    },
    {
      "code" : "vhp",
      "display" : "Vaporized Hydrogen Peroxide (VHP)",
      "definition" : "VHP exposure for surface sterilization"
    },
    {
      "code" : "gamma-irradiation",
      "display" : "Gamma Irradiation",
      "definition" : "Ionizing radiation for bulk sterilization"
    },
    {
      "code" : "ethylene-oxide",
      "display" : "Ethylene Oxide",
      "definition" : "Chemical gas sterilization for heat-sensitive materials"
    }
  ]
}

```
