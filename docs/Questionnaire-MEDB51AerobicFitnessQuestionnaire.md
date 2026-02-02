# MEDB 5.1 Aerobic Fitness Assessment - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 5.1 Aerobic Fitness Assessment**

## Questionnaire: MEDB 5.1 Aerobic Fitness Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-5-1-aerobic-fitness | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MEDB51AerobicFitness |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for aerobic fitness assessment. Captures VO2max and related cardiovascular fitness data for spaceflight crew members. 

 
To assess pre- and postflight aerobic capacity (VO2max) using graded exercise testing to monitor cardiovascular deconditioning. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB51AerobicFitnessQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-5-1-aerobic-fitness",
  "version" : "0.5.8",
  "name" : "MEDB51AerobicFitness",
  "title" : "MEDB 5.1 Aerobic Fitness Assessment",
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
  "description" : "NASA Medical Requirements Integration Document for aerobic fitness assessment. Captures VO2max and related cardiovascular fitness data for spaceflight crew members.",
  "purpose" : "To assess pre- and postflight aerobic capacity (VO2max) using graded exercise testing to monitor cardiovascular deconditioning.",
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
              "valueString" : "MEDB 5.1 Aerobic Fitness Assessment"
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
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "required" : true,
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
        },
        {
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "To assess aerobic capacity (VO2max) using graded exercise testing. Establish baseline fitness and monitor for spaceflight-related cardiovascular deconditioning."
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
              "valueString" : "VO2max, heart rate, blood pressure, workload, rating of perceived exertion"
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
              "valueString" : "Exercise hardware familiarization including T2 treadmill, CEVIS cycle, and ARED resistive exercise device."
            }
          ]
        },
        {
          "linkId" : "preflight-training.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "initial" : [
            {
              "valueInteger" : 120
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
      "linkId" : "preflight-activities",
      "text" : "Preflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Graded exercise test (GXT) on treadmill or cycle ergometer with metabolic gas analysis. Test continues to volitional exhaustion or physician-determined endpoint."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "initial" : [
            {
              "valueInteger" : 45
            }
          ]
        },
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
          "linkId" : "preflight-activities.hardware",
          "text" : "Test Hardware",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "quinton-treadmill",
                "display" : "Quinton Treadmill"
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
          "linkId" : "preflight-activities.location",
          "text" : "Test Location",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.test-date",
          "text" : "Test Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.test-completed",
          "text" : "Test Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "preflight-fitness-results",
      "text" : "Preflight Fitness Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-fitness-results.vo2max-absolute",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "62872-7",
              "display" : "Oxygen consumption (VO2) at maximal exercise --peak"
            }
          ],
          "text" : "VO2max Absolute (L/min)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-fitness-results.vo2max-relative",
          "text" : "VO2max Relative (mL/kg/min)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-fitness-results.max-heart-rate",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "55426-2",
              "display" : "Heart rate --peak exercise"
            }
          ],
          "text" : "Maximum Heart Rate (bpm)",
          "type" : "integer"
        },
        {
          "linkId" : "preflight-fitness-results.max-workload",
          "text" : "Maximum Workload (Watts or Speed/Grade)",
          "type" : "string"
        },
        {
          "linkId" : "preflight-fitness-results.resting-hr",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ],
          "text" : "Resting Heart Rate (bpm)",
          "type" : "integer"
        },
        {
          "linkId" : "preflight-fitness-results.resting-bp-systolic",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8480-6",
              "display" : "Systolic blood pressure"
            }
          ],
          "text" : "Resting Systolic BP (mmHg)",
          "type" : "integer"
        },
        {
          "linkId" : "preflight-fitness-results.resting-bp-diastolic",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8462-4",
              "display" : "Diastolic blood pressure"
            }
          ],
          "text" : "Resting Diastolic BP (mmHg)",
          "type" : "integer"
        },
        {
          "linkId" : "preflight-fitness-results.respiratory-exchange-ratio",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "20564-1",
              "display" : "Oxygen content/Oxygen consumption ratio"
            }
          ],
          "text" : "Peak RER",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-fitness-results.test-termination-reason",
          "text" : "Test Termination Reason",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Volitional exhaustion"
            },
            {
              "valueString" : "Target heart rate achieved"
            },
            {
              "valueString" : "ECG abnormality"
            },
            {
              "valueString" : "Blood pressure response"
            },
            {
              "valueString" : "Symptoms"
            },
            {
              "valueString" : "Equipment failure"
            }
          ]
        },
        {
          "linkId" : "preflight-fitness-results.fitness-category",
          "text" : "Fitness Category",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Superior"
            },
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
          "linkId" : "preflight-fitness-results.notes",
          "text" : "Test Notes",
          "type" : "text"
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
              "valueString" : "Periodic submaximal exercise tests using CEVIS or T2 to estimate VO2max changes during mission."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Flight Day 14, monthly thereafter"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.inflight-vo2-estimate",
          "text" : "In-Flight VO2max Estimate (mL/kg/min)",
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
              "valueString" : "R+5 to R+7 days, R+30 days"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.test-date",
          "text" : "Postflight Test Date",
          "type" : "date"
        },
        {
          "linkId" : "postflight-activities.test-completed",
          "text" : "Postflight Test Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-fitness-results",
      "text" : "Postflight Fitness Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-fitness-results.vo2max-absolute",
          "text" : "VO2max Absolute (L/min)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-fitness-results.vo2max-relative",
          "text" : "VO2max Relative (mL/kg/min)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-fitness-results.max-heart-rate",
          "text" : "Maximum Heart Rate (bpm)",
          "type" : "integer"
        },
        {
          "linkId" : "postflight-fitness-results.percent-change",
          "text" : "Percent Change from Preflight (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-fitness-results.deconditioning-assessment",
          "text" : "Deconditioning Assessment",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Minimal (<5% decline)"
            },
            {
              "valueString" : "Mild (5-10% decline)"
            },
            {
              "valueString" : "Moderate (10-20% decline)"
            },
            {
              "valueString" : "Significant (>20% decline)"
            }
          ]
        },
        {
          "linkId" : "postflight-fitness-results.reconditioning-plan",
          "text" : "Reconditioning Plan Required",
          "type" : "boolean"
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
    },
    {
      "linkId" : "postflight-debrief",
      "text" : "Postflight Debrief",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-debrief.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "R+30 days"
            }
          ]
        },
        {
          "linkId" : "postflight-debrief.completed",
          "text" : "Debrief Completed",
          "type" : "boolean"
        }
      ]
    }
  ]
}

```
