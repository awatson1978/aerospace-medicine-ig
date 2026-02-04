# MEDB 5.2 Strength Assessment - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 5.2 Strength Assessment**

## Questionnaire: MEDB 5.2 Strength Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-5-2-strength-assessment | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MEDB52StrengthAssessment |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for muscle strength assessment. Captures isokinetic and isometric strength data for spaceflight crew members. 

 
To assess pre- and postflight muscle strength using isokinetic and isometric testing to monitor for spaceflight-related muscle atrophy. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB52StrengthAssessmentQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-5-2-strength-assessment",
  "version" : "0.5.9",
  "name" : "MEDB52StrengthAssessment",
  "title" : "MEDB 5.2 Strength Assessment",
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
  "description" : "NASA Medical Requirements Integration Document for muscle strength assessment. Captures isokinetic and isometric strength data for spaceflight crew members.",
  "purpose" : "To assess pre- and postflight muscle strength using isokinetic and isometric testing to monitor for spaceflight-related muscle atrophy.",
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
              "valueString" : "MEDB 5.2 Muscle Strength Assessment"
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
              "valueString" : "To assess muscle strength using isokinetic dynamometry. Establish baseline and monitor for spaceflight-related muscle atrophy and strength loss."
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
              "valueString" : "Peak torque, total work, average power for knee, ankle, trunk muscle groups"
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
              "valueString" : "Isokinetic strength testing of major muscle groups including knee extensors/flexors, ankle plantar/dorsiflexors, and trunk extensors/flexors."
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
          "linkId" : "preflight-activities.test-date",
          "text" : "Test Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.test-completed",
          "text" : "Test Completed",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "preflight-strength-results",
      "text" : "Preflight Strength Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-strength-results.knee-extension",
          "text" : "Knee Extension",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-strength-results.knee-extension.right-peak-torque",
              "text" : "Right Peak Torque (Nm)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-strength-results.knee-extension.left-peak-torque",
              "text" : "Left Peak Torque (Nm)",
              "type" : "decimal"
            }
          ]
        },
        {
          "linkId" : "preflight-strength-results.knee-flexion",
          "text" : "Knee Flexion",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-strength-results.knee-flexion.right-peak-torque",
              "text" : "Right Peak Torque (Nm)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-strength-results.knee-flexion.left-peak-torque",
              "text" : "Left Peak Torque (Nm)",
              "type" : "decimal"
            }
          ]
        },
        {
          "linkId" : "preflight-strength-results.ankle-plantarflexion",
          "text" : "Ankle Plantarflexion",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-strength-results.ankle-plantarflexion.right-peak-torque",
              "text" : "Right Peak Torque (Nm)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-strength-results.ankle-plantarflexion.left-peak-torque",
              "text" : "Left Peak Torque (Nm)",
              "type" : "decimal"
            }
          ]
        },
        {
          "linkId" : "preflight-strength-results.trunk-extension",
          "text" : "Trunk Extension Peak Torque (Nm)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-strength-results.trunk-flexion",
          "text" : "Trunk Flexion Peak Torque (Nm)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-strength-results.grip-strength-right",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "83174-3",
              "display" : "Grip strength Hand - right"
            }
          ],
          "text" : "Right Hand Grip Strength (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-strength-results.grip-strength-left",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "83176-8",
              "display" : "Grip strength Hand - left"
            }
          ],
          "text" : "Left Hand Grip Strength (kg)",
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
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "postflight-strength-results",
      "text" : "Postflight Strength Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-strength-results.knee-extension-right",
          "text" : "Knee Extension Right Peak Torque (Nm)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-strength-results.knee-extension-left",
          "text" : "Knee Extension Left Peak Torque (Nm)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-strength-results.percent-change-knee",
          "text" : "Percent Change Knee Extension (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-strength-results.trunk-extension",
          "text" : "Trunk Extension Peak Torque (Nm)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-strength-results.percent-change-trunk",
          "text" : "Percent Change Trunk Extension (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-strength-results.muscle-atrophy-assessment",
          "text" : "Muscle Atrophy Assessment",
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
