# Habitat Environmental Conditions - Sol 125 - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitat Environmental Conditions - Sol 125**

## Example Observation: Habitat Environmental Conditions - Sol 125

Profile: [Habitat Environmental Monitoring](StructureDefinition-habitat-environmental-observation.md)

**status**: Final

**category**: environmental

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/habitat-environmental-observation"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "environmental"
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
