# G-SHOCK Centrifugal Trainer Eligibility Questionnaire - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **G-SHOCK Centrifugal Trainer Eligibility Questionnaire**

## Questionnaire: G-SHOCK Centrifugal Trainer Eligibility Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:http://aerospace-medicine.org/fhir/Questionnaire/g-shock-eligibility | *Version*:0.5.3 |
| Active as of 2025-05-19 | *Computable Name*:GShockEligibilityQuestionnaire |

 
Pre-training screening questionnaire to determine eligibility for G-SHOCK multi-axis gimbal training 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "GShockEligibility",
  "url" : "http://aerospace-medicine.org/fhir/Questionnaire/g-shock-eligibility",
  "version" : "0.5.3",
  "name" : "GShockEligibilityQuestionnaire",
  "title" : "G-SHOCK Centrifugal Trainer Eligibility Questionnaire",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-05-19",
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
  "description" : "Pre-training screening questionnaire to determine eligibility for G-SHOCK multi-axis gimbal training",
  "item" : [
    {
      "linkId" : "intro",
      "text" : "G-SHOCK Centrifugal Trainer Eligibility Assessment",
      "type" : "display"
    },
    {
      "linkId" : "personal-info",
      "text" : "Personal Information",
      "type" : "group",
      "item" : [
        {
          "linkId" : "personal-info.sex",
          "text" : "Sex",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "male",
                "display" : "Male"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female",
                "display" : "Female"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "other",
                "display" : "Other"
              }
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
              "valueDecimal" : 1.22
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDecimal" : 1.88
            }
          ],
          "linkId" : "personal-info.height",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8302-2",
              "display" : "Body height"
            }
          ],
          "text" : "Height (m)",
          "type" : "quantity",
          "required" : true
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
              "valueDecimal" : 113.3
            }
          ],
          "linkId" : "personal-info.weight",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "29463-7",
              "display" : "Body weight"
            }
          ],
          "text" : "Weight (kg)",
          "type" : "quantity",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "medical-history",
      "text" : "Medical History",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medical-history.head-neck-back",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "82271004",
              "display" : "Injury of head (disorder)"
            }
          ],
          "text" : "Do you have any current or past head, neck, or back injuries?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history.dizziness",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "404640003",
              "display" : "Dizziness (finding)"
            }
          ],
          "text" : "Do you experience dizziness or vertigo?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history.claustrophobia",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "19887002",
              "display" : "Claustrophobia (finding)"
            }
          ],
          "text" : "Do you experience claustrophobia (fear of enclosed spaces)?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history.pregnant",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "77386006",
              "display" : "Pregnancy (finding)"
            }
          ],
          "text" : "Are you currently pregnant?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "personal-info.sex",
              "operator" : "=",
              "answerCoding" : {
                "system" : "http://hl7.org/fhir/administrative-gender",
                "code" : "female"
              }
            }
          ],
          "required" : true
        },
        {
          "linkId" : "medical-history.seizures",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "225931003",
              "display" : "At risk of epileptic fits (finding)"
            }
          ],
          "text" : "Do you have a history of seizures or epilepsy?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history.heart-issues",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "49436004",
              "display" : "Atrial fibrillation (disorder)"
            }
          ],
          "text" : "Do you have any heart or circulatory conditions, including high blood pressure?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history.heart-issues-details",
          "text" : "Please describe any heart or circulatory conditions",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "medical-history.heart-issues",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medications",
      "text" : "Current Medications",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medications.current",
          "text" : "Are you currently taking any medications?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medications.list",
          "text" : "Please list all current medications",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "medications.current",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "symptoms",
      "text" : "Current Symptoms",
      "type" : "group",
      "item" : [
        {
          "linkId" : "symptoms.nausea",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "422587007",
              "display" : "Nausea (finding)"
            }
          ],
          "text" : "Are you currently experiencing any nausea?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "symptoms.headache",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "25064002",
              "display" : "Headache (finding)"
            }
          ],
          "text" : "Are you currently experiencing any headache?",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "previous-experience",
      "text" : "Previous Experience",
      "type" : "group",
      "item" : [
        {
          "linkId" : "previous-experience.centrifuge",
          "text" : "Have you previously experienced centrifuge training?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "previous-experience.issues",
          "text" : "Did you experience any issues during previous centrifuge training?",
          "type" : "boolean",
          "enableWhen" : [
            {
              "question" : "previous-experience.centrifuge",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        },
        {
          "linkId" : "previous-experience.issues-details",
          "text" : "Please describe any issues experienced during previous centrifuge training",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "previous-experience.issues",
              "operator" : "=",
              "answerBoolean" : true
            }
          ]
        }
      ]
    },
    {
      "linkId" : "certification",
      "text" : "Certification",
      "type" : "group",
      "item" : [
        {
          "linkId" : "certification.accuracy",
          "text" : "I certify that the information provided is accurate and complete",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "examiner-section",
      "text" : "To be completed by Medical Examiner",
      "type" : "group",
      "item" : [
        {
          "linkId" : "examiner.clearance",
          "text" : "Is the candidate medically cleared for G-SHOCK training?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "examiner.notes",
          "text" : "Medical Examiner Notes",
          "type" : "text"
        },
        {
          "linkId" : "examiner.name",
          "text" : "Medical Examiner Name",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "examiner.date",
          "text" : "Examination Date",
          "type" : "date",
          "required" : true
        }
      ]
    }
  ]
}

```
