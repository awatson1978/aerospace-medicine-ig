# MEDB 7.4 Crew Dynamics Assessment - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 7.4 Crew Dynamics Assessment**

## Questionnaire: MEDB 7.4 Crew Dynamics Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-7-4-crew-dynamics | *Version*:0.5.12 |
| Active as of 2024-01-15 | *Computable Name*:MEDB74CrewDynamics |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) | |

 
NASA Medical Requirements Integration Document for crew dynamics assessment. Evaluates crew cohesion, interpersonal relationships, team functioning, and conflict management throughout mission phases. 

 
Monitor crew cohesion, interpersonal dynamics, and team performance throughout mission phases. Identify potential issues and support interventions. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB74CrewDynamicsQuestionnaire",
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
          "valueString" : "The astronaut/crewmember subject of this assessment"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-7-4-crew-dynamics",
  "version" : "0.5.12",
  "name" : "MEDB74CrewDynamics",
  "title" : "MEDB 7.4 Crew Dynamics Assessment",
  "status" : "active",
  "date" : "2024-01-15",
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
  "description" : "NASA Medical Requirements Integration Document for crew dynamics assessment. Evaluates crew cohesion, interpersonal relationships, team functioning, and conflict management throughout mission phases.",
  "purpose" : "Monitor crew cohesion, interpersonal dynamics, and team performance throughout mission phases. Identify potential issues and support interventions.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs)",
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
              "valueString" : "MEDB 7.4 Crew Dynamics Assessment"
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
                "code" : "bhp",
                "display" : "Behavioral Health and Performance"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "bhp",
                "display" : "Behavioral Health and Performance"
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
                "code" : "behavioral",
                "display" : "Behavior and Performance"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "behavioral",
                "display" : "Behavior and Performance"
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
              "valueString" : "Monitor crew cohesion, interpersonal dynamics, and team performance throughout mission phases."
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
              "valueString" : ">= 30 days"
            }
          ]
        },
        {
          "linkId" : "overview.crew-members-required",
          "text" : "Number and Type of Crew Members Required",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "All crew members"
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
          "linkId" : "preflight-training.crew-cohesion",
          "text" : "Crew Cohesion Training",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-training.crew-cohesion.description",
              "text" : "Training Description",
              "type" : "text",
              "initial" : [
                {
                  "valueString" : "Team building activities, conflict resolution training, and cross-cultural communication skills"
                }
              ]
            },
            {
              "linkId" : "preflight-training.crew-cohesion.duration",
              "text" : "Duration (hours)",
              "type" : "integer",
              "initial" : [
                {
                  "valueInteger" : 16
                }
              ]
            },
            {
              "linkId" : "preflight-training.crew-cohesion.completed",
              "text" : "Training Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "preflight-training.crew-cohesion.date",
              "text" : "Completion Date",
              "type" : "date"
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
          "linkId" : "preflight-activities.baseline-assessment",
          "text" : "Crew Dynamics Baseline Assessment",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-activities.baseline-assessment.schedule",
              "text" : "Schedule",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "L-180 to L-90 days"
                }
              ]
            },
            {
              "linkId" : "preflight-activities.baseline-assessment.duration",
              "text" : "Duration (minutes)",
              "type" : "integer",
              "initial" : [
                {
                  "valueInteger" : 90
                }
              ]
            },
            {
              "linkId" : "preflight-activities.baseline-assessment.completed",
              "text" : "Assessment Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "preflight-activities.baseline-assessment.date",
              "text" : "Completion Date",
              "type" : "date"
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
          "linkId" : "inflight-activities.periodic-assessment",
          "text" : "Periodic Crew Dynamics Assessment",
          "type" : "group",
          "item" : [
            {
              "linkId" : "inflight-activities.periodic-assessment.frequency",
              "text" : "Assessment Frequency",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "Monthly during mission"
                }
              ]
            },
            {
              "linkId" : "inflight-activities.periodic-assessment.duration",
              "text" : "Duration (minutes)",
              "type" : "integer",
              "initial" : [
                {
                  "valueInteger" : 30
                }
              ]
            },
            {
              "linkId" : "inflight-activities.periodic-assessment.date",
              "text" : "Assessment Date",
              "type" : "date"
            },
            {
              "linkId" : "inflight-activities.periodic-assessment.completed",
              "text" : "Assessment Completed",
              "type" : "boolean"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "crew-dynamics-metrics",
      "text" : "Crew Dynamics Metrics",
      "type" : "group",
      "item" : [
        {
          "linkId" : "crew-dynamics-metrics.cohesion-rating",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "93038-4",
              "display" : "Team performance assessment"
            }
          ],
          "text" : "Overall Crew Cohesion (1-10)",
          "type" : "integer",
          "required" : true
        },
        {
          "linkId" : "crew-dynamics-metrics.communication-quality",
          "text" : "Communication Quality",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Excellent"
            },
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Adequate"
            },
            {
              "valueString" : "Needs Improvement"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.conflict-level",
          "text" : "Interpersonal Conflict Level",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "None"
            },
            {
              "valueString" : "Minor - Managed"
            },
            {
              "valueString" : "Moderate - Requires Attention"
            },
            {
              "valueString" : "Significant - Intervention Needed"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.leadership-effectiveness",
          "text" : "Leadership Effectiveness",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Highly Effective"
            },
            {
              "valueString" : "Effective"
            },
            {
              "valueString" : "Adequate"
            },
            {
              "valueString" : "Needs Support"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.workload-distribution",
          "text" : "Workload Distribution Perception",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Fair and Balanced"
            },
            {
              "valueString" : "Mostly Fair"
            },
            {
              "valueString" : "Somewhat Uneven"
            },
            {
              "valueString" : "Unfair/Problematic"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.cultural-integration",
          "text" : "Cross-Cultural Integration",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueString" : "Excellent"
            },
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Adequate"
            },
            {
              "valueString" : "Challenging"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.morale",
          "text" : "Crew Morale",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "High"
            },
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Low"
            }
          ]
        },
        {
          "linkId" : "crew-dynamics-metrics.concerns",
          "text" : "Specific Concerns or Issues",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "crew-dynamics-metrics.intervention-needed",
          "text" : "BHP Intervention Recommended",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.debrief",
          "text" : "Crew Dynamics Debrief",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-activities.debrief.schedule",
              "text" : "Schedule",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "R+30 to R+60 days"
                }
              ]
            },
            {
              "linkId" : "postflight-activities.debrief.completed",
              "text" : "Debrief Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "postflight-activities.debrief.date",
              "text" : "Completion Date",
              "type" : "date"
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
          "text" : "Data Archive System",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "emr",
                "display" : "Electronic Medical Record"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ]
        },
        {
          "linkId" : "data-delivery.confidentiality",
          "text" : "Confidentiality Level",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Crew member controlled - sharing at individual discretion"
            }
          ]
        }
      ]
    }
  ]
}

```
