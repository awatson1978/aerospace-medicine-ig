# Artemis Missions - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Missions**

## CodeSystem: Artemis Missions 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:ArtemisMissionCS |

 
Historical and planned Artemis program missions with target destinations, launch dates, and status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisMissionVS](ValueSet-artemis-mission-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-mission-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs",
  "version" : "0.5.12",
  "name" : "ArtemisMissionCS",
  "title" : "Artemis Missions",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-25T00:24:16-05:00",
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
  "description" : "Historical and planned Artemis program missions with target destinations, launch dates, and status",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 30,
  "property" : [
    {
      "code" : "status",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#status",
      "description" : "Mission status (completed, in-progress, planned)",
      "type" : "code"
    },
    {
      "code" : "target",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#target",
      "description" : "Target destination (orbit or landing)",
      "type" : "string"
    },
    {
      "code" : "launchDate",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#launchDate",
      "description" : "Launch date of mission (actual or planned)",
      "type" : "dateTime"
    }
  ],
  "concept" : [
    {
      "code" : "ARTEMIS-I",
      "display" : "Artemis I",
      "definition" : "Uncrewed test flight of Orion and SLS around the Moon. Launched Nov 16, 2022. Status: completed. Target: Lunar orbit and return.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: completed | Target: Lunar orbit and return (uncrewed test) | Launch: 2022-11-16"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "completed"
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
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Target: Lunar flyby (crewed) | Launch: ~2026"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
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
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Target: LEO test flight (crewed) | Launch: ~2027"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
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
      "definition" : "Lunar Gateway assembly mission with landing. Planned ~2028. Status: planned. Target: Gateway assembly + landing.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Target: Lunar Gateway assembly + landing | Launch: ~2028"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "Lunar Gateway assembly + landing"
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
      "definition" : "Lunar landing with new lander and Lunar Terrain Vehicle. Planned ~2030. Status: planned. Target: Lunar landing (new lander, LTV rover).",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Target: Lunar landing (new lander, LTV rover) | Launch: ~2030"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
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
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-VII",
      "display" : "Artemis VII",
      "definition" : "Placeholder entry for Artemis VII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-VIII",
      "display" : "Artemis VIII",
      "definition" : "Placeholder entry for Artemis VIII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-IX",
      "display" : "Artemis IX",
      "definition" : "Placeholder entry for Artemis IX mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-X",
      "display" : "Artemis X",
      "definition" : "Placeholder entry for Artemis X mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XI",
      "display" : "Artemis XI",
      "definition" : "Placeholder entry for Artemis XI mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XII",
      "display" : "Artemis XII",
      "definition" : "Placeholder entry for Artemis XII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIII",
      "display" : "Artemis XIII",
      "definition" : "Placeholder entry for Artemis XIII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIV",
      "display" : "Artemis XIV",
      "definition" : "Placeholder entry for Artemis XIV mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XV",
      "display" : "Artemis XV",
      "definition" : "Placeholder entry for Artemis XV mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVI",
      "display" : "Artemis XVI",
      "definition" : "Placeholder entry for Artemis XVI mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVII",
      "display" : "Artemis XVII",
      "definition" : "Placeholder entry for Artemis XVII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XVIII",
      "display" : "Artemis XVIII",
      "definition" : "Placeholder entry for Artemis XVIII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XIX",
      "display" : "Artemis XIX",
      "definition" : "Placeholder entry for Artemis XIX mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XX",
      "display" : "Artemis XX",
      "definition" : "Placeholder entry for Artemis XX mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXI",
      "display" : "Artemis XXI",
      "definition" : "Placeholder entry for Artemis XXI mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXII",
      "display" : "Artemis XXII",
      "definition" : "Placeholder entry for Artemis XXII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIII",
      "display" : "Artemis XXIII",
      "definition" : "Placeholder entry for Artemis XXIII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIV",
      "display" : "Artemis XXIV",
      "definition" : "Placeholder entry for Artemis XXIV mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXV",
      "display" : "Artemis XXV",
      "definition" : "Placeholder entry for Artemis XXV mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVI",
      "display" : "Artemis XXVI",
      "definition" : "Placeholder entry for Artemis XXVI mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVII",
      "display" : "Artemis XXVII",
      "definition" : "Placeholder entry for Artemis XXVII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXVIII",
      "display" : "Artemis XXVIII",
      "definition" : "Placeholder entry for Artemis XXVIII mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXIX",
      "display" : "Artemis XXIX",
      "definition" : "Placeholder entry for Artemis XXIX mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    },
    {
      "code" : "ARTEMIS-XXX",
      "display" : "Artemis XXX",
      "definition" : "Placeholder entry for Artemis XXX mission used for simulation, planning, and forecasting.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Placeholder mission entry for simulation and forecasting"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        }
      ]
    }
  ]
}

```
