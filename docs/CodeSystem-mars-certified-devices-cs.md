# Mars Mission Devices - Certified - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Mission Devices - Certified**

## CodeSystem: Mars Mission Devices - Certified (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-certified-devices-cs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:MarsCertifiedDevicesCS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsAllDevicesVS](ValueSet-mars-all-devices-vs.md)
* [MarsCertifiedDevicesVS](ValueSet-mars-certified-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-certified-devices-cs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mars-certified-devices-cs",
  "version" : "0.7.0",
  "name" : "MarsCertifiedDevicesCS",
  "title" : "Mars Mission Devices - Certified",
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
  "description" : "Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "property" : [
    {
      "code" : "deviceType",
      "description" : "Device category (spacecraft, life-support, suit, medical-equipment, habitat, isru-system, power-generation, rover)",
      "type" : "string"
    },
    {
      "code" : "manufacturer",
      "description" : "Device manufacturer",
      "type" : "string"
    }
  ],
  "concept" : [
    {
      "code" : "orion",
      "display" : "Orion MPCV Spacecraft",
      "definition" : "Orion Multi-Purpose Crew Vehicle for deep space transit (Artemis program), capable of Earth-Mars trajectory",
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
      "code" : "crewDragon",
      "display" : "SpaceX Crew Dragon",
      "definition" : "Operational crew vehicle to LEO, could support Earth orbit rendezvous for Mars missions",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "spacecraft"
        },
        {
          "code" : "manufacturer",
          "valueString" : "SpaceX"
        }
      ]
    },
    {
      "code" : "issECLSS",
      "display" : "ISS Environmental Control & Life Support System",
      "definition" : "Closed-loop life support (O2 generation, CO2 removal, water recycle) from ISS as baseline for Mars habitat",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "life-support"
        },
        {
          "code" : "manufacturer",
          "valueString" : "NASA / International Partners"
        }
      ]
    },
    {
      "code" : "emuSuit",
      "display" : "EMU Space Suit (ISS)",
      "definition" : "Extravehicular Mobility Unit, 4.3 psi suit for zero-G EVAs (heritage technology)",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "suit"
        },
        {
          "code" : "manufacturer",
          "valueString" : "ILC Dover / NASA"
        }
      ]
    },
    {
      "code" : "advancedMedicalLocker",
      "display" : "Advanced Medical Locker (ISS)",
      "definition" : "ISS Health Maintenance System including medical kit, defibrillator, ultrasound",
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
      "code" : "bioMonitor",
      "display" : "Bio-Monitor Wearable System",
      "definition" : "CSA/NASA health monitor shirt for continuous vital sign telemetry, currently used on ISS",
      "property" : [
        {
          "code" : "deviceType",
          "valueString" : "medical-equipment"
        },
        {
          "code" : "manufacturer",
          "valueString" : "Canadian Space Agency / NASA"
        }
      ]
    }
  ]
}

```
