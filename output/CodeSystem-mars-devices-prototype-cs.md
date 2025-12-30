# Mars Mission Devices - Prototype - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Mission Devices - Prototype**

## CodeSystem: Mars Mission Devices - Prototype 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:MarsPrototypeDevicesCS |

 
Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsAllDevicesVS](ValueSet-mars-all-devices-vs.md)
* [MarsPrototypeDevicesVS](ValueSet-mars-devices-prototype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-devices-prototype-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs",
  "version" : "0.5.5",
  "name" : "MarsPrototypeDevicesCS",
  "title" : "Mars Mission Devices - Prototype",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "property" : [
    {
      "code" : "deviceType",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs#deviceType",
      "description" : "Device category",
      "type" : "code"
    },
    {
      "code" : "testEnvironment",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs#testEnvironment",
      "description" : "Primary test environment",
      "type" : "code"
    }
  ],
  "concept" : [
    {
      "code" : "starship",
      "display" : "SpaceX Starship",
      "definition" : "Fully reusable rocket/lander for Mars (prototype stage, orbital tests ongoing 2020s)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "spacecraft"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "orbital-test"
        }
      ]
    },
    {
      "code" : "marsHabitat",
      "display" : "Mars Surface Habitat Module",
      "definition" : "Pressurized living quarters for Mars surface (NASA DRA 5.0 concept, no full prototype yet)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "habitat"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "analog-mission"
        }
      ]
    },
    {
      "code" : "xemuMarsSuit",
      "display" : "xEMU Mars Suit",
      "definition" : "Next-generation planetary EVA suit under development for lunar and Mars surface EVAs",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "suit"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
        }
      ]
    },
    {
      "code" : "isruPlant",
      "display" : "Mars ISRU Propellant Plant",
      "definition" : "Scaled-up MOXIE + Sabatier system to produce CH4/O2 on Mars (tested at prototype level, MOXIE on Perseverance for O2)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "isru-system"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "mars-surface"
        }
      ]
    },
    {
      "code" : "kilopower",
      "display" : "Kilopower Fission Reactor",
      "definition" : "10 kW nuclear fission surface power unit (prototyped on Earth 2018, KRUSTY demo, for future Mars use)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power-generation"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
        }
      ]
    },
    {
      "code" : "pressurizedRover",
      "display" : "Pressurized Mars Rover",
      "definition" : "Concept vehicle for long-range crew excursions (prototypes like NASA SEV exist but not Mars-certified)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
        }
      ]
    },
    {
      "code" : "autonomousSurgicalUnit",
      "display" : "Autonomous Surgical Unit",
      "definition" : "Concept medical device for Mars (lightweight operating table, robotic assist tools, TRL<6 prototype)",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "medical-equipment"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
        }
      ]
    }
  ]
}

```
