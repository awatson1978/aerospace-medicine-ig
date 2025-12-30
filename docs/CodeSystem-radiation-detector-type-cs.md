# Radiation Detector Type Code System - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Detector Type Code System**

## CodeSystem: Radiation Detector Type Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/radiation-detector-type-cs | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:RadiationDetectorTypeCS |

 
Types of radiation detection equipment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DosimeterTypeVS](ValueSet-dosimeter-type-vs.md)
* [RadiationDetectorTypeVSComplete](ValueSet-radiation-detector-type-vs-complete.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "radiation-detector-type-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/radiation-detector-type-cs",
  "version" : "0.5.1",
  "name" : "RadiationDetectorTypeCS",
  "title" : "Radiation Detector Type Code System",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-29T13:16:13-07:00",
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
  "description" : "Types of radiation detection equipment",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "tld",
      "display" : "Thermoluminescent Dosimeter"
    },
    {
      "code" : "osld",
      "display" : "Optically Stimulated Luminescence Detector"
    },
    {
      "code" : "epd",
      "display" : "Electronic Personal Dosimeter"
    },
    {
      "code" : "tepc",
      "display" : "Tissue Equivalent Proportional Counter"
    }
  ]
}

```
