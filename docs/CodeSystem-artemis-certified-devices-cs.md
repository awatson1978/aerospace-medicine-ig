# Artemis Certified Devices - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Certified Devices**

## CodeSystem: Artemis Certified Devices (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-certified-devices-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ArtemisCertifiedDevicesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Flight-qualified hardware and systems used in Artemis missions (Orion, SLS, xEMU, Starship-HLS, CLPS landers, Gateway modules, LTV, radioisotope power units, etc.) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.md)
* [ArtemisCertifiedDevicesVS](ValueSet-artemis-certified-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-certified-devices-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-certified-devices-cs",
  "version" : "0.7.0",
  "name" : "ArtemisCertifiedDevicesCS",
  "title" : "Artemis Certified Devices",
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
  "description" : "Flight-qualified hardware and systems used in Artemis missions (Orion, SLS, xEMU, Starship-HLS, CLPS landers, Gateway modules, LTV, radioisotope power units, etc.)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 15,
  "property" : [
    {
      "code" : "deviceType",
      "description" : "Device category (spacecraft, launch-vehicle, suit, life-support, lander, habitat, propulsion, communications, medical-equipment, rover, power)",
      "type" : "string"
    },
    {
      "code" : "manufacturer",
      "description" : "Device manufacturer or contractor",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "orion",
      "display" : "Orion Crew Vehicle",
      "definition" : "Orion Crew Module and Service Module (CM/SM) - spacecraft carrying crew to lunar orbit. Manufacturer: Lockheed Martin/NASA.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "spacecraft"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Lockheed Martin / NASA"
        }
      ]
    },
    {
      "code" : "sls",
      "display" : "Space Launch System",
      "definition" : "Space Launch System rocket - heavy-lift launch vehicle for Artemis missions. Manufacturer: Boeing/NASA.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "launch-vehicle"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Boeing / NASA"
        }
      ]
    },
    {
      "code" : "xemu-suit",
      "display" : "xEMU EVA Suit",
      "definition" : "Exploration Extravehicular Mobility Unit - next-generation spacesuit for lunar surface EVAs. Manufacturer: Axiom Space/Collins Aerospace.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "suit"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Axiom Space / Collins Aerospace"
        }
      ]
    },
    {
      "code" : "plss",
      "display" : "Portable Life Support System",
      "definition" : "PLSS backpack for xEMU suit (life support during EVA). Manufacturer: Collins Aerospace.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "life-support"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Collins Aerospace"
        }
      ]
    },
    {
      "code" : "starship-hls",
      "display" : "Starship Human Landing System",
      "definition" : "SpaceX Starship variant serving as the Artemis human landing system. Manufacturer: SpaceX.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "lander"
        },
        {
          "code" : "manufacturer",
          "valueString" : "SpaceX"
        }
      ]
    },
    {
      "code" : "clps-lander",
      "display" : "CLPS Lander",
      "definition" : "Commercial Lunar Payload Services delivery lander for robotic payload delivery to the lunar surface. Manufacturer: NASA / Commercial Providers.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "lander"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Commercial Providers"
        }
      ]
    },
    {
      "code" : "ltv",
      "display" : "Lunar Terrain Vehicle",
      "definition" : "Unpressurized rover for surface mobility (Artemis V and later). Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "viper-rover",
      "display" : "VIPER Rover",
      "definition" : "Volatiles Investigating Polar Exploration Rover - flight-built robotic rover for lunar south pole volatile prospecting. Manufacturer: NASA.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA"
        }
      ]
    },
    {
      "code" : "gateway-halo",
      "display" : "Gateway HALO Module",
      "definition" : "Habitation and Logistics Outpost module of Lunar Gateway (primary habitat). Manufacturer: Northrop Grumman.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "habitat"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Northrop Grumman"
        }
      ]
    },
    {
      "code" : "gateway-ppe",
      "display" : "Gateway PPE Module",
      "definition" : "Power and Propulsion Element module of Lunar Gateway. Manufacturer: Maxar Technologies.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "propulsion"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Maxar Technologies"
        }
      ]
    },
    {
      "code" : "basecamp-hab",
      "display" : "Artemis Base Camp Surface Habitat",
      "definition" : "Planned future lunar base living quarters on surface. Manufacturer: TBD.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "habitat"
        },
        {
          "code" : "manufacturer",
          "valueString" : "TBD"
        }
      ]
    },
    {
      "code" : "lunanet-comm",
      "display" : "LunaNet Communication System",
      "definition" : "Lunar communication and navigation network elements (relay satellites or surface comm devices). Manufacturer: NASA/Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "medical-kit",
      "display" : "Artemis Medical Kit",
      "definition" : "Artemis mission medical equipment set (emergency medical pack, diagnostics). Manufacturer: NASA.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "medical-equipment"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA"
        }
      ]
    },
    {
      "code" : "rtg-power-unit",
      "display" : "RTG Power Unit",
      "definition" : "Radioisotope Thermoelectric Generator power system. Manufacturer: NASA / DOE / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / DOE / Partners"
        }
      ]
    },
    {
      "code" : "rhu-thermal-survival-unit",
      "display" : "RHU Thermal Survival Unit",
      "definition" : "Radioisotope Heater Unit for lunar night survival. Manufacturer: NASA / DOE / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / DOE / Partners"
        }
      ]
    }
  ]
}

```
