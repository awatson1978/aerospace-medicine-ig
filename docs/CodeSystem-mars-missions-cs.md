# Mars Missions - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Missions**

## CodeSystem: Mars Missions (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-missions-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MarsMissionsCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
NASA and international missions to Mars (robotic and conceptual human missions) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsMissionsVS](ValueSet-mars-missions-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-missions-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-missions-cs",
  "version" : "0.7.0",
  "name" : "MarsMissionsCS",
  "title" : "Mars Missions",
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
  "description" : "NASA and international missions to Mars (robotic and conceptual human missions)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "property" : [
    {
      "code" : "missionType",
      "description" : "Type of mission (robotic, human)",
      "type" : "string"
    },
    {
      "code" : "launchDate",
      "description" : "Launch date of mission",
      "type" : "dateTime"
    },
    {
      "code" : "status",
      "description" : "Mission status (completed, active, planned)",
      "type" : "string"
    },
    {
      "code" : "landingSite",
      "description" : "Landing site on Mars (for landers/rovers)",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "mariner4",
      "display" : "Mariner 4 (1964)",
      "definition" : "First successful Mars flyby mission, returned 21 images of Mars surface",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1964-11-28"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        }
      ]
    },
    {
      "code" : "mariner9",
      "display" : "Mariner 9 (1971)",
      "definition" : "First spacecraft to orbit another planet (Mars), mapped surface",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1971-05-30"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        }
      ]
    },
    {
      "code" : "viking1",
      "display" : "Viking 1 (1975)",
      "definition" : "First successful Mars landing (July 1976), orbiter and lander mission",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1975-08-20"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Chryse Planitia"
        }
      ]
    },
    {
      "code" : "viking2",
      "display" : "Viking 2 (1975)",
      "definition" : "Second successful Mars landing (September 1976), orbiter and lander mission",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1975-09-09"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Utopia Planitia"
        }
      ]
    },
    {
      "code" : "pathfinder",
      "display" : "Mars Pathfinder (1996)",
      "definition" : "Lander with Sojourner rover, demonstrated airbag landing technology",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1996-12-04"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Ares Vallis"
        }
      ]
    },
    {
      "code" : "globalSurveyor",
      "display" : "Mars Global Surveyor (1996)",
      "definition" : "Orbiter that mapped Mars for 10 years with high-resolution cameras",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "1996-11-07"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        }
      ]
    },
    {
      "code" : "spirit",
      "display" : "Spirit Rover (MER-A, 2003)",
      "definition" : "Mars Exploration Rover, operated 2004-2010, studied Gusev Crater",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2003-06-10"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Gusev Crater"
        }
      ]
    },
    {
      "code" : "opportunity",
      "display" : "Opportunity Rover (MER-B, 2003)",
      "definition" : "Mars Exploration Rover, operated 2004-2018, studied Meridiani Planum",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2003-07-07"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Meridiani Planum"
        }
      ]
    },
    {
      "code" : "phoenix",
      "display" : "Phoenix (2007)",
      "definition" : "Polar lander, confirmed water ice in regolith in 2008",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2007-08-04"
        },
        {
          "code" : "status",
          "valueString" : "completed"
        },
        {
          "code" : "landingSite",
          "valueString" : "Green Valley (Vastitas Borealis)"
        }
      ]
    },
    {
      "code" : "curiosity",
      "display" : "Curiosity (MSL, 2011)",
      "definition" : "Nuclear-powered rover, landed August 2012, studying habitability in Gale Crater",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2011-11-26"
        },
        {
          "code" : "status",
          "valueString" : "active"
        },
        {
          "code" : "landingSite",
          "valueString" : "Gale Crater"
        }
      ]
    },
    {
      "code" : "perseverance",
      "display" : "Perseverance (Mars 2020)",
      "definition" : "Rover collecting samples for future return, includes MOXIE oxygen experiment, landed Feb 2021",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "launchDate",
          "valueDateTime" : "2020-07-30"
        },
        {
          "code" : "status",
          "valueString" : "active"
        },
        {
          "code" : "landingSite",
          "valueString" : "Jezero Crater"
        }
      ]
    },
    {
      "code" : "marsSampleReturn",
      "display" : "Mars Sample Return (planned ~2030s)",
      "definition" : "Future mission to return samples collected by Perseverance via orbiter and fetch rover",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "robotic"
        },
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    },
    {
      "code" : "firstCrewedMars",
      "display" : "First Crewed Mars Mission (planned late 2030s)",
      "definition" : "NASA Artemis-era goal to send astronauts to Mars orbit or surface",
      "property" : [
        {
          "code" : "missionType",
          "valueString" : "human"
        },
        {
          "code" : "status",
          "valueString" : "planned"
        }
      ]
    }
  ]
}

```
