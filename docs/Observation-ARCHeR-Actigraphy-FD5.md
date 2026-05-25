# ARCHeR Actigraphy - Flight Day 5 - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ARCHeR Actigraphy - Flight Day 5**

## Example Observation: ARCHeR Actigraphy - Flight Day 5

Profile: [ARCHeR Actigraphy Observation](StructureDefinition-archer-actigraphy-observation.md)

**Mission Context**: [Encounter: status = in-progress; class = ambulatory (ActCode#AMB); period = 2027-09-01 00:00:00+0000 --> (ongoing)](Encounter-Artemis-III-Mission.md)

**Mission Phase**: Outbound Transit

**status**: Final

**category**: Exam

**code**: Activity monitoring

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**effective**: 2028-03-20 00:00:00+0000 --> 2028-03-21 00:00:00+0000

> **component****code**:Interdaily Stability (IS)**value**: 0.72 1(Details: UCUM code1 = '1')

> **component****code**:Circadian Period (Tau)**value**: 24.3 h(Details: UCUM codeh = 'h')

> **component****code**:Total Sleep Time (TST)**value**: 390 min(Details: UCUM codemin = 'min')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ARCHeR-Actigraphy-FD5",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/archer-actigraphy-observation"
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
            "code" : "transit-outbound",
            "display" : "Outbound Transit"
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
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "129006008",
        "display" : "Activity monitoring"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2028-03-20T00:00:00Z",
    "end" : "2028-03-21T00:00:00Z"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/actigraphy-metric-cs",
            "code" : "interdaily-stability",
            "display" : "Interdaily Stability (IS)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 0.72,
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/circadian-assessment-cs",
            "code" : "circadian-period",
            "display" : "Circadian Period (Tau)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 24.3,
        "unit" : "h",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/sleep-architecture-cs",
            "code" : "total-sleep-time",
            "display" : "Total Sleep Time (TST)"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 390,
        "unit" : "min",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }
  ]
}

```
