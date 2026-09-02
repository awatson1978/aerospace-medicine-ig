# Artemis Landing Regions - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Landing Regions**

## CodeSystem: Artemis Landing Regions (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-landing-region-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ArtemisLandingRegionCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Candidate Artemis III landing regions near the lunar south pole (within 6° of pole, near permanently shadowed craters) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisLandingRegionVS](ValueSet-artemis-landing-region-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-landing-region-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-landing-region-cs",
  "version" : "0.7.0",
  "name" : "ArtemisLandingRegionCS",
  "title" : "Artemis Landing Regions",
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
  "description" : "Candidate Artemis III landing regions near the lunar south pole (within 6° of pole, near permanently shadowed craters)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "property" : [
    {
      "code" : "latitude",
      "description" : "Approximate selenographic latitude (degrees)",
      "type" : "decimal"
    },
    {
      "code" : "longitude",
      "description" : "Approximate selenographic longitude (degrees)",
      "type" : "decimal"
    },
    {
      "code" : "feature",
      "description" : "Primary topographic feature (crater, massif, plateau, ridge)",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "faustini-rim-a",
      "display" : "Faustini Rim A",
      "definition" : "Rim of Faustini crater (~87°S, 84°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -87
        },
        {
          "code" : "longitude",
          "valueDecimal" : 84
        },
        {
          "code" : "feature",
          "valueString" : "Faustini crater"
        }
      ]
    },
    {
      "code" : "peak-near-shackleton",
      "display" : "Peak Near Shackleton",
      "definition" : "High point near Shackleton crater, south pole (~89°S, 126°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -89
        },
        {
          "code" : "longitude",
          "valueDecimal" : 126
        },
        {
          "code" : "feature",
          "valueString" : "Shackleton vicinity"
        }
      ]
    },
    {
      "code" : "connecting-ridge",
      "display" : "Connecting Ridge",
      "definition" : "Ridge connecting crater rims in Shackleton–de Gerlache area (~89.5°S, 210°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -89.5
        },
        {
          "code" : "longitude",
          "valueDecimal" : 210
        },
        {
          "code" : "feature",
          "valueString" : "Ridge between Shackleton and de Gerlache"
        }
      ]
    },
    {
      "code" : "connecting-ridge-ext",
      "display" : "Connecting Ridge Extension",
      "definition" : "Extension of Connecting Ridge (~89.3°S, 210°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -89.3
        },
        {
          "code" : "longitude",
          "valueDecimal" : 210
        },
        {
          "code" : "feature",
          "valueString" : "Extended ridge"
        }
      ]
    },
    {
      "code" : "de-gerlache-rim-1",
      "display" : "de Gerlache Rim 1",
      "definition" : "One site on rim of de Gerlache crater (~88.5°S, 270°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -88.5
        },
        {
          "code" : "longitude",
          "valueDecimal" : 270
        },
        {
          "code" : "feature",
          "valueString" : "de Gerlache crater"
        }
      ]
    },
    {
      "code" : "de-gerlache-rim-2",
      "display" : "de Gerlache Rim 2",
      "definition" : "Another site on rim of de Gerlache crater (~88.8°S, 250°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -88.8
        },
        {
          "code" : "longitude",
          "valueDecimal" : 250
        },
        {
          "code" : "feature",
          "valueString" : "de Gerlache crater"
        }
      ]
    },
    {
      "code" : "de-gerlache-kocher-massif",
      "display" : "de Gerlache–Kocher Massif",
      "definition" : "Massif between de Gerlache and Kocher craters (~85°S, 236°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -85
        },
        {
          "code" : "longitude",
          "valueDecimal" : 236
        },
        {
          "code" : "feature",
          "valueString" : "Mountainous highland"
        }
      ]
    },
    {
      "code" : "haworth",
      "display" : "Haworth",
      "definition" : "Vicinity of Haworth crater floor/rim (~86.9°S, 356°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -86.9
        },
        {
          "code" : "longitude",
          "valueDecimal" : 356
        },
        {
          "code" : "feature",
          "valueString" : "Haworth crater"
        }
      ]
    },
    {
      "code" : "malapert-massif",
      "display" : "Malapert Massif",
      "definition" : "Malapert Mountain, high elevation near pole (~86°S, 0°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -86
        },
        {
          "code" : "longitude",
          "valueDecimal" : 0
        },
        {
          "code" : "feature",
          "valueString" : "Malapert peak"
        }
      ]
    },
    {
      "code" : "leibnitz-beta-plateau",
      "display" : "Leibnitz Beta Plateau",
      "definition" : "Elevated plateau in Mons Mouton area (~85.4°S, 32°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -85.4
        },
        {
          "code" : "longitude",
          "valueDecimal" : 32
        },
        {
          "code" : "feature",
          "valueString" : "Leibnitz Beta region"
        }
      ]
    },
    {
      "code" : "nobile-rim-1",
      "display" : "Nobile Rim 1",
      "definition" : "Rim of Nobile crater, site 1 (~85.7°S, 45°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -85.7
        },
        {
          "code" : "longitude",
          "valueDecimal" : 45
        },
        {
          "code" : "feature",
          "valueString" : "Nobile crater region"
        }
      ]
    },
    {
      "code" : "nobile-rim-2",
      "display" : "Nobile Rim 2",
      "definition" : "Rim of Nobile crater, site 2 (~84.2°S, 60.7°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -84.2
        },
        {
          "code" : "longitude",
          "valueDecimal" : 60.7
        },
        {
          "code" : "feature",
          "valueString" : "Nobile crater region"
        }
      ]
    },
    {
      "code" : "amundsen-rim",
      "display" : "Amundsen Rim",
      "definition" : "Rim of Amundsen crater (~84.5°S, 83°E)",
      "property" : [
        {
          "code" : "latitude",
          "valueDecimal" : -84.5
        },
        {
          "code" : "longitude",
          "valueDecimal" : 83
        },
        {
          "code" : "feature",
          "valueString" : "Amundsen crater region"
        }
      ]
    }
  ]
}

```
