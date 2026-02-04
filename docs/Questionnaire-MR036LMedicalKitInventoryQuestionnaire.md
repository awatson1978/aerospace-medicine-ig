# MR036L Medical Kit Inventory - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR036L Medical Kit Inventory**

## Questionnaire: MR036L Medical Kit Inventory 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr036l-medical-kit-inventory | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MR036LMedicalKitInventory |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for medical kit inventory management. Tracks medical supplies, equipment status, and expiration dates aboard ISS. 

 
To maintain accurate inventory of medical supplies and equipment aboard ISS, track expiration dates, and ensure adequate supplies for crew health. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR036LMedicalKitInventoryQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr036l-medical-kit-inventory",
  "version" : "0.5.9",
  "name" : "MR036LMedicalKitInventory",
  "title" : "MR036L Medical Kit Inventory",
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
  "description" : "NASA Medical Requirements Integration Document for medical kit inventory management. Tracks medical supplies, equipment status, and expiration dates aboard ISS.",
  "purpose" : "To maintain accurate inventory of medical supplies and equipment aboard ISS, track expiration dates, and ensure adequate supplies for crew health.",
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
              "valueString" : "MR036L Medical Kit Inventory"
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
              "valueString" : "To maintain accurate inventory of medical supplies, track expiration dates, and ensure crew has adequate medical resources."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "inventory-check",
      "text" : "Inventory Check Details",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inventory-check.date",
          "text" : "Inventory Date",
          "type" : "date"
        },
        {
          "linkId" : "inventory-check.performed-by",
          "text" : "Performed By (CMO)",
          "type" : "string"
        },
        {
          "linkId" : "inventory-check.kit-type",
          "text" : "Kit Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Crew Medical Restraint System (CMRS)"
            },
            {
              "valueString" : "Ambulatory Medical Pack (AMP)"
            },
            {
              "valueString" : "Crew Health Care System (CHeCS)"
            },
            {
              "valueString" : "Advanced Life Support Pack (ALSP)"
            },
            {
              "valueString" : "Dental Kit"
            },
            {
              "valueString" : "Eye Kit"
            },
            {
              "valueString" : "IV Kit"
            },
            {
              "valueString" : "Minor Surgery Kit"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medications",
      "text" : "Medications Inventory",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medications.antibiotics-adequate",
          "text" : "Antibiotics Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.pain-management-adequate",
          "text" : "Pain Management Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.cardiovascular-adequate",
          "text" : "Cardiovascular Medications Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.gi-medications-adequate",
          "text" : "GI Medications Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.allergy-medications-adequate",
          "text" : "Allergy/Respiratory Medications Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.eye-ear-medications-adequate",
          "text" : "Eye/Ear Medications Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.topicals-adequate",
          "text" : "Topical Medications Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.emergency-drugs-adequate",
          "text" : "Emergency Drugs Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.expired-items",
          "text" : "Expired Medications Found",
          "type" : "boolean"
        },
        {
          "linkId" : "medications.expired-list",
          "text" : "List Expired Medications",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "medications.expired-items",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "medications.soon-to-expire",
          "text" : "Medications Expiring Within 90 Days",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "equipment",
      "text" : "Equipment Inventory",
      "type" : "group",
      "item" : [
        {
          "linkId" : "equipment.diagnostic-equipment-functional",
          "text" : "Diagnostic Equipment Functional",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.defibrillator-status",
          "text" : "Defibrillator Status",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Functional - tested"
            },
            {
              "valueString" : "Needs maintenance"
            },
            {
              "valueString" : "Non-functional"
            },
            {
              "valueString" : "N/A"
            }
          ]
        },
        {
          "linkId" : "equipment.defibrillator-last-test",
          "text" : "Defibrillator Last Test Date",
          "type" : "date"
        },
        {
          "linkId" : "equipment.iv-supplies-adequate",
          "text" : "IV Supplies Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.bandages-adequate",
          "text" : "Bandages/Wound Care Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.suture-supplies-adequate",
          "text" : "Suture Supplies Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.splinting-adequate",
          "text" : "Splinting Materials Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.airway-equipment-adequate",
          "text" : "Airway Equipment Adequate",
          "type" : "boolean"
        },
        {
          "linkId" : "equipment.equipment-issues",
          "text" : "Equipment Issues Noted",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "resupply",
      "text" : "Resupply Requirements",
      "type" : "group",
      "item" : [
        {
          "linkId" : "resupply.needed",
          "text" : "Resupply Required",
          "type" : "boolean"
        },
        {
          "linkId" : "resupply.priority",
          "text" : "Resupply Priority",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "resupply.needed",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "answerOption" : [
            {
              "valueString" : "Urgent - next available vehicle"
            },
            {
              "valueString" : "High - within 60 days"
            },
            {
              "valueString" : "Normal - next planned resupply"
            },
            {
              "valueString" : "Low - can wait"
            }
          ]
        },
        {
          "linkId" : "resupply.items-list",
          "text" : "Items Needed for Resupply",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "resupply.needed",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "summary",
      "text" : "Inventory Summary",
      "type" : "group",
      "item" : [
        {
          "linkId" : "summary.overall-status",
          "text" : "Overall Inventory Status",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Adequate - no action needed"
            },
            {
              "valueString" : "Minor shortages - monitor"
            },
            {
              "valueString" : "Significant gaps - resupply needed"
            },
            {
              "valueString" : "Critical - immediate action required"
            }
          ]
        },
        {
          "linkId" : "summary.notes",
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
