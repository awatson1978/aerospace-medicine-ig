# Artemis Missions - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Missions**

## CodeSystem: Artemis Missions 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:ArtemisMissionCS |

 
Historical and planned Artemis program missions with target destinations, launch dates, and status 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisMissionVS](ValueSet-artemis-mission-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-mission-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs",
  "version" : "0.5.5",
  "name" : "ArtemisMissionCS",
  "title" : "Artemis Missions",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T00:07:25-07:00",
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
  "count" : 5,
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
      "definition" : "First crewed lunar landing of Artemis program at south pole. Planned ~2027. Status: planned. Target: Lunar south pole landing.",
      "designation" : [
        {
          "use" : {
            "system" : "http://terminology.hl7.org/CodeSystem/designation-usage",
            "code" : "definition"
          },
          "value" : "Status: planned | Target: Lunar south pole landing | Launch: ~2027"
        }
      ],
      "property" : [
        {
          "code" : "status",
          "valueCode" : "planned"
        },
        {
          "code" : "target",
          "valueString" : "Lunar south pole landing"
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
    }
  ]
}

```
