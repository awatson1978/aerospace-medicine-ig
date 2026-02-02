# MR050L Pharmaceutical Management - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR050L Pharmaceutical Management**

## Questionnaire: MR050L Pharmaceutical Management 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr050l-pharmaceutical-management | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MR050LPharmaceuticalManagement |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for pharmaceutical management aboard ISS. Tracks medication inventory, storage conditions, dispensing, and stability monitoring. 

 
Manage pharmaceutical inventory, track storage conditions, monitor medication stability, and document dispensing aboard ISS. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR050LPharmaceuticalManagementQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr050l-pharmaceutical-management",
  "version" : "0.5.8",
  "name" : "MR050LPharmaceuticalManagement",
  "title" : "MR050L Pharmaceutical Management",
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
  "description" : "NASA Medical Requirements Integration Document for pharmaceutical management aboard ISS. Tracks medication inventory, storage conditions, dispensing, and stability monitoring.",
  "purpose" : "Manage pharmaceutical inventory, track storage conditions, monitor medication stability, and document dispensing aboard ISS.",
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
              "valueString" : "MR050L Pharmaceutical Management"
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
              "valueString" : "Manage pharmaceutical inventory, storage conditions, and medication dispensing."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medication-inventory",
      "text" : "Medication Inventory",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medication-inventory.check-date",
          "text" : "Inventory Check Date",
          "type" : "date",
          "required" : true
        },
        {
          "linkId" : "medication-inventory.performed-by",
          "text" : "Performed By (CMO)",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "medication-inventory.total-medications",
          "text" : "Total Medications On Board",
          "type" : "integer"
        },
        {
          "linkId" : "medication-inventory.controlled-count",
          "text" : "Controlled Substances Count",
          "type" : "integer"
        },
        {
          "linkId" : "medication-inventory.controlled-verified",
          "text" : "Controlled Substances Verified",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "expiration-tracking",
      "text" : "Expiration Date Tracking",
      "type" : "group",
      "item" : [
        {
          "linkId" : "expiration-tracking.expiring-30",
          "text" : "Medications Expiring in 30 Days",
          "type" : "integer"
        },
        {
          "linkId" : "expiration-tracking.expiring-90",
          "text" : "Medications Expiring in 90 Days",
          "type" : "integer"
        },
        {
          "linkId" : "expiration-tracking.expired-removed",
          "text" : "Expired Medications Removed",
          "type" : "integer"
        },
        {
          "linkId" : "expiration-tracking.extension-approved",
          "text" : "Medications with Stability Extension Approval",
          "type" : "integer"
        },
        {
          "linkId" : "expiration-tracking.resupply-requested",
          "text" : "Resupply Requested",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "storage-conditions",
      "text" : "Storage Conditions Monitoring",
      "type" : "group",
      "item" : [
        {
          "linkId" : "storage-conditions.ambient-temp",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "60834-9",
              "display" : "Room temperature"
            }
          ],
          "text" : "Ambient Storage Temperature (°C)",
          "type" : "decimal"
        },
        {
          "linkId" : "storage-conditions.ambient-range",
          "text" : "Ambient Temp Within Range (15-25°C)",
          "type" : "boolean"
        },
        {
          "linkId" : "storage-conditions.refrigerated-temp",
          "text" : "Refrigerated Storage Temperature (°C)",
          "type" : "decimal"
        },
        {
          "linkId" : "storage-conditions.refrigerated-range",
          "text" : "Refrigerated Temp Within Range (2-8°C)",
          "type" : "boolean"
        },
        {
          "linkId" : "storage-conditions.humidity",
          "text" : "Storage Area Humidity (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "storage-conditions.excursions",
          "text" : "Temperature Excursions Since Last Check",
          "type" : "boolean"
        },
        {
          "linkId" : "storage-conditions.excursion-details",
          "text" : "Excursion Details",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "storage-conditions.excursions",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "dispensing-log",
      "text" : "Dispensing Log Entry",
      "type" : "group",
      "item" : [
        {
          "linkId" : "dispensing-log.dispensing-date",
          "text" : "Dispensing Date",
          "type" : "date"
        },
        {
          "linkId" : "dispensing-log.medication-name",
          "text" : "Medication Name",
          "type" : "string"
        },
        {
          "linkId" : "dispensing-log.dose",
          "text" : "Dose",
          "type" : "string"
        },
        {
          "linkId" : "dispensing-log.quantity",
          "text" : "Quantity Dispensed",
          "type" : "integer"
        },
        {
          "linkId" : "dispensing-log.indication",
          "text" : "Indication",
          "type" : "string"
        },
        {
          "linkId" : "dispensing-log.ground-consult",
          "text" : "Ground Consultation Performed",
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
