# 14-Day CGM Summary Report - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **14-Day CGM Summary Report**

## Example DiagnosticReport: 14-Day CGM Summary Report

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space CGM Summary Report](StructureDefinition-space-cgm-summary.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

## Glucose monitoring report 

| | |
| :--- | :--- |
| Subject | Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001) |
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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-cgm-summary"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diagnostic-report-mission-context",
      "valueReference" : {
        "reference" : "Encounter/Artemis-IV-Mission"
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
