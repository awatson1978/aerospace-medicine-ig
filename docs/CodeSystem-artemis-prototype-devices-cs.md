# Artemis Prototype Devices - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis Prototype Devices**

## CodeSystem: Artemis Prototype Devices 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:ArtemisPrototypeDevicesCS |

 
Developmental and test hardware not yet flight-certified (demo units, ground analogs, next-gen prototypes) 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.md)
* [ArtemisPrototypeDevicesVS](ValueSet-artemis-prototype-devices-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "artemis-prototype-devices-cs",
  "url" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs",
  "version" : "0.5.0",
  "name" : "ArtemisPrototypeDevicesCS",
  "title" : "Artemis Prototype Devices",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Developmental and test hardware not yet flight-certified (demo units, ground analogs, next-gen prototypes)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "property" : [
    {
      "code" : "deviceType",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs#deviceType",
      "description" : "Device category (spacecraft, suit, vehicle, habitat, equipment)",
      "type" : "code"
    },
    {
      "code" : "testEnvironment",
      "uri" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs#testEnvironment",
      "description" : "Primary test environment (ground, ISS, analog-mission)",
      "type" : "code"
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
          "valueCode" : "suit"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
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
          "valueCode" : "rover"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
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
          "valueCode" : "habitat"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "analog-mission"
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
          "valueCode" : "life-support"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "ground"
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
          "valueCode" : "medical-equipment"
        },
        {
          "code" : "testEnvironment",
          "valueCode" : "iss"
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
