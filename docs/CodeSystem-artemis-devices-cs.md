# Artemis Devices - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Devices**

## CodeSystem: Artemis Devices 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs | *Version*:0.5.12 |
| Active as of 2026-03-25 | *Computable Name*:ArtemisDevicesCS |

 
Unified device inventory for the Artemis program including crewed vehicles, EVA systems, landers, Gateway modules, LunaNet communications and navigation infrastructure, surface mobility (LTV variants and rovers), habitats, logistics assets, ISRU, and power systems 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-devices-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs",
  "version" : "0.5.12",
  "name" : "ArtemisDevicesCS",
  "title" : "Artemis Devices",
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
  "description" : "Unified device inventory for the Artemis program including crewed vehicles, EVA systems, landers, Gateway modules, LunaNet communications and navigation infrastructure, surface mobility (LTV variants and rovers), habitats, logistics assets, ISRU, and power systems",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 44,
  "property" : [
    {
      "code" : "deviceType",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs#deviceType",
      "description" : "Device category (spacecraft, launch-vehicle, suit, life-support, lander, habitat, propulsion, communications, navigation, medical-equipment, rover, drone, logistics, isru, power)",
      "type" : "code"
    },
    {
      "code" : "manufacturer",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs#manufacturer",
      "description" : "Device manufacturer or contractor",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "orion",
      "display" : "Orion Crew Vehicle",
      "definition" : "Spacecraft - Crew Module and Service Module. Manufacturer: Lockheed Martin / NASA.",
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
      "definition" : "Heavy-Lift Launch Vehicle. Manufacturer: Boeing / NASA.",
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
      "code" : "exploration-eva-suit",
      "display" : "Exploration EVA Suit",
      "definition" : "Exploration Extravehicular Mobility Unit. Manufacturer: Axiom Space / Collins Aerospace.",
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
      "code" : "plss",
      "display" : "Portable Life Support System",
      "definition" : "EVA Suit Life Support Backpack. Manufacturer: Collins Aerospace.",
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
    },
    {
      "code" : "human-landing-system",
      "display" : "Human Landing System",
      "definition" : "Lunar Lander. Manufacturer: SpaceX.",
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
      "code" : "clps-lander",
      "display" : "CLPS Lander",
      "definition" : "Commercial Lunar Payload Services Delivery Lander. Manufacturer: NASA / Commercial Providers.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "lander"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Commercial Providers"
        }
      ]
    },
    {
      "code" : "gateway-halo",
      "display" : "Gateway HALO Module",
      "definition" : "Habitation and Logistics Outpost Module. Manufacturer: Northrop Grumman.",
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
      "definition" : "Power and Propulsion Element. Manufacturer: Maxar Technologies.",
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
      "code" : "medical-kit",
      "display" : "Artemis Medical Kit",
      "definition" : "Emergency Medical Equipment. Manufacturer: NASA.",
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
      "code" : "lunanet",
      "display" : "LunaNet Communication Architecture",
      "definition" : "Lunar Communication and Navigation Network. Manufacturer: NASA / Partners.",
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
      "code" : "orbital-comm-relay",
      "display" : "Orbital Communication Relay",
      "definition" : "Orbital Relay Satellite for Lunar Communications. Manufacturer: NASA / Partners.",
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
      "code" : "observation-satellite",
      "display" : "Observation Satellite",
      "definition" : "Lunar Observation and Monitoring Satellite. Manufacturer: NASA / Partners.",
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
      "code" : "relay-satellite-observability",
      "display" : "Relay Satellite with Observability",
      "definition" : "Relay Satellite with Observability Functions. Manufacturer: NASA / Partners.",
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
      "code" : "surface-comm-nav-node",
      "display" : "Surface Communication and Navigation Node",
      "definition" : "Lunar Surface Communication and Navigation Infrastructure. Manufacturer: NASA / Partners.",
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
      "code" : "deployable-surface-comm-tower",
      "display" : "Deployable Surface Communication Tower",
      "definition" : "Deployable Surface Communications Tower. Manufacturer: NASA / Partners.",
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
      "code" : "high-throughput-surface-comms",
      "display" : "High-Throughput Surface Communications Node",
      "definition" : "High-Bandwidth Lunar Surface Communications. Manufacturer: NASA / Partners.",
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
      "code" : "lunar-pnt-node",
      "display" : "Lunar PNT Node",
      "definition" : "Positioning Navigation and Timing Infrastructure. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "navigation"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "clock-demo-node",
      "display" : "Lunar Clock Demonstration Node",
      "definition" : "Surface Timing and Synchronization Demonstrator. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "navigation"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "navigation-capability-node",
      "display" : "Navigation Capability Node",
      "definition" : "Lunar Navigation Infrastructure Element. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "navigation"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "moonfall-drone",
      "display" : "MoonFall Drone",
      "definition" : "Lunar Surface Aerial or Descent Support Drone. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "drone"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "ltv",
      "display" : "Lunar Terrain Vehicle",
      "definition" : "Lunar Surface Mobility Platform. Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "crewed-ltv",
      "display" : "Crewed LTV",
      "definition" : "Crewed Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "uncrewed-ltv",
      "display" : "Uncrewed LTV",
      "definition" : "Uncrewed Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "advanced-ltv",
      "display" : "Advanced LTV",
      "definition" : "Advanced Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "ltv-gen-2",
      "display" : "LTV Generation 2",
      "definition" : "Second-Generation Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "pressurized-rover",
      "display" : "Pressurized Rover",
      "definition" : "Pressurized Lunar Rover. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "viper-rover",
      "display" : "VIPER Rover",
      "definition" : "Volatiles Investigating Polar Exploration Rover. Manufacturer: NASA.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA"
        }
      ]
    },
    {
      "code" : "excavator-rover",
      "display" : "Excavator Rover",
      "definition" : "Lunar Surface Excavation Rover. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "site-prep-logistics-rover",
      "display" : "Site Preparation and Logistics Rover",
      "definition" : "Rover for Site Preparation and Logistics Tasks. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "international-partner-rover",
      "display" : "International Partner Rover",
      "definition" : "Partner-Provided Lunar Rover. Manufacturer: International Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "International Partners"
        }
      ]
    },
    {
      "code" : "science-rover",
      "display" : "Science Rover",
      "definition" : "Lunar Surface Science Rover. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "rover"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "basecamp-habitat",
      "display" : "Artemis Base Camp Surface Habitat",
      "definition" : "Lunar Surface Living Quarters. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "habitat"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "surface-habitat-module",
      "display" : "Surface Habitat Module",
      "definition" : "Lunar Surface Habitat Infrastructure. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "habitat"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "logistics-demo-unit",
      "display" : "Logistics Demonstration Unit",
      "definition" : "Demonstrator for Lunar Surface Logistics. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "logistics"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "logistics-delivery-vehicle",
      "display" : "Logistics Delivery Vehicle",
      "definition" : "Lunar Surface or Cargo Delivery Logistics Asset. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "logistics"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "cargo-return-vehicle",
      "display" : "Cargo Return Vehicle",
      "definition" : "Vehicle for Returning Cargo from Lunar Surface Operations. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "logistics"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "isru-plant",
      "display" : "ISRU Plant",
      "definition" : "In Situ Resource Utilization Processing System. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "isru"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "solar-power-augmentation-unit",
      "display" : "Solar Power Augmentation Unit",
      "definition" : "Solar Power Augmentation Infrastructure. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "solar-battery-rfc-power-unit",
      "display" : "Solar Battery RFC Power Unit",
      "definition" : "Solar Battery and Regenerative Fuel Cell Power System. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "rtg-power-unit",
      "display" : "RTG Power Unit",
      "definition" : "Radioisotope Thermoelectric Generator Power System. Manufacturer: NASA / DOE / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
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
      "definition" : "Radioisotope Heater Unit for Lunar Night Survival. Manufacturer: NASA / DOE / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / DOE / Partners"
        }
      ]
    },
    {
      "code" : "fission-surface-power-unit",
      "display" : "Fission Surface Power Unit",
      "definition" : "Lunar Surface Fission Power System. Manufacturer: NASA / DOE / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / DOE / Partners"
        }
      ]
    },
    {
      "code" : "power-infrastructure-node",
      "display" : "Power Infrastructure Node",
      "definition" : "Surface Electrical Power Infrastructure. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "power-distribution-node",
      "display" : "Power Distribution Node",
      "definition" : "Surface Power Distribution System. Manufacturer: NASA / Partners.",
      "property" : [
        {
          "code" : "deviceType",
          "valueCode" : "power"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    }
  ]
}

```
