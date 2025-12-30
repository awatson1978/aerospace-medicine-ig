# Location Capabilities Code System - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location Capabilities Code System**

## CodeSystem: Location Capabilities Code System 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/location-capabilities-cs | *Version*:0.5.1 |
| Active as of 2025-12-29 | *Computable Name*:LocationCapabilitiesCS |

 
Capabilities and services available at aerospace medicine locations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationCapabilitiesVS](ValueSet-location-capabilities-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "location-capabilities-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-capabilities-cs",
  "version" : "0.5.1",
  "name" : "LocationCapabilitiesCS",
  "title" : "Location Capabilities Code System",
  "status" : "active",
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
  "description" : "Capabilities and services available at aerospace medicine locations",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [
    {
      "code" : "eva-simulation",
      "display" : "EVA Simulation Training",
      "definition" : "Facility capable of extravehicular activity simulation training"
    },
    {
      "code" : "hyperbaric-treatment",
      "display" : "Hyperbaric Treatment",
      "definition" : "Facility with hyperbaric oxygen therapy capabilities"
    },
    {
      "code" : "secure-communication",
      "display" : "Secure Communication",
      "definition" : "Facility with secure communication systems"
    },
    {
      "code" : "altitude-chamber",
      "display" : "Altitude Chamber Training",
      "definition" : "Facility with altitude chamber for hypobaric training"
    },
    {
      "code" : "centrifuge-training",
      "display" : "Centrifuge Training",
      "definition" : "Facility with centrifuge for high-G training"
    },
    {
      "code" : "medical-emergency",
      "display" : "Emergency Medical Services",
      "definition" : "Facility with emergency medical response capabilities"
    },
    {
      "code" : "radiation-monitoring",
      "display" : "Radiation Monitoring",
      "definition" : "Facility with radiation detection and monitoring systems"
    },
    {
      "code" : "psychological-support",
      "display" : "Psychological Support Services",
      "definition" : "Facility with psychological counseling and support services"
    },
    {
      "code" : "rehabilitation",
      "display" : "Medical Rehabilitation",
      "definition" : "Facility with medical rehabilitation services"
    },
    {
      "code" : "research-laboratory",
      "display" : "Research Laboratory",
      "definition" : "Facility with research laboratory capabilities"
    },
    {
      "code" : "neutral-buoyancy",
      "display" : "Neutral Buoyancy Training",
      "definition" : "Facility with underwater neutral buoyancy training pool"
    },
    {
      "code" : "mission-control",
      "display" : "Mission Control",
      "definition" : "Facility with mission control and monitoring capabilities"
    },
    {
      "code" : "life-support-testing",
      "display" : "Life Support Testing",
      "definition" : "Facility for testing life support systems"
    },
    {
      "code" : "spacesuit-testing",
      "display" : "Spacesuit Testing",
      "definition" : "Facility for spacesuit testing and validation"
    }
  ]
}

```
