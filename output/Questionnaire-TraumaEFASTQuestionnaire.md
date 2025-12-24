# Trauma EFAST Exam - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trauma EFAST Exam**

## Questionnaire: Trauma EFAST Exam 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/TraumaEFASTQuestionnaire | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*: |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "TraumaEFASTQuestionnaire",
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/TraumaEFASTQuestionnaire",
  "version" : "0.4.2",
  "status" : "draft",
  "subjectType" : ["Patient"],
  "date" : "2025-12-24T15:11:38-07:00",
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
  "item" : [
    {
      "linkId" : "pericardial",
      "text" : "Pericardial (Cardiac) View",
      "type" : "group",
      "item" : [
        {
          "linkId" : "pericardialFluid",
          "text" : "Pericardial free fluid (effusion) present?",
          "type" : "boolean"
        },
        {
          "linkId" : "cardiacMotion",
          "text" : "Cardiac motion present?",
          "type" : "boolean"
        },
        {
          "linkId" : "cardiacImageQuality",
          "text" : "Image quality (cardiac view)",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "cardiacComments",
          "text" : "Comments (cardiac view)",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "ruq",
      "text" : "Right Upper Quadrant (RUQ) View",
      "type" : "group",
      "item" : [
        {
          "linkId" : "ruqFreeFluid",
          "text" : "Free fluid in RUQ (Morison’s pouch) present?",
          "type" : "boolean"
        },
        {
          "linkId" : "ruqImageQuality",
          "text" : "Image quality (RUQ view)",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "ruqComments",
          "text" : "Comments (RUQ view)",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "luq",
      "text" : "Left Upper Quadrant (LUQ) View",
      "type" : "group",
      "item" : [
        {
          "linkId" : "luqFreeFluid",
          "text" : "Free fluid in LUQ (spleno-renal recess) present?",
          "type" : "boolean"
        },
        {
          "linkId" : "luqImageQuality",
          "text" : "Image quality (LUQ view)",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "luqComments",
          "text" : "Comments (LUQ view)",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "pelvis",
      "text" : "Pelvic (Suprapubic) View",
      "type" : "group",
      "item" : [
        {
          "linkId" : "pelvicFreeFluid",
          "text" : "Free fluid in pelvic view present?",
          "type" : "boolean"
        },
        {
          "linkId" : "pelvicImageQuality",
          "text" : "Image quality (pelvic view)",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Good"
            },
            {
              "valueString" : "Moderate"
            },
            {
              "valueString" : "Poor"
            }
          ]
        },
        {
          "linkId" : "pelvicComments",
          "text" : "Comments (pelvic view)",
          "type" : "string"
        }
      ]
    },
    {
      "linkId" : "lungs",
      "text" : "Lung Views (Pleura)",
      "type" : "group",
      "item" : [
        {
          "linkId" : "rightLung",
          "text" : "Right Lung View",
          "type" : "group",
          "item" : [
            {
              "linkId" : "rightLungSliding",
              "text" : "Lung sliding present (right side)?",
              "type" : "boolean"
            },
            {
              "linkId" : "rightLungImageQuality",
              "text" : "Image quality (right lung)",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Good"
                },
                {
                  "valueString" : "Moderate"
                },
                {
                  "valueString" : "Poor"
                }
              ]
            },
            {
              "linkId" : "rightLungComments",
              "text" : "Comments (right lung)",
              "type" : "string"
            }
          ]
        },
        {
          "linkId" : "leftLung",
          "text" : "Left Lung View",
          "type" : "group",
          "item" : [
            {
              "linkId" : "leftLungSliding",
              "text" : "Lung sliding present (left side)?",
              "type" : "boolean"
            },
            {
              "linkId" : "leftLungImageQuality",
              "text" : "Image quality (left lung)",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Good"
                },
                {
                  "valueString" : "Moderate"
                },
                {
                  "valueString" : "Poor"
                }
              ]
            },
            {
              "linkId" : "leftLungComments",
              "text" : "Comments (left lung)",
              "type" : "string"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "overallInterpretation",
      "text" : "Overall EFAST Interpretation",
      "type" : "choice",
      "answerOption" : [
        {
          "valueCoding" : {
            "code" : "positive",
            "display" : "Positive – free fluid and/or pneumothorax identified"
          }
        },
        {
          "valueCoding" : {
            "code" : "negative",
            "display" : "Negative – no free fluid or pneumothorax found"
          }
        },
        {
          "valueCoding" : {
            "code" : "indeterminate",
            "display" : "Indeterminate / limited exam"
          }
        }
      ]
    }
  ]
}

```
