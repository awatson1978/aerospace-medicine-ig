# Ultrasound Monitoring Device - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ultrasound Monitoring Device**

## Resource Profile: Ultrasound Monitoring Device 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/ultrasound-monitoring-device | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:UltrasoundMonitoringDevice |

 
Point-of-care ultrasound device for IJV imaging (e.g., Butterfly iQ3) 

**Usages:**

* Examples for this Profile: [Device/Butterfly-iQ3-001](Device-Butterfly-iQ3-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/ultrasound-monitoring-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ultrasound-monitoring-device.csv), [Excel](StructureDefinition-ultrasound-monitoring-device.xlsx), [Schematron](StructureDefinition-ultrasound-monitoring-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ultrasound-monitoring-device",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/ultrasound-monitoring-device",
  "version" : "0.6.0",
  "name" : "UltrasoundMonitoringDevice",
  "title" : "Ultrasound Monitoring Device",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Point-of-care ultrasound device for IJV imaging (e.g., Butterfly iQ3)",
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
        "id" : "Device.status",
        "path" : "Device.status",
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
        "short" : "Ultrasound device type",
        "mustSupport" : true
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
