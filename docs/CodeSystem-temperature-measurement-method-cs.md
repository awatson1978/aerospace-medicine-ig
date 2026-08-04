# Temperature Measurement Method Code System - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Temperature Measurement Method Code System**

## CodeSystem: Temperature Measurement Method Code System 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/CodeSystem/temperature-measurement-method-cs | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:TemperatureMeasurementMethodCS |

 
Methods of body temperature measurement relevant to spaceflight 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TemperatureMeasurementMethodVS](ValueSet-temperature-measurement-method-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "temperature-measurement-method-cs",
  "url" : "https://mitre.org/fhir/space-health/CodeSystem/temperature-measurement-method-cs",
  "version" : "0.6.2",
  "name" : "TemperatureMeasurementMethodCS",
  "title" : "Temperature Measurement Method Code System",
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
  "description" : "Methods of body temperature measurement relevant to spaceflight",
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
