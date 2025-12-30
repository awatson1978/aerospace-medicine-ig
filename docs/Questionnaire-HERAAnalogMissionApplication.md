# NASA HERA Analog Mission Application - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA HERA Analog Mission Application**

## Questionnaire: NASA HERA Analog Mission Application 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/Questionnaire/hera-analog-mission-application | *Version*:0.5.1 |
| Active as of 2025-05-18 | *Computable Name*:HERAAnalogMissionApplication |
| **Copyright/Legal**: This information collection meets the requirements of 44 U.S.C 3507. OMB control number 2700-0174, expires 04/30/2026. | |

 
Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center 

 
To determine eligibility for the Flight Analog Project, including initial screening and evaluation to become a ground study subject. 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "HERAAnalogMissionApplication",
  "url" : "http://example.org/Questionnaire/hera-analog-mission-application",
  "version" : "0.5.1",
  "name" : "HERAAnalogMissionApplication",
  "title" : "NASA HERA Analog Mission Application",
  "status" : "active",
  "subjectType" : ["Patient"],
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
  "description" : "Application for the Human Exploration Research Analog (HERA) mission at NASA Johnson Space Center",
  "purpose" : "To determine eligibility for the Flight Analog Project, including initial screening and evaluation to become a ground study subject.",
  "copyright" : "This information collection meets the requirements of 44 U.S.C 3507. OMB control number 2700-0174, expires 04/30/2026.",
  "item" : [
    {
      "linkId" : "intro",
      "text" : "Application for Analog Missions. Additional information regarding HERA studies at the Johnson Space Center including a video tour of the HERA facility can be found on the NASA website. Before applying to be a study participant we ask that you review this information for a better understanding of what your participation would entail if chosen as a subject for a future HERA mission.",
      "type" : "display"
    },
    {
      "linkId" : "privacy-statement",
      "text" : "Privacy Act Statement: Pursuant to the Privacy Act of 1974, 5 U.S.C. § 552a, the following statement is furnished to individuals applying to become ground study subjects for the Flight Analog Project. Authority: This collection is authorized by 51 U.S.C. 20113(a) and 44 U.S.C. 3101. Purpose: We will use the information to determine eligibility for the Flight Analog Project. Effect of Nondisclosure: Supplying the information is voluntary on your part. However, failing to provide all or part of the information may prevent an accurate and timely decision on your application.",
      "type" : "display"
    },
    {
      "linkId" : "consent",
      "text" : "By submitting this form, you consent to adding your responses to the analog subject registry. After reviewing your responses, further information may be requested. You may withdraw your information from this registry at any time by sending an e-mail to the recruitment team.",
      "type" : "display"
    },
    {
      "linkId" : "citizenship",
      "text" : "Are you a United States citizen?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "confinement-consent",
      "text" : "For HERA missions, are you willing to be confined and isolated for required periods of time?",
      "type" : "boolean",
      "required" : true,
      "item" : [
        {
          "linkId" : "confinement-details",
          "text" : "HERA mission duration includes a confined isolation of 45 days. In addition to the isolation phase, each mission includes 16 days of pre-mission data collection and training and 7 days of post-mission data collection, requiring a stay in Houston, TX of up to 72 days.",
          "type" : "display"
        }
      ]
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
      "linkId" : "height",
      "text" : "Height (in inches). For HERA missions, height not to exceed 6' 2\" (74 inches)",
      "type" : "decimal",
      "required" : true
    },
    {
      "linkId" : "weight",
      "text" : "Weight (in pounds)",
      "type" : "decimal",
      "required" : true
    },
    {
      "linkId" : "born-outside-us",
      "text" : "Were you born outside of the United States?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "other-citizenship",
      "text" : "Do you hold citizenship in any country other than the United States?",
      "type" : "boolean",
      "required" : true
    },
    {
      "linkId" : "tobacco-nicotine",
      "text" : "Do you use any tobacco or nicotine products (select all that apply)?",
      "type" : "choice",
      "required" : true,
      "repeats" : true,
      "answerOption" : [
        {
          "valueString" : "None"
        },
        {
          "valueString" : "Smoking"
        },
        {
          "valueString" : "Vaping"
        },
        {
          "valueString" : "Chewing"
        },
        {
          "valueString" : "Skin Patches"
        },
        {
          "valueString" : "Other"
        }
      ]
    },
    {
      "linkId" : "medical-section",
      "text" : "Medical History",
      "type" : "group",
      "required" : true,
      "item" : [
        {
          "linkId" : "metal-in-body",
          "text" : "Do you have any metal in your body other than dental work?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "claustrophobia",
          "text" : "Are you claustrophobic?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "allergies-gi-diet",
          "text" : "Do you have any of the following?",
          "type" : "choice",
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Allergies (including food)"
            },
            {
              "valueString" : "GI Disorders"
            },
            {
              "valueString" : "Dietary Limitations"
            }
          ]
        },
        {
          "linkId" : "cardiovascular",
          "text" : "Any cardiovascular or circulatory system issues?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "neurological",
          "text" : "Any neurological problems?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "musculoskeletal",
          "text" : "Any musculoskeletal problems?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medications",
          "text" : "Are you taking any medications?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "sleep-disorders",
          "text" : "Any sleep disorders such as sleep walking or use of sleep aids?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "psychiatric",
          "text" : "Any psychiatric disorders or history of mental illness?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "motion-sickness",
          "text" : "Any motion sickness (not a disqualifier)?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "adhd-treatment",
          "text" : "Any pharmacological treatment for ADHD?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "kidney-stones",
          "text" : "Any history of kidney stones?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "ulcers",
          "text" : "Any history of ulcers?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "epilepsy",
          "text" : "Any history of epilepsy or other disorders of the brain?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "blood-clots",
          "text" : "Any history of blood clots?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "family-seizures",
          "text" : "Any history of close relatives with seizures?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "bisphosphonate",
          "text" : "Are you currently on Bis-Phosphonate (for example, Fosamax, Boniva, or Reclast)?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "seizure-meds",
          "text" : "Are you currently on any medication that might increase chances of seizures?",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "experience-background",
      "text" : "Experience and Background",
      "type" : "group",
      "item" : [
        {
          "linkId" : "vr-experience",
          "text" : "Have you ever experienced virtual reality?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "military-background",
          "text" : "Do you have a military background?",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "education",
          "text" : "What is your highest level of education in a STEM related field?",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Bachelor"
            },
            {
              "valueString" : "Master of Science"
            },
            {
              "valueString" : "PhD"
            },
            {
              "valueString" : "Medical Doctor"
            },
            {
              "valueString" : "Other"
            }
          ]
        },
        {
          "linkId" : "employment",
          "text" : "Employment Status",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "US Civil Servant"
            },
            {
              "valueString" : "Government Contractor"
            },
            {
              "valueString" : "Military"
            },
            {
              "valueString" : "Other"
            },
            {
              "valueString" : "Unemployed"
            }
          ]
        },
        {
          "linkId" : "referral-source",
          "text" : "How did you hear about HERA?",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Professional Organization"
            },
            {
              "valueString" : "Recruitment Announcement"
            },
            {
              "valueString" : "Conference"
            },
            {
              "valueString" : "Social Media"
            },
            {
              "valueString" : "Referred by Friend or Colleague"
            },
            {
              "valueString" : "Online Search"
            },
            {
              "valueString" : "Other"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "additional-info",
      "text" : "Please provide any additional information you wish us to consider in your application",
      "type" : "text",
      "maxLength" : 500
    },
    {
      "linkId" : "submission-consent",
      "text" : "Submitting voluntary information constitutes your consent to the use of the information for the stated purpose. By submitting this form, you are providing voluntary consent to use the information submitted for the purpose stated. The final determination for clearance is the responsibility of NASA. You may be provided the opportunity to personally explain, refute, or clarify any information before a final decision is made.",
      "type" : "display"
    },
    {
      "linkId" : "process-info",
      "text" : "Typically, all applicants will be contacted within 5 to 7 business days following the submission of this application regarding its status. Eligible applicants may then be asked to provide additional screening information such as a professional resume or CV and must pass a federal background check.",
      "type" : "display"
    }
  ]
}

```
