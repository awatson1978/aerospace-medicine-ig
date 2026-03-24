# MR054L Microbial Monitoring - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR054L Microbial Monitoring**

## Questionnaire: MR054L Microbial Monitoring 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr054l-microbial-monitoring | *Version*:0.5.10 |
| Active as of 2017-06-05 | *Computable Name*:MR054LMicrobialMonitoring |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for microbial monitoring. Tracks microbial populations in air, water, and surfaces aboard ISS. 

 
To monitor microbial populations in air, water, and on surfaces aboard ISS to prevent infections and monitor spacecraft cleanliness 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR054LMicrobialMonitoringQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr054l-microbial-monitoring",
  "version" : "0.5.10",
  "name" : "MR054LMicrobialMonitoring",
  "title" : "MR054L Microbial Monitoring",
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
  "description" : "NASA Medical Requirements Integration Document for microbial monitoring. Tracks microbial populations in air, water, and surfaces aboard ISS.",
  "purpose" : "To monitor microbial populations in air, water, and on surfaces aboard ISS to prevent infections and monitor spacecraft cleanliness",
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
              "valueString" : "MR054L Microbial Monitoring"
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
              "valueString" : "To characterize and monitor microbial populations aboard ISS in air, water, and on surfaces. Identify potential pathogens and track microbial trends."
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
              "valueString" : "Regular collection of air, water, and surface samples for microbial analysis. Samples analyzed onboard and/or returned to ground for comprehensive analysis."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.air-sampling-frequency",
          "text" : "Air Sampling Frequency",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Weekly"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.surface-sampling-frequency",
          "text" : "Surface Sampling Frequency",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Monthly"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "air-microbial-results",
      "text" : "Air Microbial Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "air-microbial-results.sample-date",
          "text" : "Sample Date",
          "type" : "date"
        },
        {
          "linkId" : "air-microbial-results.location",
          "text" : "Sample Location",
          "type" : "string"
        },
        {
          "linkId" : "air-microbial-results.total-bacteria",
          "text" : "Total Bacteria (CFU/m3)",
          "type" : "integer"
        },
        {
          "linkId" : "air-microbial-results.total-fungi",
          "text" : "Total Fungi (CFU/m3)",
          "type" : "integer"
        },
        {
          "linkId" : "air-microbial-results.predominant-bacteria",
          "text" : "Predominant Bacterial Species",
          "type" : "string"
        },
        {
          "linkId" : "air-microbial-results.predominant-fungi",
          "text" : "Predominant Fungal Species",
          "type" : "string"
        },
        {
          "linkId" : "air-microbial-results.pathogens-detected",
          "text" : "Potential Pathogens Detected",
          "type" : "boolean"
        },
        {
          "linkId" : "air-microbial-results.pathogen-list",
          "text" : "Pathogens Identified",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "air-microbial-results.pathogens-detected",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "surface-microbial-results",
      "text" : "Surface Microbial Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "surface-microbial-results.sample-date",
          "text" : "Sample Date",
          "type" : "date"
        },
        {
          "linkId" : "surface-microbial-results.location",
          "text" : "Sample Location",
          "type" : "string"
        },
        {
          "linkId" : "surface-microbial-results.total-bacteria",
          "text" : "Total Bacteria (CFU/cm2)",
          "type" : "integer"
        },
        {
          "linkId" : "surface-microbial-results.total-fungi",
          "text" : "Total Fungi (CFU/cm2)",
          "type" : "integer"
        },
        {
          "linkId" : "surface-microbial-results.biofilm-detected",
          "text" : "Biofilm Detected",
          "type" : "boolean"
        },
        {
          "linkId" : "surface-microbial-results.cleaning-required",
          "text" : "Cleaning/Remediation Required",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "summary",
      "text" : "Summary Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "summary.meets-specifications",
          "text" : "Meets ISS Microbial Specifications",
          "type" : "boolean"
        },
        {
          "linkId" : "summary.trend-assessment",
          "text" : "Trend Assessment",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Stable"
            },
            {
              "valueString" : "Increasing"
            },
            {
              "valueString" : "Decreasing"
            },
            {
              "valueString" : "Requires attention"
            }
          ]
        },
        {
          "linkId" : "summary.notes",
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
