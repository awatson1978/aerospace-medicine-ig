# MEDB 2.2 MRSA Screening - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 2.2 MRSA Screening**

## Questionnaire: MEDB 2.2 MRSA Screening 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-2-2-mrsa-screening | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MEDB22MRSAScreening |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for MRSA screening. Screens crew members for Methicillin-resistant Staphylococcus aureus colonization prior to spaceflight. 

 
To screen crew members for MRSA colonization prior to spaceflight to prevent transmission in the closed ISS environment 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB22MRSAScreeningQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-2-2-mrsa-screening",
  "version" : "0.5.9",
  "name" : "MEDB22MRSAScreening",
  "title" : "MEDB 2.2 MRSA Screening",
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
  "description" : "NASA Medical Requirements Integration Document for MRSA screening. Screens crew members for Methicillin-resistant Staphylococcus aureus colonization prior to spaceflight.",
  "purpose" : "To screen crew members for MRSA colonization prior to spaceflight to prevent transmission in the closed ISS environment",
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
              "valueString" : "MEDB 2.2 MRSA Screening"
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
                "code" : "environmental-health",
                "display" : "Environmental Health System"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs",
                "code" : "environmental-health",
                "display" : "Environmental Health System"
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
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "laboratory",
                "display" : "Laboratory"
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
              "valueString" : "To screen crew members for MRSA colonization prior to spaceflight. Positive cases require decolonization treatment before flight."
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
              "valueString" : "All flights"
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
          "linkId" : "preflight-training.na",
          "text" : "No Preflight Training Required",
          "type" : "display"
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
              "valueString" : "Nasal swab collection from both nares for MRSA culture or PCR testing."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "L-60 to L-30 days, with retest at L-10 if initially positive"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.sample-date",
          "text" : "Sample Collection Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.sample-collected",
          "text" : "Sample Collected",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "mrsa-results",
      "text" : "MRSA Screening Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "mrsa-results.test-type",
          "text" : "Test Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Culture"
            },
            {
              "valueString" : "PCR"
            },
            {
              "valueString" : "Both"
            }
          ]
        },
        {
          "linkId" : "mrsa-results.result",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "42720-2",
              "display" : "MRSA DNA [Presence] in Nose by NAA with probe detection"
            }
          ],
          "text" : "MRSA Result",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "260385009",
                "display" : "Negative"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "10828004",
                "display" : "Positive"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "419984006",
                "display" : "Inconclusive"
              }
            }
          ]
        },
        {
          "linkId" : "mrsa-results.decolonization-required",
          "text" : "Decolonization Required",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mrsa-results.result",
              "operator" : "=",
              "answerCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "10828004",
                "display" : "Positive"
              }
            }
          ]
        },
        {
          "linkId" : "mrsa-results.decolonization-completed",
          "text" : "Decolonization Completed",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "mrsa-results.decolonization-required",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "mrsa-results.retest-result",
          "text" : "Retest Result (if applicable)",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "mrsa-results.decolonization-completed",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "260385009",
                "display" : "Negative"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "10828004",
                "display" : "Positive"
              }
            }
          ]
        },
        {
          "linkId" : "mrsa-results.flight-cleared",
          "text" : "Cleared for Flight",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "inflight-activities",
      "text" : "In-Flight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "inflight-activities.na",
          "text" : "No In-Flight Activities",
          "type" : "display"
        }
      ]
    },
    {
      "linkId" : "postflight-activities",
      "text" : "Postflight Activities",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-activities.na",
          "text" : "No specific postflight MRSA screening required",
          "type" : "display"
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
          "linkId" : "postflight-debrief.na",
          "text" : "N/A",
          "type" : "display"
        }
      ]
    }
  ]
}

```
