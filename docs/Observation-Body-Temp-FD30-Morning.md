# Body Temperature - Flight Day 30 Morning - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Body Temperature - Flight Day 30 Morning**

## Example Observation: Body Temperature - Flight Day 30 Morning

Profile: [Space Body Temperature Observation](StructureDefinition-space-body-temperature.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Circadian Phase**: Morning Nadir

**Flight Day**: 30

**status**: Final

**category**: Vital Signs

**code**: Body temperature

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-04-14 06:30:00+0000

**value**: 36.8 °C(Details: UCUM codeCel = 'Cel')

**method**: Oral Thermometer

> **component****code**:Room temperature**value**: 22.5 °C(Details: UCUM codeCel = 'Cel')

> **component****code**:Physical activity**value**: 120 min(Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Body-Temp-FD30-Morning",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-body-temperature"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/circadian-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/circadian-phase-cs",
            "code" : "morning-nadir",
            "display" : "Morning Nadir"
          }
        ]
      }
    },
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/flight-day",
      "valueInteger" : 30
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "8310-5",
        "display" : "Body temperature"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-04-14T06:30:00Z",
  "valueQuantity" : {
    "value" : 36.8,
    "unit" : "°C",
    "system" : "http://unitsofmeasure.org",
    "code" : "Cel"
  },
  "method" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/temperature-measurement-method-cs",
        "code" : "oral-thermometer",
        "display" : "Oral Thermometer"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "60832-3",
            "display" : "Room temperature"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 22.5,
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "68130003",
            "display" : "Physical activity"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 120,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  ]
}

```
