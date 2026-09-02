# Artemis Prototype Devices - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Prototype Devices**

## CodeSystem: Artemis Prototype Devices (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-prototype-devices-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:ArtemisPrototypeDevicesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Developmental and test hardware not yet flight-certified: demo units, ground analogs, next-generation prototypes, and planned LunaNet, surface mobility, habitat, logistics, ISRU, and surface power infrastructure elements 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.md)
* [ArtemisPrototypeDevicesVS](ValueSet-artemis-prototype-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-prototype-devices-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/artemis-prototype-devices-cs",
  "version" : "0.7.0",
  "name" : "ArtemisPrototypeDevicesCS",
  "title" : "Artemis Prototype Devices",
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
  "description" : "Developmental and test hardware not yet flight-certified: demo units, ground analogs, next-generation prototypes, and planned LunaNet, surface mobility, habitat, logistics, ISRU, and surface power infrastructure elements",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 34,
  "property" : [
    {
      "code" : "deviceType",
      "description" : "Device category (suit, life-support, habitat, communications, navigation, medical-equipment, rover, drone, logistics, isru, power)",
      "type" : "string"
    },
    {
      "code" : "testEnvironment",
      "description" : "Primary test environment (ground, iss, analog-mission)",
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
      "code" : "xemu-demo",
      "display" : "xEMU Demo Unit",
      "definition" : "Prototype EVA suit used in ground testing or ISS demonstration (not flight-certified). Test env: ground.",
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
      "code" : "nextgen-plss",
      "display" : "Next-Generation PLSS",
      "definition" : "Next-generation Portable Life Support System under development (for suits beyond Artemis). Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "life-support"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
        }
      ]
    },
    {
      "code" : "biomonitor-wearable",
      "display" : "BioMonitor Wearable Prototype",
      "definition" : "Experimental biomedical monitoring device (advanced smart garment for astronauts in trial). Test env: ISS.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "medical-equipment"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "iss"
        }
      ]
    },
    {
      "code" : "autonomous-medical-unit",
      "display" : "Autonomous Medical Unit Prototype",
      "definition" : "Prototype diagnostic device or smart medical assistant being evaluated for lunar use. Test env: ground.",
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
    },
    {
      "code" : "habitat-test-module",
      "display" : "Habitat Test Module",
      "definition" : "Ground-based habitat prototype (e.g., 3D-printed habitat analog or Lunar/Mars yard modules). Test env: analog-mission.",
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
      "code" : "surface-habitat-module",
      "display" : "Surface Habitat Module",
      "definition" : "Planned lunar surface habitat infrastructure element. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "habitat"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "pressurized-rover-proto",
      "display" : "Pressurized Rover Prototype",
      "definition" : "Early concept lunar pressurized rover (testing life support and habitat functions on Earth). Test env: ground.",
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
      "code" : "crewed-ltv",
      "display" : "Crewed LTV",
      "definition" : "Crewed Lunar Terrain Vehicle variant under development. Manufacturer: NASA / Industry Team. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Uncrewed (teleoperated) Lunar Terrain Vehicle variant under development. Manufacturer: NASA / Industry Team. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Advanced Lunar Terrain Vehicle concept. Manufacturer: NASA / Industry Team. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Second-generation Lunar Terrain Vehicle concept. Manufacturer: NASA / Industry Team. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Industry Team"
        }
      ]
    },
    {
      "code" : "excavator-rover",
      "display" : "Excavator Rover",
      "definition" : "Lunar surface excavation rover under development. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Rover concept for site preparation and logistics tasks. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Partner-provided lunar rover under development. Manufacturer: International Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Lunar surface science rover concept. Manufacturer: NASA / Partners. Test env: analog-mission.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "analog-mission"
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
      "definition" : "Lunar surface aerial or descent support drone concept. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "drone"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Orbital relay satellite for lunar communications. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Lunar observation and monitoring satellite. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Relay satellite with observability functions. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Lunar surface communication and navigation infrastructure node. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Deployable surface communications tower. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "High-bandwidth lunar surface communications node. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "communications"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Positioning, navigation, and timing infrastructure node. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "navigation"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Surface timing and synchronization demonstrator. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "navigation"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Lunar navigation infrastructure element. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "navigation"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Demonstrator for lunar surface logistics. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "logistics"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Lunar surface or cargo delivery logistics asset concept. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "logistics"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Vehicle concept for returning cargo from lunar surface operations. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "logistics"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "In Situ Resource Utilization processing system under development. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "isru"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Solar power augmentation infrastructure. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Solar, battery, and regenerative fuel cell power system. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / Partners"
        }
      ]
    },
    {
      "code" : "fission-surface-power-unit",
      "display" : "Fission Surface Power Unit",
      "definition" : "Lunar surface fission power system under development. Manufacturer: NASA / DOE / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Surface electrical power infrastructure node. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
      "definition" : "Surface power distribution system. Manufacturer: NASA / Partners. Test env: ground.",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "power"
        },
        {
          "code" : "testEnvironment",
          "valueString" : "ground"
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
