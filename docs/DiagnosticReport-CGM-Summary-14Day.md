# 14-Day CGM Summary Report - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **14-Day CGM Summary Report**

## Example DiagnosticReport: 14-Day CGM Summary Report

Profile: [Space CGM Summary Report](StructureDefinition-space-cgm-summary.md)

## Glucose monitoring report 

| | |
| :--- | :--- |
| Subject | Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001) |
| When For | 2028-03-16 00:00:00+0000 --> 2028-03-30 00:00:00+0000 |

**Report Details**

* **Code**: [Glucose [Mass/volume] in Interstitial fluid](Observation-CGM-Reading-FD15.md)
  * **Value**: 105 mg/dL(Details: UCUM codemg/dL = 'mg/dL')
  * **Flags**: Final
  * **When For**: 2028-03-30 14:00:00+0000

14-day CGM summary: TIR 85%, mean glucose 108 mg/dL, CV 22.5%. No significant hypoglycemia. Mild hyperglycemic excursions noted post-exercise. Metabolic status within normal limits for spaceflight.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "CGM-Summary-14Day",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/space-cgm-summary"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/diagnostic-report-mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-III-Mission"
      }
    }
  ],
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "97151-5",
        "display" : "Glucose monitoring report"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "effectivePeriod" : {
    "start" : "2028-03-16T00:00:00Z",
    "end" : "2028-03-30T00:00:00Z"
  },
  "result" : [
    {
      "reference" : "Observation/CGM-Reading-FD15"
    }
  ],
  "conclusion" : "14-day CGM summary: TIR 85%, mean glucose 108 mg/dL, CV 22.5%. No significant hypoglycemia. Mild hyperglycemic excursions noted post-exercise. Metabolic status within normal limits for spaceflight."
}

```
