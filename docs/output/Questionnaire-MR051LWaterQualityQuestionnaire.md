# MR051L Water Quality Assessment - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR051L Water Quality Assessment**

## Questionnaire: MR051L Water Quality Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr051l-water-quality | *Version*:0.5.10 |
| Active as of 2017-06-05 | *Computable Name*:MR051LWaterQuality |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for water quality monitoring. Tracks potable and technical water quality parameters aboard the International Space Station. 

 
To monitor water quality aboard ISS to ensure crew health and safety. Includes potable water, condensate, and technical water systems. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR051LWaterQualityQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr051l-water-quality",
  "version" : "0.5.10",
  "name" : "MR051LWaterQuality",
  "title" : "MR051L Water Quality Assessment",
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
  "description" : "NASA Medical Requirements Integration Document for water quality monitoring. Tracks potable and technical water quality parameters aboard the International Space Station.",
  "purpose" : "To monitor water quality aboard ISS to ensure crew health and safety. Includes potable water, condensate, and technical water systems.",
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
              "valueString" : "MR051L Water Quality Monitoring"
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
              "valueString" : "To monitor the quality of potable water, condensate, and technical water aboard ISS. Ensure water meets health and safety requirements for crew consumption and use."
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
              "valueString" : "Total organic carbon, pH, conductivity, microbial counts, iodine/silver biocide levels"
            }
          ]
        },
        {
          "linkId" : "overview.flight-duration",
          "text" : "Flight Duration",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Continuous during ISS operations"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preflight-training",
      "text" : "Preflight Training",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-training.description",
          "text" : "Training Description",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Environmental Health System training on water sampling procedures and equipment operation."
            }
          ]
        },
        {
          "linkId" : "preflight-training.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "initial" : [
            {
              "valueInteger" : 60
            }
          ]
        },
        {
          "linkId" : "preflight-training.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "L-12 months"
            }
          ]
        },
        {
          "linkId" : "preflight-training.completed",
          "text" : "Training Completed",
          "type" : "boolean"
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
              "valueString" : "Regular water sampling and analysis using on-board equipment. Samples may be returned to ground for comprehensive analysis."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.schedule",
          "text" : "Sampling Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Weekly for microbial, monthly for chemical parameters"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.sample-location",
          "text" : "Sample Location",
          "type" : "choice",
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "PWD (Potable Water Dispenser)"
            },
            {
              "valueString" : "WHC (Waste and Hygiene Compartment)"
            },
            {
              "valueString" : "WRS (Water Recovery System)"
            },
            {
              "valueString" : "Galley"
            },
            {
              "valueString" : "Russian Segment"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "water-quality-results",
      "text" : "Water Quality Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "water-quality-results.sample-date",
          "text" : "Sample Date",
          "type" : "date"
        },
        {
          "linkId" : "water-quality-results.sample-source",
          "text" : "Sample Source",
          "type" : "string"
        },
        {
          "linkId" : "water-quality-results.toc",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "5810-9",
              "display" : "Carbon.organic.total [Mass/volume] in Water"
            }
          ],
          "text" : "Total Organic Carbon (mg/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.ph",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2753-2",
              "display" : "pH of Water"
            }
          ],
          "text" : "pH",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.conductivity",
          "text" : "Conductivity (uS/cm)",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.turbidity",
          "text" : "Turbidity (NTU)",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.total-coliform",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "5801-8",
              "display" : "Coliform bacteria [#/volume] in Water by Culture"
            }
          ],
          "text" : "Total Coliform (CFU/100mL)",
          "type" : "integer"
        },
        {
          "linkId" : "water-quality-results.heterotrophic-plate-count",
          "text" : "Heterotrophic Plate Count (CFU/mL)",
          "type" : "integer"
        },
        {
          "linkId" : "water-quality-results.iodine-level",
          "text" : "Iodine Level (mg/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.silver-level",
          "text" : "Silver Level (mg/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "water-quality-results.meets-specifications",
          "text" : "Meets ISS Water Quality Specifications",
          "type" : "boolean"
        },
        {
          "linkId" : "water-quality-results.corrective-action",
          "text" : "Corrective Action Required",
          "type" : "boolean"
        },
        {
          "linkId" : "water-quality-results.notes",
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
