# MEDB 2.4 H. pylori Screening - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 2.4 H. pylori Screening**

## Questionnaire: MEDB 2.4 H. pylori Screening 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-2-4-hpylori-screening | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MEDB24HpyloriScreening |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for Helicobacter pylori screening. Screens crew members for H. pylori infection prior to long-duration spaceflight. 

 
To screen crew members for Helicobacter pylori infection prior to long-duration spaceflight to prevent gastric complications 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB24HpyloriScreeningQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-2-4-hpylori-screening",
  "version" : "0.5.9",
  "name" : "MEDB24HpyloriScreening",
  "title" : "MEDB 2.4 H. pylori Screening",
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
  "description" : "NASA Medical Requirements Integration Document for Helicobacter pylori screening. Screens crew members for H. pylori infection prior to long-duration spaceflight.",
  "purpose" : "To screen crew members for Helicobacter pylori infection prior to long-duration spaceflight to prevent gastric complications",
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
              "valueString" : "MEDB 2.4 H. pylori Screening"
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
              "valueString" : "To screen crew members for H. pylori infection prior to long-duration spaceflight. Positive cases require treatment before flight to prevent gastric ulcer complications."
            }
          ]
        },
        {
          "linkId" : "overview.flight-duration",
          "text" : "Flight Duration",
          "type" : "string",
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
          "linkId" : "preflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "L-180 to L-90 days"
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
      "linkId" : "hpylori-results",
      "text" : "H. pylori Test Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "hpylori-results.test-type",
          "text" : "Test Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Urea Breath Test"
            },
            {
              "valueString" : "Stool Antigen Test"
            },
            {
              "valueString" : "Serology (IgG)"
            },
            {
              "valueString" : "Endoscopy with Biopsy"
            }
          ]
        },
        {
          "linkId" : "hpylori-results.result",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "17780-8",
              "display" : "Helicobacter pylori Ab [Presence] in Serum"
            }
          ],
          "text" : "Test Result",
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
                "display" : "Equivocal"
              }
            }
          ]
        },
        {
          "linkId" : "hpylori-results.treatment-required",
          "text" : "Eradication Treatment Required",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "hpylori-results.result",
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
          "linkId" : "hpylori-results.treatment-regimen",
          "text" : "Treatment Regimen",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "hpylori-results.treatment-required",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "answerOption" : [
            {
              "valueString" : "Triple Therapy (PPI + Clarithromycin + Amoxicillin)"
            },
            {
              "valueString" : "Quadruple Therapy (PPI + Bismuth + Metronidazole + Tetracycline)"
            },
            {
              "valueString" : "Other"
            }
          ]
        },
        {
          "linkId" : "hpylori-results.treatment-completed",
          "text" : "Treatment Completed",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "hpylori-results.treatment-required",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "hpylori-results.eradication-confirmed",
          "text" : "Eradication Confirmed (Post-treatment Test Negative)",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "hpylori-results.treatment-completed",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "hpylori-results.flight-cleared",
          "text" : "Cleared for Flight",
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
    }
  ]
}

```
