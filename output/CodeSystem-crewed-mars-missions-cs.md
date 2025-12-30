# Human Mars Mission Plans - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Human Mars Mission Plans**

## CodeSystem: Human Mars Mission Plans 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:CrewedMarsMissionsCS |

 
Proposed or conceptual human mission architectures to Mars (Mars Direct, NASA DRMs, SpaceX, etc.) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CrewedMarsMissionsVS](ValueSet-crewed-mars-missions-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "crewed-mars-missions-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs",
  "version" : "0.5.6",
  "name" : "CrewedMarsMissionsCS",
  "title" : "Human Mars Mission Plans",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Proposed or conceptual human mission architectures to Mars (Mars Direct, NASA DRMs, SpaceX, etc.)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "property" : [
    {
      "code" : "proposer",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#proposer",
      "description" : "Organization or individual proposing the architecture",
      "type" : "string"
    },
    {
      "code" : "year",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#year",
      "description" : "Year of proposal or major update",
      "type" : "integer"
    },
    {
      "code" : "crewSize",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#crewSize",
      "description" : "Nominal crew size",
      "type" : "integer"
    },
    {
      "code" : "surfaceStayDays",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#surfaceStayDays",
      "description" : "Planned surface stay duration in days",
      "type" : "integer"
    }
  ],
  "concept" : [
    {
      "code" : "marsDirect",
      "display" : "Mars Direct (Zubrin 1990)",
      "definition" : "Two-launch architecture with ISRU propellant production on Mars, direct Earth-Mars transit, 18-month surface stay, artificial gravity tether, crew of 4",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "Robert Zubrin / Mars Society"
        },
        {
          "code" : "year",
          "valueInteger" : 1990
        },
        {
          "code" : "crewSize",
          "valueInteger" : 4
        },
        {
          "code" : "surfaceStayDays",
          "valueInteger" : 550
        }
      ]
    },
    {
      "code" : "nasaDRM1",
      "display" : "NASA Design Reference Mission 1.0 (1993)",
      "definition" : "NASA's first Mars Semi-Direct adaptation, split missions with ISRU but added Mars Orbit Rendezvous with MAV",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "NASA"
        },
        {
          "code" : "year",
          "valueInteger" : 1993
        },
        {
          "code" : "crewSize",
          "valueInteger" : 4
        }
      ]
    },
    {
      "code" : "nasaDRM3",
      "display" : "NASA Design Reference Mission 3.0 (1998)",
      "definition" : "NASA DRM evolution with increased crew size (6) and hardware redundancy, Semi-Direct architecture",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "NASA"
        },
        {
          "code" : "year",
          "valueInteger" : 1998
        },
        {
          "code" : "crewSize",
          "valueInteger" : 6
        }
      ]
    },
    {
      "code" : "nasaDRA5",
      "display" : "NASA Design Reference Architecture 5.0 (2009)",
      "definition" : "Conjunction-class mission with ~3 launches, nuclear thermal rockets for cargo, fission surface power (~25 kW), long surface stays",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "NASA"
        },
        {
          "code" : "year",
          "valueInteger" : 2009
        },
        {
          "code" : "crewSize",
          "valueInteger" : 6
        },
        {
          "code" : "surfaceStayDays",
          "valueInteger" : 500
        }
      ]
    },
    {
      "code" : "austereMars",
      "display" : "NASA Austere Human Missions to Mars (2009)",
      "definition" : "Cost-reduced DRA 5.0 variant with simplified technology, 4 crew, reduced infrastructure",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "NASA"
        },
        {
          "code" : "year",
          "valueInteger" : 2009
        },
        {
          "code" : "crewSize",
          "valueInteger" : 4
        }
      ]
    },
    {
      "code" : "journeyToMars",
      "display" : "NASA Journey to Mars (2015)",
      "definition" : "Moon-first strategy (Artemis), then Mars in 2030s, incremental capability buildup, Gateway staging",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "NASA"
        },
        {
          "code" : "year",
          "valueInteger" : 2015
        }
      ]
    },
    {
      "code" : "spacexStarship",
      "display" : "SpaceX Starship Mars Plan (2016-present)",
      "definition" : "Commercial plan using fully reusable Starship, orbital refueling (10-14 tankers), ISRU for return, target ~2029-2031",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "SpaceX / Elon Musk"
        },
        {
          "code" : "year",
          "valueInteger" : 2016
        },
        {
          "code" : "crewSize",
          "valueInteger" : 12
        },
        {
          "code" : "surfaceStayDays",
          "valueInteger" : 180
        }
      ]
    },
    {
      "code" : "marsOne",
      "display" : "Mars One (2012-2019)",
      "definition" : "Private one-way colonization concept, planned 2023 launch, project defunct 2019",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "Mars One / Bas Lansdorp"
        },
        {
          "code" : "year",
          "valueInteger" : 2012
        },
        {
          "code" : "crewSize",
          "valueInteger" : 4
        }
      ]
    },
    {
      "code" : "inspirationMars",
      "display" : "Inspiration Mars (2013)",
      "definition" : "Proposed crewed Mars flyby (Dennis Tito plan for 2018 launch window), not surface landing",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "Dennis Tito / Inspiration Mars Foundation"
        },
        {
          "code" : "year",
          "valueInteger" : 2013
        },
        {
          "code" : "crewSize",
          "valueInteger" : 2
        }
      ]
    },
    {
      "code" : "projectOlympus",
      "display" : "Project Olympus / Athena (2025)",
      "definition" : "Jared Isaacman plan for accelerated NASA-commercial Mars efforts, uncrewed demo by 2026, nuclear-electric propulsion priority",
      "property" : [
        {
          "code" : "proposer",
          "valueString" : "Jared Isaacman"
        },
        {
          "code" : "year",
          "valueInteger" : 2025
        }
      ]
    }
  ]
}

```
