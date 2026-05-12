# MEDB 5.3 Exercise Prescription - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 5.3 Exercise Prescription**

## Questionnaire: MEDB 5.3 Exercise Prescription 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-5-3-exercise-prescription | *Version*:0.5.12 |
| Active as of 2017-06-05 | *Computable Name*:MEDB53ExercisePrescription |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for exercise prescription. Documents in-flight exercise countermeasures protocol and adherence. 

 
To document and track in-flight exercise countermeasures prescription and crew adherence to maintain fitness during long-duration spaceflight. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB53ExercisePrescriptionQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-5-3-exercise-prescription",
  "version" : "0.5.12",
  "name" : "MEDB53ExercisePrescription",
  "title" : "MEDB 5.3 Exercise Prescription",
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
  "description" : "NASA Medical Requirements Integration Document for exercise prescription. Documents in-flight exercise countermeasures protocol and adherence.",
  "purpose" : "To document and track in-flight exercise countermeasures prescription and crew adherence to maintain fitness during long-duration spaceflight.",
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
              "valueString" : "MEDB 5.3 Exercise Countermeasures Prescription"
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
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "To prescribe and monitor in-flight exercise countermeasures to prevent cardiovascular, musculoskeletal, and neuromuscular deconditioning during spaceflight."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "exercise-prescription",
      "text" : "Exercise Prescription",
      "type" : "group",
      "item" : [
        {
          "linkId" : "exercise-prescription.aerobic",
          "text" : "Aerobic Exercise",
          "type" : "group",
          "item" : [
            {
              "linkId" : "exercise-prescription.aerobic.modality",
              "text" : "Modality",
              "type" : "choice",
              "repeats" : true,
              "answerOption" : [
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                    "code" : "t2-treadmill",
                    "display" : "T2 Treadmill"
                  }
                },
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                    "code" : "cevis",
                    "display" : "CEVIS Cycle Ergometer"
                  }
                }
              ]
            },
            {
              "linkId" : "exercise-prescription.aerobic.frequency",
              "text" : "Frequency (sessions/week)",
              "type" : "integer"
            },
            {
              "linkId" : "exercise-prescription.aerobic.duration",
              "text" : "Duration (minutes/session)",
              "type" : "integer"
            },
            {
              "linkId" : "exercise-prescription.aerobic.intensity",
              "text" : "Intensity Target",
              "type" : "string"
            }
          ]
        },
        {
          "linkId" : "exercise-prescription.resistive",
          "text" : "Resistive Exercise",
          "type" : "group",
          "item" : [
            {
              "linkId" : "exercise-prescription.resistive.modality",
              "text" : "Modality",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueCoding" : {
                    "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                    "code" : "ared",
                    "display" : "ARED (Advanced Resistive Exercise Device)"
                  }
                }
              ]
            },
            {
              "linkId" : "exercise-prescription.resistive.frequency",
              "text" : "Frequency (sessions/week)",
              "type" : "integer"
            },
            {
              "linkId" : "exercise-prescription.resistive.exercises",
              "text" : "Prescribed Exercises",
              "type" : "choice",
              "repeats" : true,
              "answerOption" : [
                {
                  "valueString" : "Squat"
                },
                {
                  "valueString" : "Deadlift"
                },
                {
                  "valueString" : "Heel Raise"
                },
                {
                  "valueString" : "Bench Press"
                },
                {
                  "valueString" : "Shoulder Press"
                },
                {
                  "valueString" : "Bent Over Row"
                },
                {
                  "valueString" : "Upright Row"
                }
              ]
            }
          ]
        },
        {
          "linkId" : "exercise-prescription.total-weekly-hours",
          "text" : "Total Weekly Exercise Time (hours)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "weekly-adherence",
      "text" : "Weekly Adherence Tracking",
      "type" : "group",
      "item" : [
        {
          "linkId" : "weekly-adherence.week-number",
          "text" : "Mission Week Number",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-adherence.aerobic-sessions-completed",
          "text" : "Aerobic Sessions Completed",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-adherence.aerobic-time-total",
          "text" : "Total Aerobic Time (minutes)",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-adherence.resistive-sessions-completed",
          "text" : "Resistive Sessions Completed",
          "type" : "integer"
        },
        {
          "linkId" : "weekly-adherence.adherence-percentage",
          "text" : "Adherence Percentage (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "weekly-adherence.missed-sessions-reason",
          "text" : "Reason for Missed Sessions",
          "type" : "choice",
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Operational constraints"
            },
            {
              "valueString" : "Equipment issues"
            },
            {
              "valueString" : "Crew schedule conflict"
            },
            {
              "valueString" : "Medical hold"
            },
            {
              "valueString" : "Other"
            }
          ]
        },
        {
          "linkId" : "weekly-adherence.notes",
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
