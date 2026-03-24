# MEDB 6.1 EVA Medical Requirements - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 6.1 EVA Medical Requirements**

## Questionnaire: MEDB 6.1 EVA Medical Requirements 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-6-1-eva-medical | *Version*:0.5.10 |
| Active as of 2017-06-05 | *Computable Name*:MEDB61EVAMedical |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for EVA medical requirements. Documents medical clearance, prebreathe protocol, and health monitoring for extravehicular activities. 

 
To document medical requirements for EVA including crew certification, prebreathe protocol compliance, and post-EVA health assessment. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB61EVAMedicalRequirementsQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-6-1-eva-medical",
  "version" : "0.5.10",
  "name" : "MEDB61EVAMedical",
  "title" : "MEDB 6.1 EVA Medical Requirements",
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
  "description" : "NASA Medical Requirements Integration Document for EVA medical requirements. Documents medical clearance, prebreathe protocol, and health monitoring for extravehicular activities.",
  "purpose" : "To document medical requirements for EVA including crew certification, prebreathe protocol compliance, and post-EVA health assessment.",
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
              "valueString" : "MEDB 6.1 EVA Medical Requirements"
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
                "code" : "medical-operations",
                "display" : "Medical Operations"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "medical-operations",
                "display" : "Medical Operations"
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
                "code" : "eva-medical",
                "display" : "EVA Medical"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "eva-medical",
                "display" : "EVA Medical"
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
              "valueString" : "To ensure crew medical fitness for EVA, document prebreathe protocol compliance, and monitor crew health during and after EVA operations."
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
              "valueString" : "Medical clearance, prebreathe compliance, vitals during EVA, DCS symptoms, post-EVA assessment"
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
              "valueString" : "EVA medical training including DCS recognition, emergency procedures, and suit operations from medical perspective."
            }
          ]
        },
        {
          "linkId" : "preflight-training.nbl-runs",
          "text" : "NBL Training Runs Completed",
          "type" : "integer"
        },
        {
          "linkId" : "preflight-training.eva-certification",
          "text" : "EVA Medical Certification",
          "type" : "boolean"
        },
        {
          "linkId" : "preflight-training.certification-date",
          "text" : "Certification Date",
          "type" : "date"
        }
      ]
    },
    {
      "linkId" : "pre-eva-activities",
      "text" : "Pre-EVA Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "pre-eva-activities.eva-number",
          "text" : "EVA Number",
          "type" : "string"
        },
        {
          "linkId" : "pre-eva-activities.planned-date",
          "text" : "Planned EVA Date",
          "type" : "date"
        },
        {
          "linkId" : "pre-eva-activities.medical-clearance",
          "text" : "Flight Surgeon Medical Clearance",
          "type" : "boolean"
        },
        {
          "linkId" : "pre-eva-activities.clearance-date",
          "text" : "Clearance Date/Time",
          "type" : "dateTime"
        },
        {
          "linkId" : "pre-eva-activities.prebreathe-protocol",
          "text" : "Prebreathe Protocol",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Campout (overnight in airlock)"
            },
            {
              "valueString" : "In-suit Light Exercise (ISLE)"
            },
            {
              "valueString" : "Exercise Prebreathe Protocol"
            }
          ]
        },
        {
          "linkId" : "pre-eva-activities.prebreathe-start",
          "text" : "Prebreathe Start Time (GMT)",
          "type" : "time"
        },
        {
          "linkId" : "pre-eva-activities.prebreathe-duration",
          "text" : "Prebreathe Duration (minutes)",
          "type" : "integer"
        },
        {
          "linkId" : "pre-eva-activities.prebreathe-complete",
          "text" : "Prebreathe Protocol Completed",
          "type" : "boolean"
        },
        {
          "linkId" : "pre-eva-activities.suit-donning-complete",
          "text" : "Suit Donning Complete",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "during-eva",
      "text" : "During EVA Monitoring",
      "type" : "group",
      "item" : [
        {
          "linkId" : "during-eva.eva-start-time",
          "text" : "EVA Start Time (Airlock Depress)",
          "type" : "dateTime"
        },
        {
          "linkId" : "during-eva.eva-end-time",
          "text" : "EVA End Time (Airlock Repress)",
          "type" : "dateTime"
        },
        {
          "linkId" : "during-eva.eva-duration",
          "text" : "EVA Duration (hours:minutes)",
          "type" : "string"
        },
        {
          "linkId" : "during-eva.metabolic-rate-avg",
          "text" : "Average Metabolic Rate (BTU/hr)",
          "type" : "decimal"
        },
        {
          "linkId" : "during-eva.water-consumed",
          "text" : "Water Consumed (oz)",
          "type" : "decimal"
        },
        {
          "linkId" : "during-eva.dcs-symptoms",
          "text" : "DCS Symptoms Reported During EVA",
          "type" : "boolean"
        },
        {
          "linkId" : "during-eva.dcs-symptoms-description",
          "text" : "DCS Symptoms Description",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "during-eva.dcs-symptoms",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "during-eva.medical-issues",
          "text" : "Other Medical Issues During EVA",
          "type" : "boolean"
        },
        {
          "linkId" : "during-eva.issues-description",
          "text" : "Medical Issues Description",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "during-eva.medical-issues",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "post-eva-assessment",
      "text" : "Post-EVA Medical Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "post-eva-assessment.assessment-time",
          "text" : "Post-EVA Assessment Time",
          "type" : "dateTime"
        },
        {
          "linkId" : "post-eva-assessment.general-condition",
          "text" : "General Condition",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Good - no issues"
            },
            {
              "valueString" : "Fatigued but well"
            },
            {
              "valueString" : "Minor discomfort"
            },
            {
              "valueString" : "Requires medical attention"
            }
          ]
        },
        {
          "linkId" : "post-eva-assessment.dcs-symptoms-post",
          "text" : "DCS Symptoms Post-EVA",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.joint-pain",
          "text" : "Joint/Limb Pain",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.neurological-symptoms",
          "text" : "Neurological Symptoms",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.skin-issues",
          "text" : "Skin Issues (blisters, abrasions)",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.hand-issues",
          "text" : "Hand/Finger Issues",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.suit-fit-issues",
          "text" : "Suit Fit Issues Noted",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.fluid-intake",
          "text" : "Post-EVA Fluid Intake Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.cleared-for-next-eva",
          "text" : "Cleared for Next EVA (if planned)",
          "type" : "boolean"
        },
        {
          "linkId" : "post-eva-assessment.notes",
          "text" : "Post-EVA Medical Notes",
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
