# Radiation Detector Type Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Detector Type Code System**

## CodeSystem: Radiation Detector Type Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-detector-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:RadiationDetectorTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of radiation detection equipment 

 This Code system is referenced in the content logical definition of the following value sets: 

* [DosimeterTypeVS](ValueSet-dosimeter-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "radiation-detector-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-detector-type-cs",
  "version" : "0.7.0",
  "name" : "RadiationDetectorTypeCS",
  "title" : "Radiation Detector Type Code System",
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
  "description" : "Types of radiation detection equipment",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
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
    },
    {
      "code" : "area-monitor",
      "display" : "Area Radiation Monitor"
    },
    {
      "code" : "neutron-detector",
      "display" : "Neutron Detection System"
    },
    {
      "code" : "spectrometer",
      "display" : "Radiation Spectrometer"
    },
    {
      "code" : "passive",
      "display" : "Passive Dosimeter",
      "definition" : "Integrating dosimeter read out after the exposure period"
    },
    {
      "code" : "active",
      "display" : "Active Real-time Dosimeter",
      "definition" : "Dosimeter reporting dose and dose rate in real time"
    }
  ]
}

```
