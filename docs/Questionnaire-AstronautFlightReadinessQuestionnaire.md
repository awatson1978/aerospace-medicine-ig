# Astronaut and Space Tourist Medical Screening Questionnaire - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Astronaut and Space Tourist Medical Screening Questionnaire**

## Questionnaire: Astronaut and Space Tourist Medical Screening Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/AstronautFlightReadinessQuestionnaire | *Version*:0.5.3 |
| Active as of 2025-05-18 | *Computable Name*:AstronautFlightReadinessQuestionnaire |

 
A medical screening form for astronaut or space tourism flight readiness, based on FAA Form 8500-8, NASA/ESA standards, and commercial vendor practices. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "AstronautFlightReadinessQuestionnaire",
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/AstronautFlightReadinessQuestionnaire",
  "version" : "0.5.3",
  "name" : "AstronautFlightReadinessQuestionnaire",
  "title" : "Astronaut and Space Tourist Medical Screening Questionnaire",
  "status" : "active",
  "date" : "2025-05-18",
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
  "description" : "A medical screening form for astronaut or space tourism flight readiness, based on FAA Form 8500-8, NASA/ESA standards, and commercial vendor practices.",
  "item" : [
    {
      "linkId" : "intro",
      "text" : "Application for Space Tourism activities.",
      "type" : "display"
    },
    {
      "linkId" : "citizenship",
      "text" : "Are you a United States citizen?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "demographic-info",
      "text" : "Demographic Information",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "firstName",
          "text" : "First Name",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "middleName",
          "text" : "Middle Name",
          "type" : "string"
        },
        {
          "linkId" : "lastName",
          "text" : "Last Name",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "phoneNumber",
          "text" : "Phone Number",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "emailAddress",
          "text" : "Email Address",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "confirmEmailAddress",
          "text" : "Confirm Email Address",
          "type" : "string",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "age-check",
      "text" : "Are you currently between the ages of 28 and 55?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "birthdate",
      "text" : "Birthdate",
      "type" : "date",
      "required" : true
    },
    {
      "linkId" : "sex",
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
        }
      ]
    },
    {
      "linkId" : "mission",
      "text" : "Flight Profile",
      "type" : "group",
      "item" : [
        {
          "linkId" : "flightType",
          "text" : "Type of Flight",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Suborbital"
            },
            {
              "valueString" : "Orbital"
            }
          ]
        },
        {
          "linkId" : "flightDuration",
          "text" : "Planned Mission Duration (days)",
          "type" : "integer"
        },
        {
          "linkId" : "crewRole",
          "text" : "Crew Role",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "Tourist"
            },
            {
              "valueString" : "Pilot"
            },
            {
              "valueString" : "Mission Specialist"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medicalHistory",
      "text" : "Medical History",
      "type" : "group",
      "item" : [
        {
          "linkId" : "cardiacHistory",
          "text" : "History of cardiac disease (e.g. heart attack, arrhythmia)?",
          "type" : "boolean"
        },
        {
          "linkId" : "neuroHistory",
          "text" : "History of neurological issues (e.g. stroke, seizures)?",
          "type" : "boolean"
        },
        {
          "linkId" : "psychHistory",
          "text" : "History of mental health disorders?",
          "type" : "boolean"
        },
        {
          "linkId" : "respiratoryHistory",
          "text" : "History of respiratory disorders (e.g. asthma, COPD)?",
          "type" : "boolean"
        },
        {
          "linkId" : "gastroHistory",
          "text" : "History of gastrointestinal disease?",
          "type" : "boolean"
        },
        {
          "linkId" : "renalHistory",
          "text" : "History of kidney stones or renal disease?",
          "type" : "boolean"
        },
        {
          "linkId" : "allergyHistory",
          "text" : "Do you have any allergies?",
          "type" : "boolean"
        },
        {
          "linkId" : "motionSickness",
          "text" : "History of motion sickness requiring medication?",
          "type" : "boolean"
        },
        {
          "linkId" : "pregnancyStatus",
          "text" : "Are you currently pregnant?",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "medications",
      "text" : "Medications and Supplements",
      "type" : "group",
      "item" : [
        {
          "linkId" : "medicationList",
          "text" : "List all current medications and supplements",
          "type" : "text"
        }
      ]
    },
    {
      "linkId" : "vitals",
      "text" : "Vital Signs and Physical Exam",
      "type" : "group",
      "item" : [
        {
          "linkId" : "height",
          "text" : "Height (cm)",
          "type" : "decimal"
        },
        {
          "linkId" : "weight",
          "text" : "Weight (kg)",
          "type" : "decimal"
        },
        {
          "linkId" : "bloodPressure",
          "text" : "Blood Pressure (mmHg)",
          "type" : "string"
        },
        {
          "linkId" : "heartRate",
          "text" : "Heart Rate (bpm)",
          "type" : "integer"
        }
      ]
    },
    {
      "linkId" : "functionalTests",
      "text" : "Functional Capacity",
      "type" : "group",
      "item" : [
        {
          "linkId" : "stairClimb",
          "text" : "Able to climb 7 flights of stairs in under 90 seconds?",
          "type" : "boolean"
        },
        {
          "linkId" : "egressTest",
          "text" : "Able to exit seat unassisted in emergency simulation?",
          "type" : "boolean"
        }
      ]
    },
    {
      "linkId" : "certification",
      "text" : "Medical Clearance and Physician Certification",
      "type" : "group",
      "item" : [
        {
          "linkId" : "certStatus",
          "text" : "Medically cleared for spaceflight?",
          "type" : "choice"
        },
        {
          "linkId" : "certPhysician",
          "text" : "Physician Name and Contact",
          "type" : "string"
        },
        {
          "linkId" : "certDate",
          "text" : "Date of Medical Certification",
          "type" : "date"
        }
      ]
    }
  ]
}

```
