# CGM Glucose Reading - Flight Day 15 - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CGM Glucose Reading - Flight Day 15**

## Example Observation: CGM Glucose Reading - Flight Day 15

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space CGM Observation](StructureDefinition-space-cgm-observation.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-IV-Mission.md)

**Flight Day**: 15

**status**: Final

**category**: Laboratory

**code**: Glucose [Mass/volume] in Interstitial fluid

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-03-30 14:00:00+0000

**value**: 105 mg/dL(Details: UCUM codemg/dL = 'mg/dL')

**device**: [Device: extension = ->Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing); status = active; manufacturer = Dexcom, Inc.; serialNumber = DG7-2028-001; modelNumber = G7; type = Dexcom G7](Device-CGM-Dexcom-G7-001.md)

> **component****code**:Time in Range (TIR)**value**: 85 %(Details: UCUM code% = '%')

> **component****code**:Glucose Variability (CV%)**value**: 22.5 %(Details: UCUM code% = '%')

> **component****code**:Mean Glucose**value**: 108 mg/dL(Details: UCUM codemg/dL = 'mg/dL')

> **component****code**:Hypoglycemic Events**value**: 0

> **component****code**:Hyperglycemic Events**value**: 2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "CGM-Reading-FD15",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-cgm-observation"
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
        "reference" : "Encounter/Artemis-IV-Mission"
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/flight-day",
      "valueInteger" : 15
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "99504-3",
        "display" : "Glucose [Mass/volume] in Interstitial fluid"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-03-30T14:00:00Z",
  "valueQuantity" : {
    "value" : 105,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
  },
  "device" : {
    "reference" : "Device/CGM-Dexcom-G7-001"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
            "code" : "time-in-range",
            "display" : "Time in Range (TIR)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 85,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
            "code" : "glucose-variability-cv",
            "display" : "Glucose Variability (CV%)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 22.5,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
            "code" : "mean-glucose",
            "display" : "Mean Glucose"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 108,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
            "code" : "hypo-events",
            "display" : "Hypoglycemic Events"
          }
        ]
      },
      "valueInteger" : 0
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/cgm-metrics-cs",
            "code" : "hyper-events",
            "display" : "Hyperglycemic Events"
          }
        ]
      },
      "valueInteger" : 2
    }
  ]
}

```
