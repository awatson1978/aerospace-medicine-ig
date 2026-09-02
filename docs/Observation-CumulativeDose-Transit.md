# Cumulative Radiation Dose - Outbound Transit - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cumulative Radiation Dose - Outbound Transit**

## Example Observation: Cumulative Radiation Dose - Outbound Transit

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Cumulative Radiation Dose](StructureDefinition-cumulative-radiation-dose.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = field (ActCode#FLD); period = 2040-09-01 00:00:00+0000 --> (ongoing); reasonCode =](Encounter-MarsDirectMission2040.md)

**Space Radiation Type**: Galactic Cosmic Radiation

**status**: Final

**category**: Radiation dose and image quality indicators

**code**: Radiation dose total

**subject**: [Sarah Chen Female, DoB: 1990-03-15 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-2029-001)](Patient-MarsCrewMember1.md)

**effective**: 2040-09-01 00:00:00+0000 --> 2041-03-01 00:00:00+0000

**value**: 360 mSv(Details: UCUM codemSv = 'mSv')

**note**: 

> 

Personal dosimeter (TEPC-cross-calibrated) integrated over 182 days of deep space cruise. Mean dose rate 1.98 mSv/day, consistent with MSL RAD cruise-phase measurements. No solar particle events recorded during transit.


### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Irradiation dose rate | 82.4 uSv/h(Details: UCUM codeuSv/h = 'uSv/h') |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CumulativeDose-Transit",
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
        "reference" : "Encounter/MarsDirectMission2040"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-type",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-type-cs",
            "code" : "gcr",
            "display" : "Galactic Cosmic Radiation"
          }
        ]
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
    "reference" : "Patient/MarsCrewMember1"
  },
  "effectivePeriod" : {
    "start" : "2040-09-01T00:00:00Z",
    "end" : "2041-03-01T00:00:00Z"
  },
  "valueQuantity" : {
    "value" : 360,
    "unit" : "mSv",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv"
  },
  "note" : [
    {
      "text" : "Personal dosimeter (TEPC-cross-calibrated) integrated over 182 days of deep space cruise. Mean dose rate 1.98 mSv/day, consistent with MSL RAD cruise-phase measurements. No solar particle events recorded during transit."
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "77638-4",
            "display" : "Irradiation dose rate"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 82.4,
        "unit" : "uSv/h",
        "system" : "http://unitsofmeasure.org",
        "code" : "uSv/h"
      }
    }
  ]
}

```
