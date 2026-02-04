# MR026L Reconditioning Assessment - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR026L Reconditioning Assessment**

## Questionnaire: MR026L Reconditioning Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr026l-reconditioning | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MR026LReconditioning |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for postflight reconditioning. Tracks crew recovery and rehabilitation progress after long-duration spaceflight. 

 
To document and track crew reconditioning progress after long-duration spaceflight, including physical rehabilitation and return to baseline function. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR026LReconditioningQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr026l-reconditioning",
  "version" : "0.5.9",
  "name" : "MR026LReconditioning",
  "title" : "MR026L Reconditioning Assessment",
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
  "description" : "NASA Medical Requirements Integration Document for postflight reconditioning. Tracks crew recovery and rehabilitation progress after long-duration spaceflight.",
  "purpose" : "To document and track crew reconditioning progress after long-duration spaceflight, including physical rehabilitation and return to baseline function.",
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
              "valueString" : "MR026L Postflight Reconditioning"
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
                "code" : "ascr",
                "display" : "Astronaut Strength Conditioning and Rehabilitation"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "ascr",
                "display" : "Astronaut Strength Conditioning and Rehabilitation"
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
                "code" : "reconditioning",
                "display" : "Reconditioning"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "reconditioning",
                "display" : "Reconditioning"
              }
            }
          ]
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "To guide and monitor crew physical reconditioning after long-duration spaceflight, with goal of returning to preflight functional capacity."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "mission-details",
      "text" : "Mission Details",
      "type" : "group",
      "item" : [
        {
          "linkId" : "mission-details.mission-duration",
          "text" : "Mission Duration (days)",
          "type" : "integer"
        },
        {
          "linkId" : "mission-details.landing-date",
          "text" : "Landing Date",
          "type" : "date"
        },
        {
          "linkId" : "mission-details.reconditioning-start",
          "text" : "Reconditioning Start Date",
          "type" : "date"
        }
      ]
    },
    {
      "linkId" : "initial-assessment",
      "text" : "Initial Assessment (R+0 to R+3)",
      "type" : "group",
      "item" : [
        {
          "linkId" : "initial-assessment.date",
          "text" : "Assessment Date",
          "type" : "date"
        },
        {
          "linkId" : "initial-assessment.orthostatic-status",
          "text" : "Orthostatic Status",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "No orthostatic intolerance"
            },
            {
              "valueString" : "Mild orthostatic symptoms"
            },
            {
              "valueString" : "Moderate orthostatic symptoms"
            },
            {
              "valueString" : "Significant orthostatic intolerance"
            }
          ]
        },
        {
          "linkId" : "initial-assessment.gait-stability",
          "text" : "Gait and Balance",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Normal"
            },
            {
              "valueString" : "Mildly unsteady"
            },
            {
              "valueString" : "Moderately unsteady"
            },
            {
              "valueString" : "Significantly impaired"
            }
          ]
        },
        {
          "linkId" : "initial-assessment.muscle-soreness",
          "text" : "Muscle Soreness/Pain",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "None"
            },
            {
              "valueString" : "Mild"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Severe"
            }
          ]
        },
        {
          "linkId" : "initial-assessment.back-pain",
          "text" : "Back Pain Present",
          "type" : "boolean"
        },
        {
          "linkId" : "initial-assessment.initial-plan",
          "text" : "Initial Reconditioning Plan",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "weekly-progress",
      "text" : "Weekly Progress Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "weekly-progress.week-number",
          "text" : "Week Number (R+)",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-progress.date",
          "text" : "Assessment Date",
          "type" : "date"
        },
        {
          "linkId" : "weekly-progress.sessions-completed",
          "text" : "Reconditioning Sessions Completed",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-progress.aerobic-capacity",
          "text" : "Aerobic Capacity Recovery (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "weekly-progress.strength-recovery",
          "text" : "Strength Recovery (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "weekly-progress.balance-status",
          "text" : "Balance/Vestibular Status",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Returned to normal"
            },
            {
              "valueString" : "Improving"
            },
            {
              "valueString" : "Stable"
            },
            {
              "valueString" : "Requires intervention"
            }
          ]
        },
        {
          "linkId" : "weekly-progress.concerns",
          "text" : "Concerns or Issues",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "final-assessment",
      "text" : "Final Reconditioning Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "final-assessment.date",
          "text" : "Final Assessment Date",
          "type" : "date"
        },
        {
          "linkId" : "final-assessment.total-duration",
          "text" : "Total Reconditioning Duration (days)",
          "type" : "integer"
        },
        {
          "linkId" : "final-assessment.aerobic-baseline",
          "text" : "Return to Aerobic Baseline",
          "type" : "boolean"
        },
        {
          "linkId" : "final-assessment.strength-baseline",
          "text" : "Return to Strength Baseline",
          "type" : "boolean"
        },
        {
          "linkId" : "final-assessment.full-duty-cleared",
          "text" : "Cleared for Full Duty",
          "type" : "boolean"
        },
        {
          "linkId" : "final-assessment.clearance-date",
          "text" : "Clearance Date",
          "type" : "date"
        },
        {
          "linkId" : "final-assessment.ongoing-issues",
          "text" : "Any Ongoing Issues",
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
