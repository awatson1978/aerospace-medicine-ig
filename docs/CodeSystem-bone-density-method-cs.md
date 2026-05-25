# Bone Density Method Code System - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bone Density Method Code System**

## CodeSystem: Bone Density Method Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/bone-density-method-cs | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:BoneDensityMethodCS |

 
Methods for bone mineral density measurement in spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BoneDensityMethodVS](ValueSet-bone-density-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "bone-density-method-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/bone-density-method-cs",
  "version" : "0.6.0",
  "name" : "BoneDensityMethodCS",
  "title" : "Bone Density Method Code System",
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
  "description" : "Methods for bone mineral density measurement in spaceflight",
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
