# MEDB 7.1 Preflight Psychiatric/Psychological Status Check - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 7.1 Preflight Psychiatric/Psychological Status Check**

## Questionnaire: MEDB 7.1 Preflight Psychiatric/Psychological Status Check 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-7-1-psych-status | *Version*:0.5.12 |
| Active as of 2012-05-31 | *Computable Name*:MEDB71PsychStatus |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for preflight behavioral health assessment. Captures psychiatric/psychological assessment of behavioral readiness for flight and review of psychological services. 

 
Psychiatric/Psychological assessment of behavioral readiness for flight. Review of individual and crew psychological services. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB71PsychStatusQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-7-1-psych-status",
  "version" : "0.5.12",
  "name" : "MEDB71PsychStatus",
  "title" : "MEDB 7.1 Preflight Psychiatric/Psychological Status Check",
  "status" : "active",
  "date" : "2012-05-31",
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
  "description" : "NASA Medical Requirements Integration Document for preflight behavioral health assessment. Captures psychiatric/psychological assessment of behavioral readiness for flight and review of psychological services.",
  "purpose" : "Psychiatric/Psychological assessment of behavioral readiness for flight. Review of individual and crew psychological services.",
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
              "valueString" : "MEDB 7.1 Preflight Psychiatric/Psychological Status Check"
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
          "linkId" : "overview.category",
          "text" : "Category",
          "type" : "string",
          "required" : true,
          "readOnly" : true,
          "initial" : [
            {
              "valueString" : "Medical Requirements (MR)"
            }
          ]
        },
        {
          "linkId" : "overview.references",
          "text" : "References",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Medical Evaluation Documents (MED) Volume B, Section 7.1; ISS MORD"
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
              "valueString" : "Psychiatric/Psychological assessment of behavioral readiness for flight. Review of individual and crew psychological services."
            }
          ]
        },
        {
          "linkId" : "overview.measurement-parameters",
          "text" : "Measurement Parameters",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "N/A"
            }
          ]
        },
        {
          "linkId" : "overview.deliverables",
          "text" : "Deliverables",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "N/A"
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
          "linkId" : "overview.number-of-flights",
          "text" : "Number of Flights",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Each ISS long duration expedition"
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
              "valueString" : "All ISS crewmembers"
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
          "linkId" : "preflight-training.na",
          "text" : "No Preflight Training Required",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "preflight-activities",
      "text" : "Preflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "An assessment of crew flight readiness is conducted by BHP personnel. Preflight briefings between the crewmembers & BHP specialist are required to confirm behavioral readiness for flight & review of individual & crew psychological services. This will include a check of life events that would have an impact on the astronaut's fitness for launch. Behavioral Medicine Assessments to include Neurocognitive baseline and Behavioral health baseline needed for in flight monitoring to be completed between L-12 and launch."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.assessment1",
          "text" : "Behavioral Medicine Assessment 1",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-activities.assessment1.duration",
              "text" : "Duration (minutes)",
              "type" : "integer",
              "required" : true,
              "initial" : [
                {
                  "valueInteger" : 60
                }
              ]
            },
            {
              "linkId" : "preflight-activities.assessment1.schedule",
              "text" : "Schedule",
              "type" : "string",
              "required" : true,
              "initial" : [
                {
                  "valueString" : "L-12 m, L-240/180 d"
                }
              ]
            },
            {
              "linkId" : "preflight-activities.assessment1.date",
              "text" : "Assessment Date",
              "type" : "date",
              "required" : false
            },
            {
              "linkId" : "preflight-activities.assessment1.completed",
              "text" : "Assessment Completed",
              "type" : "boolean",
              "required" : true
            }
          ]
        },
        {
          "linkId" : "preflight-activities.assessment2",
          "text" : "Behavioral Medicine Assessment 2",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-activities.assessment2.duration",
              "text" : "Duration (minutes)",
              "type" : "integer",
              "required" : true,
              "initial" : [
                {
                  "valueInteger" : 60
                }
              ]
            },
            {
              "linkId" : "preflight-activities.assessment2.schedule",
              "text" : "Schedule",
              "type" : "string",
              "required" : true,
              "initial" : [
                {
                  "valueString" : "L-90/30 days"
                }
              ]
            },
            {
              "linkId" : "preflight-activities.assessment2.date",
              "text" : "Assessment Date",
              "type" : "date",
              "required" : false
            },
            {
              "linkId" : "preflight-activities.assessment2.completed",
              "text" : "Assessment Completed",
              "type" : "boolean",
              "required" : true
            }
          ]
        },
        {
          "linkId" : "preflight-activities.flexibility",
          "text" : "Flexibility",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "May be conducted over 2 days between L-90/30"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.personnel",
          "text" : "Personnel Required",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "crewmember",
                "display" : "Crewmember"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs",
                "code" : "bhp-specialist",
                "display" : "BHP Specialist"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.location",
          "text" : "Test Location",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "russia-gctc",
                "display" : "Gagarin Cosmonaut Training Center"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.room-requirements",
          "text" : "Room Requirements",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "8' x 10' private room free of distractions"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.constraints",
          "text" : "Constraints/Special Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Request that the L-90/30 event be scheduled as close as possible to the crewmember's final departure from the US prior to their Soyuz launch."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "assessment-results",
      "text" : "Behavioral Assessment Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "assessment-results.behavioral-readiness",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "44249-1",
              "display" : "Mental status Narrative"
            }
          ],
          "text" : "Behavioral Readiness for Flight",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "17621005",
                "display" : "Normal"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "263654008",
                "display" : "Abnormal"
              }
            },
            {
              "valueString" : "Cleared with conditions"
            },
            {
              "valueString" : "Not cleared"
            }
          ]
        },
        {
          "linkId" : "assessment-results.neurocognitive-baseline",
          "text" : "Neurocognitive Baseline Completed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.behavioral-baseline",
          "text" : "Behavioral Health Baseline Completed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.life-events-review",
          "text" : "Life Events Review Completed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.life-events-impact",
          "text" : "Life Events with Potential Impact Identified",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "assessment-results.psych-services-review",
          "text" : "Individual Psychological Services Reviewed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.crew-services-review",
          "text" : "Crew Psychological Services Reviewed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.aeromedical-concerns",
          "text" : "Aeromedical Concerns Identified",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "assessment-results.aeromedical-concerns-details",
          "text" : "Aeromedical Concerns Details",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "assessment-results.aeromedical-concerns",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "required" : false
        }
      ]
    },
    {
      "linkId" : "behavioral-metrics",
      "text" : "Behavioral State Metrics",
      "type" : "group",
      "item" : [
        {
          "linkId" : "behavioral-metrics.mood-level",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "mood-level",
              "display" : "Mood level"
            }
          ],
          "text" : "Mood Level (-3 to +3)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "behavioral-metrics.anxiety-level",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "anxiety-level",
              "display" : "Anxiety level"
            }
          ],
          "text" : "Anxiety Level (0-10)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "behavioral-metrics.coping-capacity",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "coping-capacity",
              "display" : "Coping capacity"
            }
          ],
          "text" : "Coping Capacity Assessment",
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
              "valueString" : "Marginal"
            },
            {
              "valueString" : "Inadequate"
            }
          ]
        },
        {
          "linkId" : "behavioral-metrics.sleep-quality",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "sleep-quality",
              "display" : "Sleep quality"
            }
          ],
          "text" : "Sleep Quality Assessment",
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
              "valueString" : "Fair"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "behavioral-metrics.cognitive-readiness",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "cognitive-readiness",
              "display" : "Cognitive readiness"
            }
          ],
          "text" : "Cognitive Readiness for Mission",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueString" : "Fully ready"
            },
            {
              "valueString" : "Ready with minor concerns"
            },
            {
              "valueString" : "Ready with monitoring"
            },
            {
              "valueString" : "Not ready"
            }
          ]
        },
        {
          "linkId" : "behavioral-metrics.social-connectedness",
          "code" : [
            {
              "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs",
              "code" : "social-connectedness",
              "display" : "Social connectedness"
            }
          ],
          "text" : "Social Connectedness (with crew/family)",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueString" : "Strong"
            },
            {
              "valueString" : "Adequate"
            },
            {
              "valueString" : "Weak"
            },
            {
              "valueString" : "Concerning"
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
          "linkId" : "inflight-activities.na",
          "text" : "No In-Flight Activities",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.na",
          "text" : "No Postflight Activities",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "data-delivery",
      "text" : "Data Delivery",
      "type" : "group",
      "item" : [
        {
          "linkId" : "data-delivery.data-control",
          "text" : "Data Control",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Data are crew member controlled. The crewmember is the designated recipient of the data and sharing this information is at his/her discretion."
            }
          ]
        },
        {
          "linkId" : "data-delivery.emr-entry",
          "text" : "EMR Entry Made",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "data-delivery.emr-entry-notes",
          "text" : "EMR Entry Notes",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Entries will be made in the EMR for each event showing completion of the MEDB requirement and stating if any aeromedical concerns were identified."
            }
          ]
        },
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
        }
      ]
    },
    {
      "linkId" : "postflight-debrief",
      "text" : "Postflight Debrief",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-debrief.na",
          "text" : "No Postflight Debrief Required",
          "type" : "display"
        }
      ]
    }
  ]
}

```
