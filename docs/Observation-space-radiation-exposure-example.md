# Daily Radiation Exposure, ISS Flight Day 45 (example) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Daily Radiation Exposure, ISS Flight Day 45 (example)**

## Example Observation: Daily Radiation Exposure, ISS Flight Day 45 (example)

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Radiation Exposure](StructureDefinition-space-radiation-exposure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**Space Radiation Type**: Galactic Cosmic Radiation

**Shielding Mass**: 15 g/cm2(Details: UCUM codeg/cm2 = 'g/cm2')

**Radiation Countermeasures**: Physical Shielding

**status**: Final

**category**: Radiation dose and image quality indicators

**code**: Galactic Cosmic Radiation Dose

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**encounter**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2025-03-01 00:00:00+0000 --> (ongoing)](Encounter-ISS-Exp75-InFlight.md)

**effective**: 2025-07-15

**value**: 0.52 mSv(Details: UCUM codemSv = 'mSv')

**device**: [Device: status = active; manufacturer = Example Dosimetry Inc.; serialNumber = EPD-2100-0042; modelNumber = EPD-2100; type = Electronic Personal Dosimeter](Device-radiation-detector-example.md)

> **component****code**:Irradiation dose rate**value**: 21.7 uSv/h(Details: UCUM codeuSv/h = 'uSv/h')

> **component****code**:Linear Energy Transfer**value**: 7.5 keV/um(Details: UCUM codekeV/um = 'keV/um')

> **component****code**:Skin Dose**value**: 0.61 mSv(Details: UCUM codemSv = 'mSv')

> **component****code**:Bone Marrow Dose**value**: 0.47 mSv(Details: UCUM codemSv = 'mSv')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "space-radiation-exposure-example",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-radiation-exposure"
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
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/shielding-mass",
      "valueQuantity" : {
        "value" : 15,
        "unit" : "g/cm2",
        "system" : "http://unitsofmeasure.org",
        "code" : "g/cm2"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-countermeasures",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-countermeasures-cs",
            "code" : "shielding",
            "display" : "Physical Shielding"
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
        "code" : "gcr-dose",
        "display" : "Galactic Cosmic Radiation Dose"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "encounter" : {
    "reference" : "Encounter/ISS-Exp75-InFlight"
  },
  "effectiveDateTime" : "2025-07-15",
  "valueQuantity" : {
    "value" : 0.52,
    "unit" : "mSv",
    "system" : "http://unitsofmeasure.org",
    "code" : "mSv"
  },
  "device" : {
    "reference" : "Device/radiation-detector-example"
  },
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
        "value" : 21.7,
        "unit" : "uSv/h",
        "system" : "http://unitsofmeasure.org",
        "code" : "uSv/h"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "let",
            "display" : "Linear Energy Transfer"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 7.5,
        "unit" : "keV/um",
        "system" : "http://unitsofmeasure.org",
        "code" : "keV/um"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
            "code" : "skin-dose",
            "display" : "Skin Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.61,
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
            "code" : "bone-marrow-dose",
            "display" : "Bone Marrow Dose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.47,
        "unit" : "mSv",
        "system" : "http://unitsofmeasure.org",
        "code" : "mSv"
      }
    }
  ]
}

```
