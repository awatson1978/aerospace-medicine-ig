# Mars Landing Sites (Candidate) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Landing Sites (Candidate)**

## CodeSystem: Mars Landing Sites (Candidate) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-landing-sites-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MarsLandingSitesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Candidate landing sites for human Mars missions with areographic coordinates and site characteristics 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsLandingSitesVS](ValueSet-mars-landing-sites-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-landing-sites-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-landing-sites-cs",
  "version" : "0.7.0",
  "name" : "MarsLandingSitesCS",
  "title" : "Mars Landing Sites (Candidate)",
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
  "description" : "Candidate landing sites for human Mars missions with areographic coordinates and site characteristics",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "property" : [
    {
      "code" : "latitude",
      "description" : "Areographic latitude (degrees, -90 to +90)",
      "type" : "decimal"
    },
    {
      "code" : "longitude",
      "description" : "Areographic longitude (degrees, 0 to 360)",
      "type" : "decimal"
    },
    {
      "code" : "feature",
      "description" : "Primary topographic feature",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "jezero",
      "display" : "Jezero Crater",
      "definition" : "Ancient lake-delta system at 18.4°N, 77.5°E, Perseverance rover site, high science value for sample return",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : 18.4
        },
        {
          "code" : "longitude",
          "valueDecimal" : 77.5
        },
        {
          "code" : "feature",
          "valueString" : "Impact crater with river delta deposits"
        }
      ]
    },
    {
      "code" : "arcadia",
      "display" : "Arcadia Planitia",
      "definition" : "Flat plain ~40°N, 203°E with subsurface ice, candidate SpaceX Starship zone for ISRU water access",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : 40
        },
        {
          "code" : "longitude",
          "valueDecimal" : 203
        },
        {
          "code" : "feature",
          "valueString" : "Smooth lowland plain"
        }
      ]
    },
    {
      "code" : "gale",
      "display" : "Gale Crater",
      "definition" : "Large crater at 5.4°S, 137.8°E with layered central mound (Mt. Sharp), Curiosity rover site",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -5.4
        },
        {
          "code" : "longitude",
          "valueDecimal" : 137.8
        },
        {
          "code" : "feature",
          "valueString" : "Impact crater with central peak"
        }
      ]
    },
    {
      "code" : "elysium",
      "display" : "Elysium Planitia",
      "definition" : "Smooth equatorial plain at 4°N, 135°E, benign terrain, InSight lander site",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : 4
        },
        {
          "code" : "longitude",
          "valueDecimal" : 135
        },
        {
          "code" : "feature",
          "valueString" : "Volcanic plain"
        }
      ]
    },
    {
      "code" : "hellas",
      "display" : "Hellas Planitia",
      "definition" : "Deepest basin on Mars at 42.4°S, 70.5°E (~7 km below datum), higher atmospheric pressure aids landing",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -42.4
        },
        {
          "code" : "longitude",
          "valueDecimal" : 70.5
        },
        {
          "code" : "feature",
          "valueString" : "Massive impact basin"
        }
      ]
    },
    {
      "code" : "mawrth",
      "display" : "Mawrth Vallis",
      "definition" : "Ancient river valley at 24°N, 341°E with phyllosilicate (clay) deposits, high habitability science interest",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : 24
        },
        {
          "code" : "longitude",
          "valueDecimal" : 341
        },
        {
          "code" : "feature",
          "valueString" : "Outflow channel"
        }
      ]
    }
  ]
}

```
