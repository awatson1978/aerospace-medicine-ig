# Mars Mission Devices - Certified - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Mission Devices - Certified**

## CodeSystem: Mars Mission Devices - Certified 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-certified-cs | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:MarsCertifiedDevicesCS |

 
Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [MarsAllDevicesVS](ValueSet-mars-all-devices-vs.md)
* [MarsCertifiedDevicesVS](ValueSet-mars-devices-certified-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mars-devices-certified-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-certified-cs",
  "version" : "0.5.5",
  "name" : "MarsCertifiedDevicesCS",
  "title" : "Mars Mission Devices - Certified",
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
  "description" : "Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "property" : [
    {
      "code" : "deviceType",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-certified-cs#deviceType",
      "description" : "Device category",
      "type" : "code"
    },
    {
      "code" : "manufacturer",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-certified-cs#manufacturer",
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
          "valueCode" : "spacecraft"
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
          "valueCode" : "spacecraft"
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
          "valueCode" : "life-support"
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
          "valueCode" : "suit"
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
          "valueCode" : "medical-equipment"
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
          "valueCode" : "medical-equipment"
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
