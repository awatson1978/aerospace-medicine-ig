# MEDB 1.9 Dental Examination - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.9 Dental Examination**

## Questionnaire: MEDB 1.9 Dental Examination 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-9-dental-exam | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MEDB19DentalExam |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for dental examination. Captures comprehensive dental assessment data for spaceflight crew members. 

 
To assess dental fitness for spaceflight and ensure crew are free of dental conditions that could cause in-flight emergencies. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB19DentalExamQuestionnaire",
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
        }
      ],
      "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
    }
  ],
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-9-dental-exam",
  "version" : "0.5.8",
  "name" : "MEDB19DentalExam",
  "title" : "MEDB 1.9 Dental Examination",
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
  "description" : "NASA Medical Requirements Integration Document for dental examination. Captures comprehensive dental assessment data for spaceflight crew members.",
  "purpose" : "To assess dental fitness for spaceflight and ensure crew are free of dental conditions that could cause in-flight emergencies.",
  "copyright" : "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913",
  "item" : [
    {
      "linkId" : "overview",
      "text" : "Medical Requirements Overview",
      "type" : "group",
      "item" : [
        {
          "linkId" : "overview.mrid-number",
          "text" : "MRID Number",
          "type" : "display",
          "initial" : [
            {
              "valueString" : "MEDB 1.9 Dental Examination"
            }
          ]
        },
        {
          "linkId" : "overview.sponsor",
          "text" : "Sponsor",
          "type" : "choice",
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
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "dental",
                "display" : "Dental"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "dental",
                "display" : "Dental"
              }
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
          "linkId" : "preflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Annual, L-180 to L-90 days, L-14 to L-7 days (final clearance)"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.exam-date",
          "text" : "Examination Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.exam-completed",
          "text" : "Examination Completed",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "dental-results",
      "text" : "Dental Examination Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "dental-results.overall-status",
          "text" : "Overall Dental Status",
          "type" : "choice",
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
            }
          ]
        },
        {
          "linkId" : "dental-results.caries-present",
          "text" : "Dental Caries Present",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.periodontal-disease",
          "text" : "Periodontal Disease Present",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.restorations-needed",
          "text" : "Restorations Needed",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.restorations-completed",
          "text" : "Required Restorations Completed",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.panoramic-xray",
          "text" : "Panoramic X-ray Obtained",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.flight-risk",
          "text" : "In-Flight Emergency Risk",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Low risk"
            },
            {
              "valueString" : "Moderate risk"
            },
            {
              "valueString" : "High risk"
            }
          ]
        },
        {
          "linkId" : "dental-results.cleared-for-flight",
          "text" : "Cleared for Flight",
          "type" : "boolean"
        },
        {
          "linkId" : "dental-results.notes",
          "text" : "Examination Notes",
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
          "text" : "Data Archive",
          "type" : "choice",
          "answerOption" : [
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
