# Sterilization Method Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sterilization Method Code System**

## CodeSystem: Sterilization Method Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/sterilization-method-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SterilizationMethodCS |

 
Sterilization methods for planetary protection bioburden reduction 

 This Code system is referenced in the content logical definition of the following value sets: 

* [SterilizationMethodVS](ValueSet-sterilization-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "sterilization-method-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/sterilization-method-cs",
  "version" : "0.6.2",
  "name" : "SterilizationMethodCS",
  "title" : "Sterilization Method Code System",
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
  "description" : "Sterilization methods for planetary protection bioburden reduction",
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
