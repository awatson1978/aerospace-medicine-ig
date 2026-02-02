# MEDB 7.5 Family Support Evaluation - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 7.5 Family Support Evaluation**

## Questionnaire: MEDB 7.5 Family Support Evaluation 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-7-5-family-support | *Version*:0.5.8 |
| Active as of 2024-01-15 | *Computable Name*:MEDB75FamilySupport |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) | |

 
NASA Medical Requirements Integration Document for family support evaluation. Assesses family support systems, identifies needs, and coordinates support services throughout mission phases. 

 
Evaluate astronaut family support systems, identify needs, and coordinate appropriate support services before, during, and after spaceflight. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB75FamilySupportQuestionnaire",
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
          "valueString" : "The astronaut/crewmember subject of this evaluation"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-7-5-family-support",
  "version" : "0.5.8",
  "name" : "MEDB75FamilySupport",
  "title" : "MEDB 7.5 Family Support Evaluation",
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
  "description" : "NASA Medical Requirements Integration Document for family support evaluation. Assesses family support systems, identifies needs, and coordinates support services throughout mission phases.",
  "purpose" : "Evaluate astronaut family support systems, identify needs, and coordinate appropriate support services before, during, and after spaceflight.",
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
              "valueString" : "MEDB 7.5 Family Support Evaluation"
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
              "valueString" : "Evaluate family support systems, identify needs, and coordinate support services throughout mission phases."
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
              "valueString" : "All long-duration crew members"
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
          "linkId" : "preflight-training.family-orientation",
          "text" : "Family Orientation Briefing",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-training.family-orientation.description",
              "text" : "Training Description",
              "type" : "text",
              "initial" : [
                {
                  "valueString" : "Orientation for family members on mission timeline, communication options, support resources, and emergency procedures"
                }
              ]
            },
            {
              "linkId" : "preflight-training.family-orientation.duration",
              "text" : "Duration (hours)",
              "type" : "integer",
              "initial" : [
                {
                  "valueInteger" : 4
                }
              ]
            },
            {
              "linkId" : "preflight-training.family-orientation.completed",
              "text" : "Orientation Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "preflight-training.family-orientation.date",
              "text" : "Completion Date",
              "type" : "date"
            },
            {
              "linkId" : "preflight-training.family-orientation.attendees",
              "text" : "Family Members Attending",
              "type" : "integer"
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
          "linkId" : "preflight-activities.family-assessment",
          "text" : "Family Support Assessment",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-activities.family-assessment.schedule",
              "text" : "Schedule",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "L-180 to L-90 days"
                }
              ]
            },
            {
              "linkId" : "preflight-activities.family-assessment.duration",
              "text" : "Duration (minutes)",
              "type" : "integer",
              "initial" : [
                {
                  "valueInteger" : 60
                }
              ]
            },
            {
              "linkId" : "preflight-activities.family-assessment.completed",
              "text" : "Assessment Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "preflight-activities.family-assessment.date",
              "text" : "Completion Date",
              "type" : "date"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "family-support-metrics",
      "text" : "Family Support Metrics",
      "type" : "group",
      "item" : [
        {
          "linkId" : "family-support-metrics.support-system",
          "text" : "Family Support System Strength",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Strong - extensive support network"
            },
            {
              "valueString" : "Adequate - sufficient support available"
            },
            {
              "valueString" : "Limited - some gaps in support"
            },
            {
              "valueString" : "Insufficient - significant support needs"
            }
          ]
        },
        {
          "linkId" : "family-support-metrics.communication-plan",
          "text" : "Communication Plan Established",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "family-support-metrics.communication-frequency",
          "text" : "Planned Communication Frequency",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Daily"
            },
            {
              "valueString" : "Several times per week"
            },
            {
              "valueString" : "Weekly"
            },
            {
              "valueString" : "As available"
            }
          ]
        },
        {
          "linkId" : "family-support-metrics.dependent-care",
          "text" : "Dependent Care Arrangements",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "No dependents"
            },
            {
              "valueString" : "Arrangements finalized"
            },
            {
              "valueString" : "Arrangements in progress"
            },
            {
              "valueString" : "Assistance needed"
            }
          ]
        },
        {
          "linkId" : "family-support-metrics.financial-preparedness",
          "text" : "Financial Preparedness",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Fully prepared"
            },
            {
              "valueString" : "Adequately prepared"
            },
            {
              "valueString" : "Some concerns"
            },
            {
              "valueString" : "Assistance needed"
            }
          ]
        },
        {
          "linkId" : "family-support-metrics.emergency-contacts",
          "text" : "Emergency Contacts Documented",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "family-support-metrics.family-concerns",
          "text" : "Family Concerns Identified",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "family-support-metrics.bhp-support-needed",
          "text" : "BHP Family Support Services Needed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "inflight-activities",
      "text" : "In-Flight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inflight-activities.family-contact",
          "text" : "Family Contact Support",
          "type" : "group",
          "item" : [
            {
              "linkId" : "inflight-activities.family-contact.frequency",
              "text" : "Check-in Frequency",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "Monthly or as needed"
                }
              ]
            },
            {
              "linkId" : "inflight-activities.family-contact.issues-identified",
              "text" : "Family Issues Identified During Mission",
              "type" : "boolean",
              "required" : false
            },
            {
              "linkId" : "inflight-activities.family-contact.issues-details",
              "text" : "Issue Details",
              "type" : "text",
              "enableWhen" : [
                {
                  "question" : "inflight-activities.family-contact.issues-identified",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ]
            },
            {
              "linkId" : "inflight-activities.family-contact.intervention-provided",
              "text" : "Intervention Provided",
              "type" : "boolean",
              "required" : false
            }
          ]
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.reunion-support",
          "text" : "Family Reunion Support",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-activities.reunion-support.schedule",
              "text" : "Schedule",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "R+0 to R+30 days"
                }
              ]
            },
            {
              "linkId" : "postflight-activities.reunion-support.completed",
              "text" : "Support Completed",
              "type" : "boolean",
              "required" : true
            }
          ]
        },
        {
          "linkId" : "postflight-activities.reintegration",
          "text" : "Family Reintegration Assessment",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-activities.reintegration.schedule",
              "text" : "Schedule",
              "type" : "string",
              "initial" : [
                {
                  "valueString" : "R+30 to R+90 days"
                }
              ]
            },
            {
              "linkId" : "postflight-activities.reintegration.completed",
              "text" : "Assessment Completed",
              "type" : "boolean",
              "required" : true
            },
            {
              "linkId" : "postflight-activities.reintegration.status",
              "text" : "Reintegration Status",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Successful - no concerns"
                },
                {
                  "valueString" : "Progressing well"
                },
                {
                  "valueString" : "Some challenges - support provided"
                },
                {
                  "valueString" : "Significant challenges - ongoing support"
                }
              ]
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
            }
          ]
        },
        {
          "linkId" : "data-delivery.confidentiality",
          "text" : "Confidentiality Level",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Crew member and family controlled"
            }
          ]
        }
      ]
    }
  ]
}

```
