# Location Capabilities Code System - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Location Capabilities Code System**

## CodeSystem: Location Capabilities Code System (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-capabilities-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:LocationCapabilitiesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Capabilities and services available at aerospace medicine locations 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationCapabilitiesVS](ValueSet-location-capabilities-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "location-capabilities-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-capabilities-cs",
  "version" : "0.7.0",
  "name" : "LocationCapabilitiesCS",
  "title" : "Location Capabilities Code System",
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
  "description" : "Capabilities and services available at aerospace medicine locations",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
