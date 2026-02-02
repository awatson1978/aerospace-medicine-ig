# MEDB 2.3 Tuberculosis Testing - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 2.3 Tuberculosis Testing**

## Questionnaire: MEDB 2.3 Tuberculosis Testing 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-2-3-tb-testing | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MEDB23TBTesting |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for tuberculosis screening. Screens crew members for TB infection prior to spaceflight. 

 
To screen crew members for tuberculosis infection prior to spaceflight 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB23TBTestingQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-2-3-tb-testing",
  "version" : "0.5.8",
  "name" : "MEDB23TBTesting",
  "title" : "MEDB 2.3 Tuberculosis Testing",
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
  "description" : "NASA Medical Requirements Integration Document for tuberculosis screening. Screens crew members for TB infection prior to spaceflight.",
  "purpose" : "To screen crew members for tuberculosis infection prior to spaceflight",
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
              "valueString" : "MEDB 2.3 Tuberculosis Testing"
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
              "valueString" : "To screen crew members for latent or active tuberculosis infection prior to spaceflight."
            }
          ]
        },
        {
          "linkId" : "overview.flight-duration",
          "text" : "Flight Duration",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "All flights"
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
              "valueString" : "Annual medical examination"
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
      "linkId" : "tb-results",
      "text" : "TB Test Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "tb-results.test-type",
          "text" : "Test Type",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Tuberculin Skin Test (TST/PPD)"
            },
            {
              "valueString" : "Interferon-Gamma Release Assay (IGRA)"
            },
            {
              "valueString" : "QuantiFERON-TB Gold"
            },
            {
              "valueString" : "T-SPOT.TB"
            }
          ]
        },
        {
          "linkId" : "tb-results.result",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "71773-6",
              "display" : "Mycobacterium tuberculosis stimulated gamma interferon [Presence] in Blood"
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
                "display" : "Indeterminate"
              }
            }
          ]
        },
        {
          "linkId" : "tb-results.tst-induration",
          "text" : "TST Induration (mm)",
          "type" : "integer",
          "enableWhen" : [
            {
              "question" : "tb-results.test-type",
              "operator" : "=",
              "answerString" : "Tuberculin Skin Test (TST/PPD)"
            }
          ]
        },
        {
          "linkId" : "tb-results.chest-xray-required",
          "text" : "Chest X-ray Required",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "tb-results.result",
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
          "linkId" : "tb-results.chest-xray-result",
          "text" : "Chest X-ray Result",
          "type" : "choice",
          "enableWhen" : [
            {
              "question" : "tb-results.chest-xray-required",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
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
          "linkId" : "tb-results.treatment-required",
          "text" : "Treatment Required",
          "type" : "boolean"
        },
        {
          "linkId" : "tb-results.flight-cleared",
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
