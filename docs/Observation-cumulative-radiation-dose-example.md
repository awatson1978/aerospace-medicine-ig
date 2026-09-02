# Cumulative Radiation Dose, ISS Expedition 75 (example) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cumulative Radiation Dose, ISS Expedition 75 (example)**

## Example Observation: Cumulative Radiation Dose, ISS Expedition 75 (example)

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Cumulative Radiation Dose](StructureDefinition-cumulative-radiation-dose.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**status**: Final

**category**: Radiation dose and image quality indicators

**code**: Radiation dose total

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**encounter**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**effective**: 2025-06-01 --> 2025-11-28

**value**: 94 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Daily Radiation Dose**value**: 0.52 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Weekly Radiation Dose**value**: 3.6 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:30-Day Radiation Dose**value**: 15.4 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Mission Radiation Dose**value**: 94 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Career Radiation Dose**value**: 212 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Compliance Status**value**:Within NASA-STD-3001 600 mSv career effective-dose limit



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cumulative-radiation-dose-example",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/cumulative-radiation-dose"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/ISS-Exp75-InFlight"
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "73569-6",
          "display" : "Radiation dose and image quality indicators"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "73536-5",
        "display" : "Radiation dose total"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "encounter" : {
    "reference" : "Encounter/ISS-Exp75-InFlight"
  },
  "effectivePeriod" : {
    "start" : "2025-06-01",
    "end" : "2025-11-28"
  },
  "valueQuantity" : {
    "value" : 94,
    "unit" : "mSv",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "daily-dose",
            "display" : "Daily Radiation Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.52,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "weekly-dose",
            "display" : "Weekly Radiation Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 3.6,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "monthly-dose",
            "display" : "30-Day Radiation Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 15.4,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "mission-dose",
            "display" : "Mission Radiation Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 94,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "career-dose",
            "display" : "Career Radiation Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 212,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "compliance-status",
            "display" : "Compliance Status"
          }
        ]
      },
      "valueCodeableConcept" : {
        "text" : "Within NASA-STD-3001 600 mSv career effective-dose limit"
      }
    }
  ]
}

```
