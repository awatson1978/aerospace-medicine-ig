# Mars Mission Devices - Prototype - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Mission Devices - Prototype**

## CodeSystem: Mars Mission Devices - Prototype (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-prototype-devices-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MarsPrototypeDevicesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsAllDevicesVS](ValueSet-mars-all-devices-vs.md)
* [MarsPrototypeDevicesVS](ValueSet-mars-prototype-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-prototype-devices-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-prototype-devices-cs",
  "version" : "0.7.0",
  "name" : "MarsPrototypeDevicesCS",
  "title" : "Mars Mission Devices - Prototype",
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
  "description" : "Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "property" : [
    {
      "code" : "deviceType",
      "description" : "Device category (spacecraft, life-support, suit, medical-equipment, habitat, isru-system, power-generation, rover)",
      "type" : "string"
    },
    {
      "code" : "testEnvironment",
      "description" : "Primary test environment (ground, orbital-test, analog-mission, mars-surface)",
      "type" : "string"
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
          "valueString" : "spacecraft"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "orbital-test"
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
          "valueString" : "habitat"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "analog-mission"
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
          "valueString" : "suit"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
          "valueString" : "isru-system"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "mars-surface"
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
          "valueString" : "power-generation"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
          "valueString" : "medical-equipment"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
        }
      ]
    }
  ]
}

```
