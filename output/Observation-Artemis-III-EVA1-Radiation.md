# Artemis III EVA-1 Radiation Exposure - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III EVA-1 Radiation Exposure**

## Example Observation: Artemis III EVA-1 Radiation Exposure

Profile: [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**status**: Final

**category**: Laboratory

**code**: Radiation dose rate

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2027-09-10 11:00:00+0000

**value**: 0.15 mSv/hr(Details: UCUM codemSv/h = 'mSv/h')

**derivedFrom**: [Procedure Extravehicular activity (procedure)](Procedure-Artemis-III-EVA-1.md)

> **component****code**:gcr**value**:gcr

> **component****code**:minimal-shielding**value**: Lunar surface EVA - suit fabric only (~0.3 g/cm²)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Artemis-III-EVA1-Radiation",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/artemis-radiation-exposure"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/radiation-type-cs",
        "code" : "dose-rate",
        "display" : "Radiation dose rate"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectiveDateTime" : "2027-09-10T11:00:00Z",
  "valueQuantity" : {
    "value" : 0.15,
    "unit" : "mSv/hr",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv/h"
  },
  "derivedFrom" : [
    {
      "reference" : "Procedure/Artemis-III-EVA-1"
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/radiation-source-cs",
            "code" : "gcr"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/radiation-source-cs",
            "code" : "gcr"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/shielding-condition-cs",
            "code" : "minimal-shielding"
          }
        ]
      },
      "valueString" : "Lunar surface EVA - suit fabric only (~0.3 g/cm²)"
    }
  ]
}

```
