# MR008L Medical Hardware Maintenance - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR008L Medical Hardware Maintenance**

## Questionnaire: MR008L Medical Hardware Maintenance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr008l-medical-hardware-maintenance | *Version*:0.5.10 |
| Active as of 2017-06-05 | *Computable Name*:MR008LMedicalHardwareMaintenance |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for medical hardware maintenance. Tracks calibration schedules, preventive maintenance, and equipment functionality verification. 

 
Track calibration and maintenance of medical equipment to ensure proper function and reliability. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR008LMedicalHardwareMaintenanceQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr008l-medical-hardware-maintenance",
  "version" : "0.5.10",
  "name" : "MR008LMedicalHardwareMaintenance",
  "title" : "MR008L Medical Hardware Maintenance",
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
  "description" : "NASA Medical Requirements Integration Document for medical hardware maintenance. Tracks calibration schedules, preventive maintenance, and equipment functionality verification.",
  "purpose" : "Track calibration and maintenance of medical equipment to ensure proper function and reliability.",
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
              "valueString" : "MR008L Medical Hardware Maintenance"
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
              "valueString" : "Track calibration schedules, preventive maintenance, and equipment functionality."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "equipment-item",
      "text" : "Equipment Item Details",
      "type" : "group",
      "item" : [
        {
          "linkId" : "equipment-item.device-name",
          "text" : "Device Name",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "equipment-item.device-type",
          "text" : "Device Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "12-lead-ecg",
                "display" : "12-Lead ECG Machine"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "blood-pressure-monitor",
                "display" : "Blood Pressure Monitor"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "dexa",
                "display" : "DEXA Scanner"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "audiometer",
                "display" : "Audiometer"
              }
            },
            {
              "valueString" : "Ultrasound"
            },
            {
              "valueString" : "Defibrillator"
            },
            {
              "valueString" : "Pulse Oximeter"
            }
          ]
        },
        {
          "linkId" : "equipment-item.serial-number",
          "text" : "Serial Number",
          "type" : "string"
        },
        {
          "linkId" : "equipment-item.location",
          "text" : "Location",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "calibration",
      "text" : "Calibration Record",
      "type" : "group",
      "item" : [
        {
          "linkId" : "calibration.last-date",
          "text" : "Last Calibration Date",
          "type" : "date"
        },
        {
          "linkId" : "calibration.next-due",
          "text" : "Next Calibration Due",
          "type" : "date"
        },
        {
          "linkId" : "calibration.interval-days",
          "text" : "Calibration Interval (days)",
          "type" : "integer"
        },
        {
          "linkId" : "calibration.performed-by",
          "text" : "Calibration Performed By",
          "type" : "string"
        },
        {
          "linkId" : "calibration.status",
          "text" : "Calibration Status",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Current"
            },
            {
              "valueString" : "Due Soon (within 30 days)"
            },
            {
              "valueString" : "Overdue"
            },
            {
              "valueString" : "Not Applicable"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "preventive-maintenance",
      "text" : "Preventive Maintenance",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preventive-maintenance.last-date",
          "text" : "Last PM Date",
          "type" : "date"
        },
        {
          "linkId" : "preventive-maintenance.next-due",
          "text" : "Next PM Due",
          "type" : "date"
        },
        {
          "linkId" : "preventive-maintenance.tasks-completed",
          "text" : "PM Tasks Completed",
          "type" : "choice",
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Visual inspection"
            },
            {
              "valueString" : "Cleaning"
            },
            {
              "valueString" : "Battery check/replacement"
            },
            {
              "valueString" : "Consumables replacement"
            },
            {
              "valueString" : "Functional verification"
            },
            {
              "valueString" : "Software update"
            }
          ]
        },
        {
          "linkId" : "preventive-maintenance.issues-found",
          "text" : "Issues Found During PM",
          "type" : "boolean"
        },
        {
          "linkId" : "preventive-maintenance.issues-details",
          "text" : "Issue Details",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "preventive-maintenance.issues-found",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "functionality-status",
      "text" : "Functionality Status",
      "type" : "group",
      "item" : [
        {
          "linkId" : "functionality-status.operational",
          "text" : "Device Operational",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "functionality-status.condition",
          "text" : "Overall Condition",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Excellent"
            },
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Fair - Minor issues"
            },
            {
              "valueString" : "Poor - Needs repair"
            },
            {
              "valueString" : "Non-functional"
            }
          ]
        },
        {
          "linkId" : "functionality-status.replacement-needed",
          "text" : "Replacement Needed",
          "type" : "boolean"
        },
        {
          "linkId" : "functionality-status.notes",
          "text" : "Additional Notes",
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
                "code" : "meme",
                "display" : "Medical Equipment Management Environment"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "meme",
                "display" : "Medical Equipment Management Environment"
              }
            }
          ]
        }
      ]
    }
  ]
}

```
