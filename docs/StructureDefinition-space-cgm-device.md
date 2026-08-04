# Space CGM Device - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space CGM Device**

## Resource Profile: Space CGM Device 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-device | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:SpaceCGMDevice |

 
Continuous glucose monitoring device used during spaceflight 

**Usages:**

* Refer to this Profile: [Space CGM Observation](StructureDefinition-space-cgm-observation.md)
* Examples for this Profile: [Device/CGM-Dexcom-G7-001](Device-CGM-Dexcom-G7-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-cgm-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-cgm-device.csv), [Excel](StructureDefinition-space-cgm-device.xlsx), [Schematron](StructureDefinition-space-cgm-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-cgm-device",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-device",
  "version" : "0.6.2",
  "name" : "SpaceCGMDevice",
  "title" : "Space CGM Device",
  "status" : "active",
  "date" : "2026-08-03T22:31:50-05:00",
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
  "description" : "Continuous glucose monitoring device used during spaceflight",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.extension",
        "path" : "Device.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Device.extension:missionContext",
        "path" : "Device.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Device.manufacturer",
        "path" : "Device.manufacturer",
        "mustSupport" : true
      },
      {
        "id" : "Device.serialNumber",
        "path" : "Device.serialNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.deviceName",
        "path" : "Device.deviceName",
        "mustSupport" : true
      },
      {
        "id" : "Device.modelNumber",
        "path" : "Device.modelNumber",
        "mustSupport" : true
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "short" : "CGM device type",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/cgm-device-type-vs"
        }
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "type"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Device.property:sensorDuration",
        "path" : "Device.property",
        "sliceName" : "sensorDuration",
        "short" : "Maximum sensor wear duration in days",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:sensorDuration.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "410670002",
              "display" : "Duration of device use"
            }
          ]
        }
      },
      {
        "id" : "Device.property:measurementRange",
        "path" : "Device.property",
        "sliceName" : "measurementRange",
        "short" : "Glucose measurement range",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Device.property:measurementRange.type",
        "path" : "Device.property.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "118560000",
              "display" : "Measurement range"
            }
          ]
        }
      },
      {
        "id" : "Device.patient",
        "path" : "Device.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
