# ISRU Production Log - Sol 210 - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ISRU Production Log - Sol 210**

## Example Observation: ISRU Production Log - Sol 210

Profile: [ISRU Production Log](StructureDefinition-isru-production-log.md)

**status**: Final

**category**: operational

**code**: Cumulative Propellant Production

**effective**: 2041-06-01 12:00:00+0000

**value**: 89000 kg(Details: UCUM codekg = 'kg')

**note**: 

> 

Production rate steady at 450 kg/sol average. On track to reach 112 tons for Earth return vehicle by Sol 300.


**device**: [Device: status = active; manufacturer = NASA / Commercial Partners; type = Mars ISRU Propellant Plant](Device-ISRU-Plant-Jezero-1.md)

> **component****code**:power-consumption**value**: 25.3 kW(Details: UCUM codekW = 'kW')

> **component****code**:reactor-status**value**: Nominal operation, 96% efficiency



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ISRU-Production-Sol210",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/isru-production-log"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/observation-category-aerospace",
          "code" : "operational"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs",
        "code" : "cumulative-propellant",
        "display" : "Cumulative Propellant Production"
      }
    ]
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
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs",
            "code" : "power-consumption"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 25.3,
        "unit" : "kW",
        "system" : "http://unitsofmeasure.org",
        "code" : "kW"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs",
            "code" : "reactor-status"
          }
        ]
      },
      "valueString" : "Nominal operation, 96% efficiency"
    }
  ]
}

```
