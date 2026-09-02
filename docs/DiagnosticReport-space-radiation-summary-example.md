# Radiation Exposure Summary, ISS Expedition 75 (example) - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Exposure Summary, ISS Expedition 75 (example)**

## Example DiagnosticReport: Radiation Exposure Summary, ISS Expedition 75 (example)

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space Radiation Exposure Summary](StructureDefinition-space-radiation-summary.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

## Space Radiation Exposure Summary (Radiation dose and image quality indicators ) 

| | |
| :--- | :--- |
| Subject | Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001) |
| When For | 2025-06-01 --> 2025-11-28 |
| Reported | 2025-12-02 09:00:00+0000 |
| Performer | [Organization NASA](Organization-NASA.md) |

**Report Details**

* **Code**: [Galactic Cosmic Radiation Dose](Observation-space-radiation-exposure-example.md)
  * **Value**: 0.52 mSv(Details: UCUM codemSv = 'mSv')
  * **Flags**: Final
  * **When For**: 2025-07-15
* **Code**: [Radiation dose total](Observation-cumulative-radiation-dose-example.md)
  * **Value**: 94 mSv(Details: UCUM codemSv = 'mSv')
  * **Flags**: Final
  * **When For**: 

Mission dose-equivalent of 94 mSv over 180 days is consistent with the pre-flight projection of 0.5 mSv per day at solar minimum. Career total remains below the 600 mSv NASA-STD-3001 limit; no change to flight-certification status.



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "space-radiation-summary-example",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-radiation-summary"
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
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
        "code" : "radiation-summary",
        "display" : "Space Radiation Exposure Summary"
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
  "issued" : "2025-12-02T09:00:00Z",
  "performer" : [
    {
      "reference" : "Organization/NASA"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/space-radiation-exposure-example"
    },
    {
      "reference" : "Observation/cumulative-radiation-dose-example"
    }
  ],
  "conclusion" : "Mission dose-equivalent of 94 mSv over 180 days is consistent with the pre-flight projection of 0.5 mSv per day at solar minimum. Career total remains below the 600 mSv NASA-STD-3001 limit; no change to flight-certification status."
}

```
