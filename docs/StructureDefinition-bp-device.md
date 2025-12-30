# Blood Pressure Device - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Blood Pressure Device**

## Resource Profile: Blood Pressure Device 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/bp-device | *Version*:0.5.1 |
| Active as of 2022-09-11 | *Computable Name*:BloodPressureDevice |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size. 

**Usages:**

* Refer to this Profile: [Average Blood Pressure](StructureDefinition-average-blood-pressure.md), [Blood Pressure Panel](StructureDefinition-blood-pressure-panel.md) and [Twenty Four Hour Blood Pressure](StructureDefinition-twenty-four-hour-blood-pressure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/bp-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-bp-device.csv), [Excel](StructureDefinition-bp-device.xlsx), [Schematron](StructureDefinition-bp-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "bp-device",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-category",
      "valueString" : "Base.Entities"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category",
      "valueCode" : "business"
    }
  ],
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/bp-device",
  "version" : "0.5.1",
  "name" : "BloodPressureDevice",
  "title" : "Blood Pressure Device",
  "status" : "active",
  "date" : "2022-09-11T16:19:45+00:00",
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
  "description" : "A profile of the Device resource used specifically for blood pressure devices and includes an extension for blood pressure cuff size.",
  "copyright" : "Logica Health, all rights reserved Creative Commons License",
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
        "id" : "Device.extension:cuffSize",
        "path" : "Device.extension",
        "sliceName" : "cuffSize",
        "short" : "Cuff Size",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/us/vitals/StructureDefinition/bp-cuff-size-ext"
            ]
          }
        ]
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/bpMeasDeviceVS"
        }
      }
    ]
  }
}

```
