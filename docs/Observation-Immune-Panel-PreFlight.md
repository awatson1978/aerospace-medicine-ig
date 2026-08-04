# Immune Biomarker Panel - Pre-flight Baseline - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Immune Biomarker Panel - Pre-flight Baseline**

## Example Observation: Immune Biomarker Panel - Pre-flight Baseline

Profile: [Immune Biomarker Panel](StructureDefinition-immune-biomarker-panel.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Mission Phase**: Pre-flight

**status**: Final

**category**: Laboratory

**code**: Immune function panel

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-02-15 10:00:00+0000

> **component****code**:Interleukin-6 (IL-6)**value**: 1.5 pg/mL(Details: UCUM codepg/mL = 'pg/mL')

> **component****code**:Tumor Necrosis Factor Alpha (TNF-α)**value**: 4.2 pg/mL(Details: UCUM codepg/mL = 'pg/mL')

> **component****code**:CD4/CD8 Ratio**value**: 1.8 1(Details: UCUM code1 = '1')

> **component****code**:Natural Killer Cell Percentage**value**: 12.5 %(Details: UCUM code% = '%')

> **component****code**:Cortisol [Mass/volume] in Serum or Plasma**value**: 15.2 ug/dL(Details: UCUM codeug/dL = 'ug/dL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Immune-Panel-PreFlight",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/immune-biomarker-panel"
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
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/mission-phase",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/mission-phase-cs",
            "code" : "pre-flight",
            "display" : "Pre-flight"
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
        "code" : "24359-3",
        "display" : "Immune function panel"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectiveDateTime" : "2028-02-15T10:00:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
            "code" : "il-6",
            "display" : "Interleukin-6 (IL-6)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.5,
        "unit" : "pg/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "pg/mL"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
            "code" : "tnf-alpha",
            "display" : "Tumor Necrosis Factor Alpha (TNF-α)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 4.2,
        "unit" : "pg/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "pg/mL"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
            "code" : "cd4-cd8-ratio",
            "display" : "CD4/CD8 Ratio"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 1.8,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/immune-biomarker-cs",
            "code" : "nk-cell-pct",
            "display" : "Natural Killer Cell Percentage"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 12.5,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "2143-6",
            "display" : "Cortisol [Mass/volume] in Serum or Plasma"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 15.2,
        "unit" : "ug/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "ug/dL"
      }
    }
  ]
}

```
