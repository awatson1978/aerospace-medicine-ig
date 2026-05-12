# MR022S Air Quality Monitoring - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR022S Air Quality Monitoring**

## Questionnaire: MR022S Air Quality Monitoring 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr022s-air-quality | *Version*:0.5.12 |
| Active as of 2017-06-05 | *Computable Name*:MR022SAirQuality |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for atmospheric monitoring. Tracks air quality parameters to ensure crew health and safety. 

 
To monitor atmospheric composition and quality aboard spacecraft to ensure crew health and safety 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR022SAirQualityQuestionnaire",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "name",
          "valueCoding" : {
            "system" : "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext",
            "code" : "patient"
          }
        },
        {
          "url" : "type",
          "valueCode" : "Patient"
        },
        {
          "url" : "description",
          "valueString" : "The astronaut/crewmember subject of this medical requirement"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr022s-air-quality",
  "version" : "0.5.12",
  "name" : "MR022SAirQuality",
  "title" : "MR022S Air Quality Monitoring",
  "status" : "active",
  "date" : "2017-06-05",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "NASA Medical Requirements Integration Document for atmospheric monitoring. Tracks air quality parameters to ensure crew health and safety.",
  "purpose" : "To monitor atmospheric composition and quality aboard spacecraft to ensure crew health and safety",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number and Title",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MR022S Air Quality Monitoring"
            }
          ]
        },
        {
          "linkId" : "overview.sponsor",
          "text" : "Sponsor",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "environmental-health",
                "display" : "Environmental Health System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "environmental-health",
                "display" : "Environmental Health System"
              }
            }
          ]
        },
        {
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "environmental",
                "display" : "Environmental"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "environmental",
                "display" : "Environmental"
              }
            }
          ]
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "To monitor atmospheric composition, trace contaminants, particulates, and microbial loads in spacecraft air to protect crew health."
            }
          ]
        },
        {
          "linkId" : "overview.measurement-parameters",
          "text" : "Measurement Parameters",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "O2, CO2, trace contaminants, particulates, microbial counts, humidity, temperature"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "inflight-activities",
      "text" : "In-Flight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Continuous atmospheric monitoring using onboard sensors. Periodic air samples collected for ground analysis."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.monitoring-frequency",
          "text" : "Monitoring Frequency",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Continuous for major constituents, weekly/monthly for sampling"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "air-quality-results",
      "text" : "Air Quality Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "air-quality-results.sample-date",
          "text" : "Sample/Reading Date",
          "type" : "dateTime"
        },
        {
          "linkId" : "air-quality-results.location",
          "text" : "Sample Location",
          "type" : "string"
        },
        {
          "linkId" : "air-quality-results.oxygen-ppO2",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "19989-3",
              "display" : "Oxygen [Partial pressure] in Inhaled gas"
            }
          ],
          "text" : "Oxygen Partial Pressure (mmHg)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.co2-ppCO2",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "19883-8",
              "display" : "Carbon dioxide [Partial pressure] in Inhaled gas"
            }
          ],
          "text" : "CO2 Partial Pressure (mmHg)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.total-pressure",
          "text" : "Total Pressure (mmHg)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.temperature",
          "text" : "Temperature (°C)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.relative-humidity",
          "text" : "Relative Humidity (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.co-level",
          "text" : "Carbon Monoxide (ppm)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.ammonia-level",
          "text" : "Ammonia (ppm)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.formaldehyde-level",
          "text" : "Formaldehyde (ppm)",
          "type" : "decimal"
        },
        {
          "linkId" : "air-quality-results.particulate-count",
          "text" : "Particulate Count (particles/m3)",
          "type" : "integer"
        },
        {
          "linkId" : "air-quality-results.fungal-count",
          "text" : "Fungal Count (CFU/m3)",
          "type" : "integer"
        },
        {
          "linkId" : "air-quality-results.bacterial-count",
          "text" : "Bacterial Count (CFU/m3)",
          "type" : "integer"
        },
        {
          "linkId" : "air-quality-results.meets-specifications",
          "text" : "Meets ISS Air Quality Specifications",
          "type" : "boolean"
        },
        {
          "linkId" : "air-quality-results.corrective-action",
          "text" : "Corrective Action Required",
          "type" : "boolean"
        },
        {
          "linkId" : "air-quality-results.notes",
          "text" : "Notes",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "data-delivery",
      "text" : "Data Delivery",
      "type" : "group",
      "item" : [
        {
          "linkId" : "data-delivery.archive",
          "text" : "Data Archive System",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ]
        }
      ]
    }
  ]
}

```
