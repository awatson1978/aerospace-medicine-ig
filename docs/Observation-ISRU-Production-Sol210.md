# ISRU Production Log - Sol 210 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Production Log - Sol 210**

## Example Observation: ISRU Production Log - Sol 210

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [ISRU Production Log](StructureDefinition-isru-production-log.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Operational

**code**: ISRU Propellant Production

**effective**: 2041-06-01 12:00:00+0000

**value**: 89000 kg(Details: UCUM codekg = 'kg')

**note**: 

> 

Production rate steady at 450 kg/sol average. On track to reach 112 tons for Earth return vehicle by Sol 300.


**device**: [Device: status = active; manufacturer = NASA / Commercial Partners; type = Mars ISRU Propellant Plant](Device-ISRU-Plant-Jezero-1.md)

> **component****code**:Reactor Status**value**: Nominal operation, 96% efficiency

> **component****code**:Power Consumption**value**: 25.3 kW(Details: UCUM codekW = 'kW')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISRU-Production-Sol210",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/isru-production-log"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/aerospace-observation-category-cs",
          "code" : "operational",
          "display" : "Operational"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isru-metrics-cs",
        "code" : "cumulative-propellant",
        "display" : "Cumulative Propellant Production"
      }
    ],
    "text" : "ISRU Propellant Production"
  },
  "effectiveDateTime" : "2041-06-01T12:00:00Z",
  "valueQuantity" : {
    "value" : 89000,
    "unit" : "kg",
    "system" : "http://unitsofmeasure.org",
    "code" : "kg"
  },
  "note" : [
    {
      "text" : "Production rate steady at 450 kg/sol average. On track to reach 112 tons for Earth return vehicle by Sol 300."
    }
  ],
  "device" : {
    "reference" : "Device/ISRU-Plant-Jezero-1"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isru-metrics-cs",
            "code" : "reactor-status",
            "display" : "Reactor Status"
          }
        ]
      },
      "valueString" : "Nominal operation, 96% efficiency"
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/isru-metrics-cs",
            "code" : "power-consumption",
            "display" : "Power Consumption"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 25.3,
        "unit" : "kW",
        "system" : "http://unitsofmeasure.org",
        "code" : "kW"
      }
    }
  ]
}

```
