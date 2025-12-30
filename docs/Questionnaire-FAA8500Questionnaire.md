# FAA Form 8500-8 Questionnaire - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FAA Form 8500-8 Questionnaire**

## Questionnaire: FAA Form 8500-8 Questionnaire 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/Questionnaire/faa-form-8500-8 | *Version*:0.5.1 |
| Active as of 2025-05-21 | *Computable Name*: |
| **Copyright/Legal**: Federal Aviation Administration | |

 
FAA Form 8500-8 Application for Airman Medical Certificate converted to FHIR Questionnaire format 

 
Application for Airman Medical Certificate or Airman Medical & Student Pilot Certificate 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "FAA8500Questionnaire",
  "url" : "http://hl7.org/fhir/uv/aerospace/Questionnaire/faa-form-8500-8",
  "version" : "0.5.1",
  "title" : "FAA Form 8500-8 Questionnaire",
  "status" : "active",
  "date" : "2025-05-21",
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
  "description" : "FAA Form 8500-8 Application for Airman Medical Certificate converted to FHIR Questionnaire format",
  "purpose" : "Application for Airman Medical Certificate or Airman Medical & Student Pilot Certificate",
  "copyright" : "Federal Aviation Administration",
  "item" : [
    {
      "linkId" : "application-info",
      "text" : "APPLICATION INFORMATION",
      "type" : "group",
      "item" : [
        {
          "linkId" : "application-type",
          "text" : "APPLICATION FOR",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "urn:oid:2.16.840.1.113883.6.1",
                "code" : "432401000124109",
                "display" : "Medical Certificate"
              }
            },
            {
              "valueCoding" : {
                "system" : "urn:oid:2.16.840.1.113883.6.1",
                "code" : "446021008",
                "display" : "Medical and Student Pilot Certificate"
              }
            }
          ]
        },
        {
          "linkId" : "certificate-class",
          "text" : "CLASS OF MEDICAL CERTIFICATE APPLIED FOR",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "First"
            },
            {
              "valueString" : "Second"
            },
            {
              "valueString" : "Third"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "personal-info",
      "text" : "PERSONAL INFORMATION",
      "type" : "group",
      "item" : [
        {
          "linkId" : "name",
          "text" : "NAME (Last, First, Middle)",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "ssn",
          "text" : "SOCIAL SECURITY NUMBER",
          "type" : "string",
          "required" : false
        },
        {
          "linkId" : "address",
          "text" : "ADDRESS (Street, City, State, ZIP)",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "telephone",
          "text" : "TELEPHONE NUMBER",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "date-of-birth",
          "text" : "DATE OF BIRTH (MM/DD/YYYY)",
          "type" : "date",
          "required" : true
        },
        {
          "linkId" : "hair-color",
          "text" : "COLOR OF HAIR",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Brown"
            },
            {
              "valueString" : "Black"
            },
            {
              "valueString" : "Blonde"
            },
            {
              "valueString" : "Red"
            },
            {
              "valueString" : "Gray"
            },
            {
              "valueString" : "White"
            },
            {
              "valueString" : "Bald"
            }
          ]
        },
        {
          "linkId" : "eye-color",
          "text" : "COLOR OF EYES",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "Brown"
            },
            {
              "valueString" : "Blue"
            },
            {
              "valueString" : "Green"
            },
            {
              "valueString" : "Hazel"
            },
            {
              "valueString" : "Gray"
            },
            {
              "valueString" : "Black"
            }
          ]
        },
        {
          "linkId" : "sex",
          "text" : "SEX",
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
        }
      ]
    },
    {
      "linkId" : "airman-info",
      "text" : "AIRMAN INFORMATION",
      "type" : "group",
      "item" : [
        {
          "linkId" : "certificate-held",
          "text" : "TYPE OF AIRMAN CERTIFICATE(S) YOU HOLD",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueString" : "Airline Transport"
            },
            {
              "valueString" : "Commercial"
            },
            {
              "valueString" : "Private"
            },
            {
              "valueString" : "Student"
            },
            {
              "valueString" : "Recreational"
            },
            {
              "valueString" : "Sport"
            },
            {
              "valueString" : "Flight Instructor"
            },
            {
              "valueString" : "Flight Engineer"
            },
            {
              "valueString" : "Flight Navigator"
            },
            {
              "valueString" : "None"
            }
          ]
        },
        {
          "linkId" : "occupation",
          "text" : "OCCUPATION",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "employer",
          "text" : "EMPLOYER",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "total-pilot-time",
          "text" : "TOTAL PILOT TIME TO DATE",
          "type" : "quantity",
          "required" : true
        },
        {
          "linkId" : "pilot-time-6-months",
          "text" : "TOTAL PILOT TIME PAST 6 MONTHS",
          "type" : "quantity",
          "required" : true
        },
        {
          "linkId" : "medical-certificate-date",
          "text" : "DATE OF LAST FAA MEDICAL APPLICATION",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "medical-certificate-denied",
          "text" : "HAS YOUR FAA AIRMAN MEDICAL CERTIFICATE EVER BEEN DENIED, SUSPENDED, OR REVOKED?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "medical-certificate-denied-details",
              "text" : "If yes, provide date",
              "type" : "date",
              "enableWhen" : [
                {
                  "question" : "medical-certificate-denied",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            }
          ]
        }
      ]
    },
    {
      "linkId" : "medications",
      "text" : "MEDICATION INFORMATION",
      "type" : "group",
      "item" : [
        {
          "linkId" : "current-medications",
          "text" : "DO YOU CURRENTLY USE ANY MEDICATION (PRESCRIPTION OR NONPRESCRIPTION)?",
          "type" : "boolean",
          "required" : true,
          "item" : [
            {
              "linkId" : "medication-list",
              "text" : "List medication(s) and dosage",
              "type" : "string",
              "enableWhen" : [
                {
                  "question" : "current-medications",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false,
              "repeats" : true
            }
          ]
        },
        {
          "linkId" : "contact-lenses",
          "text" : "DO YOU EVER USE NEAR VISION CONTACT LENS(ES) WHILE FLYING?",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "medical-history",
      "text" : "MEDICAL HISTORY - Have you ever in your life been diagnosed with, had, or do you presently have any of the following?",
      "type" : "group",
      "item" : [
        {
          "linkId" : "headaches",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "398057008",
              "display" : "Tension-type headache"
            }
          ],
          "text" : "Frequent or severe headaches",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "dizziness",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "69096003",
              "display" : "Dizziness"
            }
          ],
          "text" : "Dizziness or fainting spells",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "unconsciousness",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "69944003",
              "display" : "Unconscious"
            }
          ],
          "text" : "Unconsciousness for any reason",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "eye-trouble",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "371405004",
              "display" : "Disorder of eye"
            }
          ],
          "text" : "Eye or vision trouble except glasses",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "hay-fever",
          "text" : "Hay fever or allergy",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "asthma",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "195967001",
              "display" : "Asthma"
            }
          ],
          "text" : "Asthma or lung disease",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "heart-trouble",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "128238001",
              "display" : "Chronic heart disease"
            }
          ],
          "text" : "Heart or vascular trouble",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "blood-pressure",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "38341003",
              "display" : "Hypertensive disorder"
            }
          ],
          "text" : "High or low blood pressure",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "stomach-trouble",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "328383001",
              "display" : "Chronic liver disease"
            }
          ],
          "text" : "Stomach, liver, or intestinal trouble",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "kidney-trouble",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "95570007",
              "display" : "Kidney stone"
            }
          ],
          "text" : "Kidney stone or blood in urine",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "diabetes",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "73211009",
              "display" : "Diabetes mellitus"
            }
          ],
          "text" : "Diabetes",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "neurological",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "84757009",
              "display" : "Epilepsy"
            }
          ],
          "text" : "Neurological disorders; epilepsy, seizures, stroke, paralysis, etc.",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "mental-disorders",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "74732009",
              "display" : "Mental disorder"
            }
          ],
          "text" : "Mental disorders of any sort; depression, anxiety, etc.",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "substance-abuse",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "66214007",
              "display" : "Substance abuse"
            }
          ],
          "text" : "Substance dependence or failed a drug test ever; or substance abuse or use of illegal substance in the last 2 years",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "alcohol-dependence",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "66590003",
              "display" : "Alcohol dependence"
            }
          ],
          "text" : "Alcohol dependence or abuse",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "suicide-attempt",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "82313006",
              "display" : "Suicide Attempt"
            }
          ],
          "text" : "Suicide attempt",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "motion-sickness",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "37031009",
              "display" : "Motion sickness"
            }
          ],
          "text" : "Motion sickness requiring medication",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "military-medical-discharge",
          "text" : "Military medical discharge",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-rejection",
          "text" : "Medical rejection by military service",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "insurance-rejection",
          "text" : "Rejection for life or health insurance",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "hospital-admission",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "32485007",
              "display" : "Hospital admission"
            }
          ],
          "text" : "Admission to hospital",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "history-other",
          "text" : "Other illness, disability, or surgery",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-disability-benefits",
          "text" : "Medical disability benefits",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "arrests",
          "text" : "History of arrest(s), conviction(s), and/or administrative action(s)",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "history-convictions",
          "text" : "History of nontraffic convictions",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "medical-history-explanation",
          "text" : "Explanation for any above YES answers (include dates, condition, treatment, and names/addresses of medical providers)",
          "type" : "text",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "healthcare-visits",
      "text" : "VISITS TO HEALTH PROFESSIONAL WITHIN LAST 3 YEARS",
      "type" : "boolean",
      "required" : true,
      "item" : [
        {
          "linkId" : "healthcare-visit-details",
          "text" : "Date, Name, Address and Type of Health Professional Consulted & Reason",
          "type" : "text",
          "enableWhen" : [
            {
              "question" : "healthcare-visits",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "required" : false,
          "repeats" : true
        }
      ]
    },
    {
      "linkId" : "physical-examination",
      "text" : "PHYSICAL EXAMINATION (FOR AME USE ONLY)",
      "type" : "group",
      "item" : [
        {
          "linkId" : "height",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "1153637007",
              "display" : "Body height"
            }
          ],
          "text" : "HEIGHT (inches)",
          "type" : "decimal",
          "required" : true
        },
        {
          "linkId" : "weight",
          "code" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "27113001",
              "display" : "Body weight"
            }
          ],
          "text" : "WEIGHT (pounds)",
          "type" : "decimal",
          "required" : true
        },
        {
          "linkId" : "soda-issued",
          "text" : "STATEMENT OF DEMONSTRATED ABILITY (SODA) ISSUED",
          "type" : "boolean",
          "required" : false,
          "item" : [
            {
              "linkId" : "soda-serial",
              "text" : "SODA SERIAL NUMBER",
              "type" : "string",
              "enableWhen" : [
                {
                  "question" : "soda-issued",
                  "operator" : "=",
                  "answerBoolean" : true
                }
              ],
              "required" : false
            }
          ]
        },
        {
          "linkId" : "body-systems-examination",
          "text" : "BODY SYSTEMS EXAMINATION",
          "type" : "group",
          "item" : [
            {
              "linkId" : "head-face-neck",
              "text" : "Head, face, neck, and scalp",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "nose",
              "text" : "Nose",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "sinuses",
              "text" : "Sinuses",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "mouth-throat",
              "text" : "Mouth and throat",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "ears-general",
              "text" : "Ears, general",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "ear-drums",
              "text" : "Ear drums",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "eyes-general",
              "text" : "Eyes, general",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "ophthalmoscopic",
              "text" : "Ophthalmoscopic",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "pupils",
              "text" : "Pupils (Equality and Reaction)",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "ocular-motility",
              "text" : "Ocular motility",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "lungs-chest",
              "text" : "Lungs and chest",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "heart",
              "text" : "Heart",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "vascular-system",
              "text" : "Vascular system",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "abdomen-viscera",
              "text" : "Abdomen and viscera",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "anus",
              "text" : "Anus",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                },
                {
                  "valueString" : "Not Examined"
                }
              ]
            },
            {
              "linkId" : "skin",
              "text" : "Skin",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "genitourinary",
              "text" : "Genitourinary system",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                },
                {
                  "valueString" : "Not Examined"
                }
              ]
            },
            {
              "linkId" : "extremities",
              "text" : "Musculoskeletal - Upper and lower extremities",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "spine",
              "text" : "Spine, other musculoskeletal",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "marks-scars",
              "text" : "Identifying body marks, scars, tattoos",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "lymphatics",
              "text" : "Lymphatics",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "neurological",
              "text" : "Neurological",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "psychiatric",
              "text" : "Psychiatric",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            },
            {
              "linkId" : "general-systemic",
              "text" : "General Systemic",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "Normal"
                },
                {
                  "valueString" : "Abnormal"
                }
              ]
            }
          ]
        },
        {
          "linkId" : "vision-tests",
          "text" : "VISION TESTS",
          "type" : "group",
          "item" : [
            {
              "linkId" : "distance-vision",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "246633000",
                  "display" : "Distance vision"
                }
              ],
              "text" : "Distant Vision",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "distance-right-uncorrected",
                  "text" : "Right eye uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "distance-right-corrected",
                  "text" : "Right eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "distance-left-uncorrected",
                  "text" : "Left eye uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "distance-left-corrected",
                  "text" : "Left eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "distance-both-uncorrected",
                  "text" : "Both eyes uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "distance-both-corrected",
                  "text" : "Both eyes corrected",
                  "type" : "string",
                  "required" : false
                }
              ]
            },
            {
              "linkId" : "near-vision",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "830128004",
                  "display" : "Near vision"
                }
              ],
              "text" : "Near Vision",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "near-right-uncorrected",
                  "text" : "Right eye uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "near-right-corrected",
                  "text" : "Right eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "near-left-uncorrected",
                  "text" : "Left eye uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "near-left-corrected",
                  "text" : "Left eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "near-both-uncorrected",
                  "text" : "Both eyes uncorrected",
                  "type" : "string",
                  "required" : true
                },
                {
                  "linkId" : "near-both-corrected",
                  "text" : "Both eyes corrected",
                  "type" : "string",
                  "required" : false
                }
              ]
            },
            {
              "linkId" : "intermediate-vision",
              "text" : "Intermediate Vision (32 in)",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "intermediate-right-uncorrected",
                  "text" : "Right eye uncorrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "intermediate-right-corrected",
                  "text" : "Right eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "intermediate-left-uncorrected",
                  "text" : "Left eye uncorrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "intermediate-left-corrected",
                  "text" : "Left eye corrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "intermediate-both-uncorrected",
                  "text" : "Both eyes uncorrected",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "intermediate-both-corrected",
                  "text" : "Both eyes corrected",
                  "type" : "string",
                  "required" : false
                }
              ]
            },
            {
              "linkId" : "color-vision",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "271726001",
                  "display" : "Color vision"
                }
              ],
              "text" : "Color Vision",
              "type" : "string",
              "required" : true
            },
            {
              "linkId" : "field-of-vision",
              "text" : "Field of Vision",
              "type" : "string",
              "required" : true
            },
            {
              "linkId" : "heterophoria",
              "text" : "Heterophoria (20')",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "esophoria",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "62176008",
                      "display" : "Esophoria"
                    }
                  ],
                  "text" : "Esophoria",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "exophoria",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "46343005",
                      "display" : "Exophoria"
                    }
                  ],
                  "text" : "Exophoria",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "right-hyperphoria",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "421452007",
                      "display" : "Hyperphoria"
                    }
                  ],
                  "text" : "Right Hyperphoria",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "left-hyperphoria",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "421452007",
                      "display" : "Hyperphoria"
                    }
                  ],
                  "text" : "Left Hyperphoria",
                  "type" : "string",
                  "required" : false
                }
              ]
            }
          ]
        },
        {
          "linkId" : "hearing-vitals",
          "text" : "HEARING, BLOOD PRESSURE, AND ECG",
          "type" : "group",
          "item" : [
            {
              "linkId" : "hearing",
              "text" : "Hearing",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "audiometric-speech",
                  "text" : "Audiometric Speech Discrimination",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "voice-test",
                  "text" : "Conversational Voice Test at 6 Feet",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "right-ear-pass",
                      "text" : "Right Ear",
                      "type" : "boolean",
                      "required" : false
                    },
                    {
                      "linkId" : "left-ear-pass",
                      "text" : "Left Ear",
                      "type" : "boolean",
                      "required" : false
                    }
                  ]
                },
                {
                  "linkId" : "audiometric-threshold",
                  "text" : "Audiometric Threshold in Decibels",
                  "type" : "group",
                  "item" : [
                    {
                      "linkId" : "threshold-right-500",
                      "text" : "Right Ear 500 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-right-1000",
                      "text" : "Right Ear 1000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-right-2000",
                      "text" : "Right Ear 2000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-right-3000",
                      "text" : "Right Ear 3000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-right-4000",
                      "text" : "Right Ear 4000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-left-500",
                      "text" : "Left Ear 500 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-left-1000",
                      "text" : "Left Ear 1000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-left-2000",
                      "text" : "Left Ear 2000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-left-3000",
                      "text" : "Left Ear 3000 Hz",
                      "type" : "decimal",
                      "required" : false
                    },
                    {
                      "linkId" : "threshold-left-4000",
                      "text" : "Left Ear 4000 Hz",
                      "type" : "decimal",
                      "required" : false
                    }
                  ]
                }
              ]
            },
            {
              "linkId" : "blood-pressure",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "75367002",
                  "display" : "Blood pressure"
                }
              ],
              "text" : "Blood Pressure",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "systolic",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "271649006",
                      "display" : "Systolic blood pressure"
                    }
                  ],
                  "text" : "Systolic (mmHg)",
                  "type" : "integer",
                  "required" : true
                },
                {
                  "linkId" : "diastolic",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "271650006",
                      "display" : "Diastolic blood pressure"
                    }
                  ],
                  "text" : "Diastolic (mmHg)",
                  "type" : "integer",
                  "required" : true
                },
                {
                  "linkId" : "bp-arm",
                  "text" : "Arm used for reading",
                  "type" : "choice",
                  "required" : false,
                  "answerOption" : [
                    {
                      "valueString" : "Right"
                    },
                    {
                      "valueString" : "Left"
                    },
                    {
                      "valueString" : "Both"
                    }
                  ]
                }
              ]
            },
            {
              "linkId" : "pulse",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "8499008",
                  "display" : "Pulse, function"
                }
              ],
              "text" : "Pulse",
              "type" : "integer",
              "required" : true
            },
            {
              "linkId" : "urinalysis",
              "text" : "Urinalysis",
              "type" : "group",
              "item" : [
                {
                  "linkId" : "urine-albumin",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "271000000",
                      "display" : "Urine albumin measurement"
                    }
                  ],
                  "text" : "Albumin",
                  "type" : "string",
                  "required" : false
                },
                {
                  "linkId" : "urine-sugar",
                  "code" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "170755004",
                      "display" : "Urine sugar chart"
                    }
                  ],
                  "text" : "Sugar",
                  "type" : "string",
                  "required" : false
                }
              ]
            },
            {
              "linkId" : "ecg",
              "code" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "54550000",
                  "display" : "Electroencephalogram"
                }
              ],
              "text" : "Electrocardiogram (ECG)",
              "type" : "string",
              "required" : false
            }
          ]
        }
      ]
    },
    {
      "linkId" : "ame-certification",
      "text" : "AME CERTIFICATION",
      "type" : "group",
      "item" : [
        {
          "linkId" : "ame-comments",
          "text" : "AME Comments on History and Findings",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "disqualifying-defects",
          "text" : "DISQUALIFYING DEFECTS (List by item number)",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "medical-certificate",
          "text" : "Medical Certificate Issued",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueString" : "First Class"
            },
            {
              "valueString" : "Second Class"
            },
            {
              "valueString" : "Third Class"
            },
            {
              "valueString" : "Not Issued - Letter of Denial Issued"
            },
            {
              "valueString" : "Not Issued - Deferred for Further Evaluation"
            }
          ]
        },
        {
          "linkId" : "certificate-limitations",
          "text" : "Certificate Limitations/Conditions",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "ame-declaration",
          "text" : "I hereby certify that I have personally reviewed the medical history and personally examined the applicant named on this medical examination report. This report with any attachment embodies my findings completely and correctly.",
          "type" : "display",
          "required" : true
        },
        {
          "linkId" : "ame-signature",
          "text" : "AME Signature",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "ame-name",
          "text" : "AME Name",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "ame-address",
          "text" : "AME Address",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "ame-designation-number",
          "text" : "AME Designation Number",
          "type" : "string",
          "required" : true
        },
        {
          "linkId" : "date-of-examination",
          "text" : "Date of Examination",
          "type" : "date",
          "required" : true
        }
      ]
    }
  ]
}

```
