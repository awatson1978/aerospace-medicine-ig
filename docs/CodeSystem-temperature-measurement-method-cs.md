# Temperature Measurement Method Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Temperature Measurement Method Code System**

## CodeSystem: Temperature Measurement Method Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/temperature-measurement-method-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:TemperatureMeasurementMethodCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Methods of body temperature measurement relevant to spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TemperatureMeasurementMethodVS](ValueSet-temperature-measurement-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "temperature-measurement-method-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/temperature-measurement-method-cs",
  "version" : "0.7.0",
  "name" : "TemperatureMeasurementMethodCS",
  "title" : "Temperature Measurement Method Code System",
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
  "description" : "Methods of body temperature measurement relevant to spaceflight",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "oral-thermometer",
      "display" : "Oral Thermometer",
      "definition" : "Standard oral digital thermometer measurement"
    },
    {
      "code" : "tympanic-ir",
      "display" : "Tympanic Infrared",
      "definition" : "Infrared tympanic membrane thermometry"
    },
    {
      "code" : "rectal",
      "display" : "Rectal Thermometer",
      "definition" : "Rectal temperature measurement"
    },
    {
      "code" : "skin-patch-continuous",
      "display" : "Continuous Skin Patch",
      "definition" : "Continuous skin temperature via adhesive sensor patch"
    },
    {
      "code" : "ingestible-thermopill",
      "display" : "Ingestible Thermopill",
      "definition" : "Telemetric core body temperature via ingestible capsule"
    },
    {
      "code" : "axillary",
      "display" : "Axillary Thermometer",
      "definition" : "Axillary (armpit) temperature measurement"
    },
    {
      "code" : "temporal-artery",
      "display" : "Temporal Artery Scanner",
      "definition" : "Non-contact temporal artery infrared thermometry"
    }
  ]
}

```
