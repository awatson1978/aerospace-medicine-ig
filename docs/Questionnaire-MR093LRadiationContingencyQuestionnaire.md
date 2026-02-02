# MR093L Radiation Contingency - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MR093L Radiation Contingency**

## Questionnaire: MR093L Radiation Contingency 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/mr093l-radiation-contingency | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MR093LRadiationContingency |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for radiation contingency events. Documents unexpected radiation events, crew response, and medical assessment. 

 
Document radiation contingency events, crew protective response, exposure assessment, and medical evaluation. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MR093LRadiationContingencyQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/mr093l-radiation-contingency",
  "version" : "0.5.8",
  "name" : "MR093LRadiationContingency",
  "title" : "MR093L Radiation Contingency",
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
  "description" : "NASA Medical Requirements Integration Document for radiation contingency events. Documents unexpected radiation events, crew response, and medical assessment.",
  "purpose" : "Document radiation contingency events, crew protective response, exposure assessment, and medical evaluation.",
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
              "valueString" : "MR093L Radiation Contingency"
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
                "code" : "srag",
                "display" : "Space Radiation Analysis Group"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "srag",
                "display" : "Space Radiation Analysis Group"
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
                "code" : "radiation",
                "display" : "Radiation Health"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "radiation",
                "display" : "Radiation Health"
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
              "valueString" : "Document radiation contingencies, crew response, and medical assessment."
            }
          ]
        }
      ]
    },
    {
      "linkId" : "contingency-event",
      "text" : "Contingency Event Details",
      "type" : "group",
      "item" : [
        {
          "linkId" : "contingency-event.datetime",
          "text" : "Event Date/Time (UTC)",
          "type" : "dateTime",
          "required" : true
        },
        {
          "linkId" : "contingency-event.type",
          "text" : "Contingency Type",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Equipment malfunction - elevated readings"
            },
            {
              "valueString" : "Shielding breach/damage"
            },
            {
              "valueString" : "Unexpected exposure during EVA"
            },
            {
              "valueString" : "Dosimeter alarm"
            },
            {
              "valueString" : "Radioactive source incident"
            },
            {
              "valueString" : "Other"
            }
          ]
        },
        {
          "linkId" : "contingency-event.description",
          "text" : "Event Description",
          "type" : "text",
          "required" : true
        },
        {
          "linkId" : "contingency-event.crew-affected",
          "text" : "Number of Crew Affected",
          "type" : "integer"
        },
        {
          "linkId" : "contingency-event.location",
          "text" : "Location of Event",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "exposure-assessment",
      "text" : "Exposure Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "exposure-assessment.estimated-dose",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "73536-5",
              "display" : "Radiation dose"
            }
          ],
          "text" : "Estimated Additional Dose (mSv)",
          "type" : "decimal"
        },
        {
          "linkId" : "exposure-assessment.dose-type",
          "text" : "Exposure Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Whole body"
            },
            {
              "valueString" : "Skin/extremity"
            },
            {
              "valueString" : "Eye lens"
            },
            {
              "valueString" : "Mixed/uncertain"
            }
          ]
        },
        {
          "linkId" : "exposure-assessment.exposure-duration",
          "text" : "Exposure Duration (minutes)",
          "type" : "integer"
        },
        {
          "linkId" : "exposure-assessment.limits-exceeded",
          "text" : "Any Limits Exceeded",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "exposure-assessment.limits-detail",
          "text" : "Limits Exceeded Details",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "exposure-assessment.limits-exceeded",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medical-assessment",
      "text" : "Medical Assessment",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medical-assessment.symptoms-reported",
          "text" : "Symptoms Reported",
          "type" : "boolean"
        },
        {
          "linkId" : "medical-assessment.symptoms",
          "text" : "Symptoms",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "medical-assessment.symptoms-reported",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Nausea"
            },
            {
              "valueString" : "Fatigue"
            },
            {
              "valueString" : "Skin erythema"
            },
            {
              "valueString" : "Headache"
            },
            {
              "valueString" : "Other"
            }
          ]
        },
        {
          "linkId" : "medical-assessment.medical-consult",
          "text" : "Ground Medical Consultation",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-assessment.consult-recommendations",
          "text" : "Consultation Recommendations",
          "type" : "text"
        },
        {
          "linkId" : "medical-assessment.follow-up-required",
          "text" : "Follow-up Assessment Required",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "corrective-actions",
      "text" : "Corrective Actions",
      "type" : "group",
      "item" : [
        {
          "linkId" : "corrective-actions.immediate",
          "text" : "Immediate Actions Taken",
          "type" : "text"
        },
        {
          "linkId" : "corrective-actions.root-cause",
          "text" : "Root Cause (if determined)",
          "type" : "text"
        },
        {
          "linkId" : "corrective-actions.preventive-measures",
          "text" : "Preventive Measures Implemented",
          "type" : "text"
        },
        {
          "linkId" : "corrective-actions.report-filed",
          "text" : "Incident Report Filed",
          "type" : "boolean",
          "required" : true
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
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "areas",
                "display" : "Astronaut Radiation Exposure Assessment System"
              }
            }
          ]
        }
      ]
    }
  ]
}

```
