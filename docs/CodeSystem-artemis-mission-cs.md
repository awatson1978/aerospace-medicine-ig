# Artemis Missions - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Missions**

## CodeSystem: Artemis Missions (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-mission-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ArtemisMissionCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Historical and planned Artemis program missions with target destinations, launch dates, and status. Reflects the post-2026 replan in which Artemis III is a crewed low-Earth orbit test flight and Artemis IV is the first crewed lunar landing. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisMissionVS](ValueSet-artemis-mission-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-mission-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-mission-cs",
  "version" : "0.7.0",
  "name" : "ArtemisMissionCS",
  "title" : "Artemis Missions",
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
  "description" : "Historical and planned Artemis program missions with target destinations, launch dates, and status. Reflects the post-2026 replan in which Artemis III is a crewed low-Earth orbit test flight and Artemis IV is the first crewed lunar landing.",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "property" : [
    {
      "code" : "status",
      "description" : "Mission status (completed, in-progress, planned)",
      "type" : "string"
    },
    {
      "code" : "target",
      "description" : "Target destination (orbit or landing)",
      "type" : "string"
    },
    {
      "code" : "launchDate",
      "description" : "Launch date of mission (actual or planned)",
      "type" : "dateTime"
    }
  ],
  "concept" : [
    {
      "code" : "ARTEMIS-I",
      "display" : "Artemis I",
      "definition" : "Uncrewed test flight of Orion and SLS around the Moon. Launched Nov 16, 2022. Status: completed. Target: Lunar orbit and return.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "target",
          "valueString" : "Lunar orbit and return (uncrewed test)"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2022-11-16T06:47:00Z"
        }
      ]
    },
    {
      "code" : "ARTEMIS-II",
      "display" : "Artemis II",
      "definition" : "First crewed lunar flyby mission of Artemis program. Planned ~2026. Status: planned. Target: Lunar flyby (crewed).",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "Lunar flyby (crewed)"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2026-09-01T00:00:00Z"
        }
      ]
    },
    {
      "code" : "ARTEMIS-III",
      "display" : "Artemis III",
      "definition" : "Crewed low-Earth orbit test flight preparing systems for future lunar landings. Planned ~2027. Status: planned. Target: LEO test flight (crewed).",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "LEO test flight (crewed)"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2027-09-01T00:00:00Z"
        }
      ]
    },
    {
      "code" : "ARTEMIS-IV",
      "display" : "Artemis IV",
      "definition" : "First crewed lunar landing of the Artemis program, combined with Lunar Gateway assembly (following the Artemis III crewed low-Earth orbit test flight). Planned ~2028. Status: planned. Target: Gateway assembly + first crewed lunar landing.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "Lunar Gateway assembly + first crewed lunar landing"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2028-09-01T00:00:00Z"
        }
      ]
    },
    {
      "code" : "ARTEMIS-V",
      "display" : "Artemis V",
      "definition" : "Second crewed lunar landing with a new lander and the Lunar Terrain Vehicle. Planned ~2030. Status: planned. Target: Lunar landing (new lander, LTV rover).",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "Lunar landing (new lander, LTV rover)"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2030-01-01T00:00:00Z"
        }
      ]
    },
    {
      "code" : "ARTEMIS-VI",
      "display" : "Artemis VI",
      "definition" : "Placeholder entry for Artemis VI mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-VII",
      "display" : "Artemis VII",
      "definition" : "Placeholder entry for Artemis VII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-VIII",
      "display" : "Artemis VIII",
      "definition" : "Placeholder entry for Artemis VIII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-IX",
      "display" : "Artemis IX",
      "definition" : "Placeholder entry for Artemis IX mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-X",
      "display" : "Artemis X",
      "definition" : "Placeholder entry for Artemis X mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XI",
      "display" : "Artemis XI",
      "definition" : "Placeholder entry for Artemis XI mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XII",
      "display" : "Artemis XII",
      "definition" : "Placeholder entry for Artemis XII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIII",
      "display" : "Artemis XIII",
      "definition" : "Placeholder entry for Artemis XIII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIV",
      "display" : "Artemis XIV",
      "definition" : "Placeholder entry for Artemis XIV mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XV",
      "display" : "Artemis XV",
      "definition" : "Placeholder entry for Artemis XV mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVI",
      "display" : "Artemis XVI",
      "definition" : "Placeholder entry for Artemis XVI mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVII",
      "display" : "Artemis XVII",
      "definition" : "Placeholder entry for Artemis XVII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVIII",
      "display" : "Artemis XVIII",
      "definition" : "Placeholder entry for Artemis XVIII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIX",
      "display" : "Artemis XIX",
      "definition" : "Placeholder entry for Artemis XIX mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XX",
      "display" : "Artemis XX",
      "definition" : "Placeholder entry for Artemis XX mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXI",
      "display" : "Artemis XXI",
      "definition" : "Placeholder entry for Artemis XXI mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXII",
      "display" : "Artemis XXII",
      "definition" : "Placeholder entry for Artemis XXII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIII",
      "display" : "Artemis XXIII",
      "definition" : "Placeholder entry for Artemis XXIII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIV",
      "display" : "Artemis XXIV",
      "definition" : "Placeholder entry for Artemis XXIV mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXV",
      "display" : "Artemis XXV",
      "definition" : "Placeholder entry for Artemis XXV mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVI",
      "display" : "Artemis XXVI",
      "definition" : "Placeholder entry for Artemis XXVI mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVII",
      "display" : "Artemis XXVII",
      "definition" : "Placeholder entry for Artemis XXVII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVIII",
      "display" : "Artemis XXVIII",
      "definition" : "Placeholder entry for Artemis XXVIII mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIX",
      "display" : "Artemis XXIX",
      "definition" : "Placeholder entry for Artemis XXIX mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXX",
      "display" : "Artemis XXX",
      "definition" : "Placeholder entry for Artemis XXX mission used for simulation, planning, and forecasting.",
      "property" : [
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    }
  ]
}

```
