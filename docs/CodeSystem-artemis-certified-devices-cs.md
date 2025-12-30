# Artemis Certified Devices - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Certified Devices**

## CodeSystem: Artemis Certified Devices 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:ArtemisCertifiedDevicesCS |

 
Flight-qualified hardware and systems used in Artemis missions (Orion, xEMU, Starship-HLS, Gateway, LTV, etc.) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.md)
* [ArtemisCertifiedDevicesVS](ValueSet-artemis-certified-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-certified-devices-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs",
  "version" : "0.5.5",
  "name" : "ArtemisCertifiedDevicesCS",
  "title" : "Artemis Certified Devices",
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
  "description" : "Flight-qualified hardware and systems used in Artemis missions (Orion, xEMU, Starship-HLS, Gateway, LTV, etc.)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "property" : [
    {
      "code" : "deviceType",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs#deviceType",
      "description" : "Device category (spacecraft, suit, vehicle, habitat, equipment)",
      "type" : "code"
    },
    {
      "code" : "manufacturer",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs#manufacturer",
      "description" : "Device manufacturer/contractor",
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
          "valueCode" : "spacecraft"
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
          "valueCode" : "launch-vehicle"
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
          "valueCode" : "suit"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Axiom Space / Collins Aerospace"
        }
      ]
    },
    {
      "code" : "starship-hls",
      "display" : "Starship Human Landing System",
      "definition" : "SpaceX Starship variant serving as lunar lander for Artemis III. Manufacturer: SpaceX.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "lander"
        },
        {
          "code" : "manufacturer",
          "valueString" : "SpaceX"
        }
      ]
    },
    {
      "code" : "ltv",
      "display" : "Lunar Terrain Vehicle",
      "definition" : "Unpressurized rover for surface mobility (Artemis V and later). Manufacturer: TBD.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "TBD"
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
          "valueCode" : "habitat"
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
          "valueCode" : "propulsion"
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
          "valueCode" : "habitat"
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
      "definition" : "Lunar communication network elements (relay satellites or surface comm devices). Manufacturer: NASA/Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "communications"
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
          "valueCode" : "medical-equipment"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA"
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
          "valueCode" : "life-support"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Collins Aerospace"
        }
      ]
    }
  ]
}

```
