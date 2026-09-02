# Aerospace Location Type - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aerospace Location Type**

## CodeSystem: Aerospace Location Type (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-type-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:LocationTypeCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Types of locations used in lunar and planetary mission records (landing sites, orbital stations, surface habitats, outposts, analog facilities) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [LocationTypeVS](ValueSet-location-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "location-type-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-type-cs",
  "version" : "0.7.0",
  "name" : "LocationTypeCS",
  "title" : "Aerospace Location Type",
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
  "description" : "Types of locations used in lunar and planetary mission records (landing sites, orbital stations, surface habitats, outposts, analog facilities)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [
    {
      "code" : "landing-site",
      "display" : "Landing Site",
      "definition" : "Surface landing site or landing region on a planetary body"
    },
    {
      "code" : "orbital-station",
      "display" : "Orbital Station",
      "definition" : "Crewed station or module in orbit (e.g., Lunar Gateway in NRHO)"
    },
    {
      "code" : "surface-habitat",
      "display" : "Surface Habitat",
      "definition" : "Pressurized surface habitat providing living quarters and life support"
    },
    {
      "code" : "surface-outpost",
      "display" : "Surface Outpost",
      "definition" : "Multi-element surface base such as Artemis Base Camp"
    },
    {
      "code" : "analog-facility",
      "display" : "Analog Facility",
      "definition" : "Terrestrial analog facility used for mission simulation and training"
    }
  ]
}

```
