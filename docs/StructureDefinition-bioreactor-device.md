# Bioreactor Device - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bioreactor Device**

## Resource Profile: Bioreactor Device 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/bioreactor-device | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:BioreactorDevice |

 
Bioreactor device for in-situ biomanufacturing including photobioreactors and fermentation vessels 

**Usages:**

* Examples for this Profile: [Device/Bioreactor-Algae-001](Device-Bioreactor-Algae-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/bioreactor-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bioreactor-device.csv), [Excel](StructureDefinition-bioreactor-device.xlsx), [Schematron](StructureDefinition-bioreactor-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bioreactor-device",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/bioreactor-device",
  "version" : "0.6.2",
  "name" : "BioreactorDevice",
  "title" : "Bioreactor Device",
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
  "description" : "Bioreactor device for in-situ biomanufacturing including photobioreactors and fermentation vessels",
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
        "short" : "Bioreactor type",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Device.property",
        "path" : "Device.property",
        "short" : "Reactor properties (volume, temperature, culture type)",
        "mustSupport" : true
      },
      {
        "id" : "Device.note",
        "path" : "Device.note",
        "short" : "Operational parameters and culture details",
        "mustSupport" : true
      }
    ]
  }
}

```
