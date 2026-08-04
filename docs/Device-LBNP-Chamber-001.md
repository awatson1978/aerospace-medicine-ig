# LBNP Chamber Device - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LBNP Chamber Device**

## Example Device: LBNP Chamber Device

Profile: [LBNP Countermeasure System](StructureDefinition-lbnp-countermeasure-system.md)

**status**: Active

**manufacturer**: ESA Life Sciences

**serialNumber**: LBNP-ESA-2025-001

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | ESA LBNP Chamber #LBNP-001 | User Friendly name |

**modelNumber**: LBNP-PFC-2025

**type**: Lower Body Negative Pressure Chamber

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **ValueQuantity** |
| * | Maximum Negative Pressure | -50 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]') |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "LBNP-Chamber-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/lbnp-countermeasure-system"
    ]
  },
  "status" : "active",
  "manufacturer" : "ESA Life Sciences",
  "serialNumber" : "LBNP-ESA-2025-001",
  "deviceName" : [
    {
      "name" : "ESA LBNP Chamber #LBNP-001",
      "type" : "user-friendly-name"
    }
  ],
  "modelNumber" : "LBNP-PFC-2025",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "706767009",
        "display" : "Suction device"
      }
    ],
    "text" : "Lower Body Negative Pressure Chamber"
  },
  "property" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "250837005",
            "display" : "Negative pressure"
          }
        ],
        "text" : "Maximum Negative Pressure"
      },
      "valueQuantity" : [
        {
          "value" : -50,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      ]
    }
  ]
}

```
