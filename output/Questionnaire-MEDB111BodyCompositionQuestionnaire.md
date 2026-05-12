# MEDB 1.11 Body Composition/DEXA - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.11 Body Composition/DEXA**

## Questionnaire: MEDB 1.11 Body Composition/DEXA 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-11-body-composition | *Version*:0.5.12 |
| Active as of 2017-06-05 | *Computable Name*:MEDB111BodyComposition |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for body composition assessment using DEXA. 

 
To assess body composition including bone mineral density, lean mass, and fat mass using DEXA. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB111BodyCompositionQuestionnaire",
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
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-11-body-composition",
  "version" : "0.5.12",
  "name" : "MEDB111BodyComposition",
  "title" : "MEDB 1.11 Body Composition/DEXA",
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
  "description" : "NASA Medical Requirements Integration Document for body composition assessment using DEXA.",
  "purpose" : "To assess body composition including bone mineral density, lean mass, and fat mass using DEXA.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MEDB 1.11 Body Composition Assessment"
            }
          ]
        },
        {
          "linkId" : "overview.sponsor",
          "text" : "Sponsor",
          "type" : "choice",
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "exercise-physiology",
                "display" : "Exercise Physiology"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "exercise-physiology",
                "display" : "Exercise Physiology"
              }
            }
          ]
        },
        {
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "bone-muscle-exercise",
                "display" : "Bone/Muscle/Exercise"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "bone-muscle-exercise",
                "display" : "Bone/Muscle/Exercise"
              }
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preflight-activities",
      "text" : "Preflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "L-180 to L-60 days"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.scan-date",
          "text" : "DEXA Scan Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.scan-completed",
          "text" : "Scan Completed",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "preflight-dexa-results",
      "text" : "Preflight DEXA Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-dexa-results.total-bmd",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "38263-0",
              "display" : "DXA Bone density"
            }
          ],
          "text" : "Total Body BMD (g/cm²)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-dexa-results.spine-bmd",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "38264-8",
              "display" : "DXA Bone density Lumbar spine"
            }
          ],
          "text" : "Lumbar Spine BMD (g/cm²)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-dexa-results.hip-bmd",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "38265-5",
              "display" : "DXA Bone density Femur"
            }
          ],
          "text" : "Total Hip BMD (g/cm²)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-dexa-results.total-lean-mass",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "73708-0",
              "display" : "Lean body mass"
            }
          ],
          "text" : "Total Lean Mass (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-dexa-results.total-fat-mass",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "73709-8",
              "display" : "Fat mass"
            }
          ],
          "text" : "Total Fat Mass (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-dexa-results.body-fat-percentage",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "41982-0",
              "display" : "Percentage body fat"
            }
          ],
          "text" : "Body Fat Percentage (%)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "R+5 to R+14 days, R+180 days, R+365 days"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.scan-date",
          "text" : "Postflight Scan Date",
          "type" : "date"
        }
      ]
    },
    {
      "linkId" : "postflight-dexa-results",
      "text" : "Postflight DEXA Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-dexa-results.spine-bmd",
          "text" : "Lumbar Spine BMD (g/cm²)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-dexa-results.hip-bmd",
          "text" : "Total Hip BMD (g/cm²)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-dexa-results.bmd-change-spine",
          "text" : "BMD Change - Spine (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-dexa-results.bmd-change-hip",
          "text" : "BMD Change - Hip (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-dexa-results.bone-loss-assessment",
          "text" : "Bone Loss Assessment",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Within expected range"
            },
            {
              "valueString" : "Elevated"
            },
            {
              "valueString" : "Significant"
            }
          ]
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
          "text" : "Data Archive",
          "type" : "choice",
          "answerOption" : [
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
