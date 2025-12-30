# Artemis III Translunar Radiation Exposure - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III Translunar Radiation Exposure**

## Example Observation: Artemis III Translunar Radiation Exposure

Profile: [Artemis Radiation Exposure](StructureDefinition-artemis-radiation-exposure.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**status**: Final

**category**: Laboratory

**code**: Cumulative radiation dose

**subject**: [Patient/AstronautExample](Patient/AstronautExample)

**effective**: 2027-09-01 10:00:00+0000 --> 2027-09-05 10:00:00+0000

**value**: 3.2 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Galactic cosmic rays**value**:gcr

> **component****code**:nominal-shielding**value**: Orion crew module nominal aluminum shielding (~10 g/cm²)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Artemis-III-Translunar-Radiation",
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
        "code" : "cumulative-dose",
        "display" : "Cumulative radiation dose"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AstronautExample"
  },
  "effectivePeriod" : {
    "start" : "2027-09-01T10:00:00Z",
    "end" : "2027-09-05T10:00:00Z"
  },
  "valueQuantity" : {
    "value" : 3.2,
    "unit" : "mSv",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/radiation-source-cs",
            "code" : "gcr",
            "display" : "Galactic cosmic rays"
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
            "code" : "nominal-shielding"
          }
        ]
      },
      "valueString" : "Orion crew module nominal aluminum shielding (~10 g/cm²)"
    }
  ]
}

```
