# MR032L Telemedicine Setup - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR032L Telemedicine Setup**

## Questionnaire: MR032L Telemedicine Setup 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr032l-telemedicine-setup | *Version*:0.5.10 |
| Active as of 2017-06-05 | *Computable Name*:MR032LTelemedicineSetup |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for telemedicine setup and operations. Configures communication links, verifies equipment, and ensures readiness for remote medical support. 

 
Configure telemedicine systems, verify communication links, and ensure readiness for remote medical consultations and support. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR032LTelemedicineSetupQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr032l-telemedicine-setup",
  "version" : "0.5.10",
  "name" : "MR032LTelemedicineSetup",
  "title" : "MR032L Telemedicine Setup",
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
  "description" : "NASA Medical Requirements Integration Document for telemedicine setup and operations. Configures communication links, verifies equipment, and ensures readiness for remote medical support.",
  "purpose" : "Configure telemedicine systems, verify communication links, and ensure readiness for remote medical consultations and support.",
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
              "valueString" : "MR032L Telemedicine Setup and Operations"
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
          "linkId" : "overview.purpose",
          "text" : "Purpose/Objectives",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Configure and verify telemedicine capabilities for remote medical support."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preflight-configuration",
      "text" : "Preflight Configuration",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-configuration.training-completed",
          "text" : "Telemedicine Training Completed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "preflight-configuration.training-date",
          "text" : "Training Completion Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-configuration.primary-surgeon",
          "text" : "Primary Flight Surgeon Assigned",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "preflight-configuration.backup-surgeon",
          "text" : "Backup Flight Surgeon Assigned",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "preflight-configuration.communication-test",
          "text" : "Communication System Test Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "equipment-check",
      "text" : "In-Flight Equipment Verification",
      "type" : "group",
      "item" : [
        {
          "linkId" : "equipment-check.date",
          "text" : "Check Date",
          "type" : "date",
          "required" : true
        },
        {
          "linkId" : "equipment-check.video-operational",
          "text" : "Video System Operational",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "equipment-check.audio-operational",
          "text" : "Audio System Operational",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "equipment-check.data-link",
          "text" : "Medical Data Link Verified",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "equipment-check.bandwidth",
          "text" : "Available Bandwidth (Kbps)",
          "type" : "integer"
        },
        {
          "linkId" : "equipment-check.latency",
          "text" : "Communication Latency (ms)",
          "type" : "integer"
        },
        {
          "linkId" : "equipment-check.diagnostic-devices",
          "text" : "Diagnostic Devices Verified",
          "type" : "choice",
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Ultrasound"
            },
            {
              "valueString" : "ECG Monitor"
            },
            {
              "valueString" : "Blood Pressure Monitor"
            },
            {
              "valueString" : "Pulse Oximeter"
            },
            {
              "valueString" : "Ophthalmoscope"
            },
            {
              "valueString" : "Otoscope"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "consultation-log",
      "text" : "Telemedicine Consultation Log",
      "type" : "group",
      "item" : [
        {
          "linkId" : "consultation-log.date",
          "text" : "Consultation Date",
          "type" : "dateTime"
        },
        {
          "linkId" : "consultation-log.type",
          "text" : "Consultation Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Scheduled PMC"
            },
            {
              "valueString" : "Urgent Medical"
            },
            {
              "valueString" : "Emergency"
            },
            {
              "valueString" : "Specialist Referral"
            },
            {
              "valueString" : "Follow-up"
            }
          ]
        },
        {
          "linkId" : "consultation-log.duration",
          "text" : "Duration (minutes)",
          "type" : "integer"
        },
        {
          "linkId" : "consultation-log.participants",
          "text" : "Ground Participants",
          "type" : "string"
        },
        {
          "linkId" : "consultation-log.chief-complaint",
          "text" : "Chief Complaint/Reason",
          "type" : "text"
        },
        {
          "linkId" : "consultation-log.quality",
          "text" : "Communication Quality",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Excellent"
            },
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Acceptable"
            },
            {
              "valueString" : "Poor - Limited video"
            },
            {
              "valueString" : "Poor - Audio only"
            }
          ]
        },
        {
          "linkId" : "consultation-log.outcome",
          "text" : "Consultation Outcome/Plan",
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
                "code" : "emr",
                "display" : "Electronic Medical Record"
              }
            }
          ],
          "initial" : [
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
    }
  ]
}

```
