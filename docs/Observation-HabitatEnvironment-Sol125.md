# Habitat Environmental Conditions - Sol 125 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitat Environmental Conditions - Sol 125**

## Example Observation: Habitat Environmental Conditions - Sol 125

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Habitat Environmental Monitoring](StructureDefinition-habitat-environmental-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**category**: Environmental

**code**: Habitat Atmospheric Conditions

**subject**: [Location Mars Direct Habitat Unit - Jezero Site](Location-MarsHabitat-Jezero.md)

**effective**: 2041-03-15 14:30:00+0000

> **component****code**:Cabin Pressure**value**: 101.3 kPa(Details: UCUM codekPa = 'kPa')

> **component****code**:Oxygen Percentage**value**: 21 %(Details: UCUM code% = '%')

> **component****code**:Carbon Dioxide**value**: 0.04 %(Details: UCUM code% = '%')

> **component****code**:Temperature**value**: 22.5 Cel(Details: UCUM codeCel = 'Cel')

> **component****code**:Relative Humidity**value**: 45 %(Details: UCUM code% = '%')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "HabitatEnvironment-Sol125",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/habitat-environmental-observation"
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
          "code" : "environmental",
          "display" : "Environmental"
        }
      ]
    }
  ],
  "code" : {
    "text" : "Habitat Atmospheric Conditions"
  },
  "subject" : {
    "reference" : "Location/MarsHabitat-Jezero"
  },
  "effectiveDateTime" : "2041-03-15T14:30:00Z",
  "component" : [
    {
      "code" : {
        "text" : "Cabin Pressure"
      },
      "valueQuantity" : {
        "value" : 101.3,
        "unit" : "kPa",
        "system" : "http://unitsofmeasure.org",
        "code" : "kPa"
      }
    },
    {
      "code" : {
        "text" : "Oxygen Percentage"
      },
      "valueQuantity" : {
        "value" : 21,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "code" : {
        "text" : "Carbon Dioxide"
      },
      "valueQuantity" : {
        "value" : 0.04,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "code" : {
        "text" : "Temperature"
      },
      "valueQuantity" : {
        "value" : 22.5,
        "unit" : "Cel",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "code" : {
        "text" : "Relative Humidity"
      },
      "valueQuantity" : {
        "value" : 45,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  ]
}

```
