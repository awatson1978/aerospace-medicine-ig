# MEDB 1.6 Resting ECG - v0.5.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.6 Resting ECG**

## Questionnaire: MEDB 1.6 Resting ECG 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-6-resting-ecg | *Version*:0.5.10 |
| Active as of 2013-12-19 | *Computable Name*:MEDB16RestingECG |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for resting 12-lead ECG assessment. Captures pre- and postflight ECG recordings for cardiovascular evaluation of long-duration flight crew members. 

 
To assess pre- and postflight ECG recordings on long-duration flight crew members at rest using a 12-lead electrocardiogram (ECG) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB16RestingECGQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-6-resting-ecg",
  "version" : "0.5.10",
  "name" : "MEDB16RestingECG",
  "title" : "MEDB 1.6 Resting ECG",
  "status" : "active",
  "date" : "2013-12-19",
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
  "description" : "NASA Medical Requirements Integration Document for resting 12-lead ECG assessment. Captures pre- and postflight ECG recordings for cardiovascular evaluation of long-duration flight crew members.",
  "purpose" : "To assess pre- and postflight ECG recordings on long-duration flight crew members at rest using a 12-lead electrocardiogram (ECG)",
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
              "valueString" : "MEDB 1.6 Resting ECG"
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
          "linkId" : "overview.discipline",
          "text" : "Discipline",
          "type" : "choice",
          "required" : false,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "cardiovascular",
                "display" : "Cardiovascular"
              }
            }
          ]
        },
        {
          "linkId" : "overview.category",
          "text" : "Category",
          "type" : "string",
          "required" : true,
          "readOnly" : true,
          "initial" : [
            {
              "valueString" : "Medical Requirements"
            }
          ]
        },
        {
          "linkId" : "overview.references",
          "text" : "References",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "SSP 50260 ISS Medical Operations Requirements Document (MORD); SSP 50667 Medical Evaluations Document (MED) Volume B Section 1.6"
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
              "valueString" : "To assess pre- and postflight ECG recordings on long-duration flight crew members at rest using a 12-lead electrocardiogram (ECG)"
            }
          ]
        },
        {
          "linkId" : "overview.measurement-parameters",
          "text" : "Measurement Parameters",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "12-lead ECG tracing"
            }
          ]
        },
        {
          "linkId" : "overview.deliverables",
          "text" : "Deliverables",
          "type" : "text",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Pre- and postflight ECG reports related to the cardiovascular examination."
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
              "valueString" : ">= 30 days"
            }
          ]
        },
        {
          "linkId" : "overview.number-of-flights",
          "text" : "Number of Flights",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "All"
            }
          ]
        },
        {
          "linkId" : "overview.crew-members-required",
          "text" : "Number and Type of Crew Members Required",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "All ISS crew members"
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
          "required" : false,
          "initial" : [
            {
              "valueString" : "Subject lies supine for 15 minutes while ECG tracings are recorded from 10 electrode sites (using chest and limb leads)."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "required" : true,
          "initial" : [
            {
              "valueInteger" : 15
            }
          ]
        },
        {
          "linkId" : "preflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "AME L-9/6 m to L-10 d & as clinically indicated"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.flexibility",
          "text" : "Flexibility",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Within specified range"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.personnel",
          "text" : "Personnel Required",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Lab Technician, crew member"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.hardware",
          "text" : "Preflight Hardware",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "12-lead-ecg",
                "display" : "12-Lead ECG Machine"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "12-lead-ecg",
                "display" : "12-Lead ECG Machine"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.location",
          "text" : "Test Location",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "russia-gctc",
                "display" : "Gagarin Cosmonaut Training Center"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.constraints",
          "text" : "Constraints/Special Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "No caffeine or alcohol for 12 hours prior to testing."
            }
          ]
        },
        {
          "linkId" : "preflight-activities.test-date",
          "text" : "Preflight ECG Test Date",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "preflight-activities.test-completed",
          "text" : "Preflight ECG Completed",
          "type" : "boolean",
          "required" : true
        },
        {
          "linkId" : "preflight-activities.constraints-met",
          "text" : "Pre-test Constraints Met (no caffeine/alcohol 12h)",
          "type" : "boolean",
          "required" : false
        }
      ]
    },
    {
      "linkId" : "preflight-ecg-results",
      "text" : "Preflight ECG Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-ecg-results.heart-rate",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ],
          "text" : "Heart Rate (bpm)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.pr-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8625-6",
              "display" : "PR interval"
            }
          ],
          "text" : "PR Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.qrs-duration",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8633-0",
              "display" : "QRS duration"
            }
          ],
          "text" : "QRS Duration (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.qt-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8634-8",
              "display" : "QT interval"
            }
          ],
          "text" : "QT Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.qtc-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8636-3",
              "display" : "QT interval corrected"
            }
          ],
          "text" : "QTc Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.axis",
          "text" : "QRS Axis (degrees)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "preflight-ecg-results.rhythm",
          "text" : "Rhythm",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "426783006",
                "display" : "Sinus rhythm"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "49710005",
                "display" : "Sinus bradycardia"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "11092001",
                "display" : "Sinus tachycardia"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "49436004",
                "display" : "Atrial fibrillation"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "698247007",
                "display" : "Cardiac arrhythmia"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-ecg-results.interpretation",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "11524-6",
              "display" : "EKG study"
            }
          ],
          "text" : "ECG Interpretation",
          "type" : "choice",
          "required" : false,
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
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "442564008",
                "display" : "Evaluation not done"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-ecg-results.findings",
          "text" : "ECG Findings/Notes",
          "type" : "text",
          "required" : false
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
          "linkId" : "postflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Subject lies supine for 15 minutes while ECG tracings are recorded from 10 electrode sites (using chest and limb leads)."
            }
          ]
        },
        {
          "linkId" : "postflight-activities.duration",
          "text" : "Duration (minutes)",
          "type" : "integer",
          "required" : true,
          "initial" : [
            {
              "valueInteger" : 15
            }
          ]
        },
        {
          "linkId" : "postflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "R+0/3 days & as clinically indicated"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.flexibility",
          "text" : "Flexibility",
          "type" : "string",
          "required" : false,
          "initial" : [
            {
              "valueString" : "Within specified range"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.personnel",
          "text" : "Personnel Required",
          "type" : "string",
          "required" : true,
          "initial" : [
            {
              "valueString" : "Technician, crew member"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.hardware",
          "text" : "Postflight Hardware",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "12-lead-ecg",
                "display" : "12-Lead ECG Machine"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "12-lead-ecg",
                "display" : "12-Lead ECG Machine"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-activities.location",
          "text" : "Test Location",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "russia-gctc",
                "display" : "Gagarin Cosmonaut Training Center"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-activities.constraints",
          "text" : "Constraints/Special Requirements",
          "type" : "text",
          "required" : false,
          "initial" : [
            {
              "valueString" : "No caffeine or alcohol for 12 hours prior to testing."
            }
          ]
        },
        {
          "linkId" : "postflight-activities.test-date",
          "text" : "Postflight ECG Test Date",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "postflight-activities.test-completed",
          "text" : "Postflight ECG Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-ecg-results",
      "text" : "Postflight ECG Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-ecg-results.heart-rate",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Heart rate"
            }
          ],
          "text" : "Heart Rate (bpm)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.pr-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8625-6",
              "display" : "PR interval"
            }
          ],
          "text" : "PR Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.qrs-duration",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8633-0",
              "display" : "QRS duration"
            }
          ],
          "text" : "QRS Duration (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.qt-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8634-8",
              "display" : "QT interval"
            }
          ],
          "text" : "QT Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.qtc-interval",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "8636-3",
              "display" : "QT interval corrected"
            }
          ],
          "text" : "QTc Interval (ms)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.axis",
          "text" : "QRS Axis (degrees)",
          "type" : "integer",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.rhythm",
          "text" : "Rhythm",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "426783006",
                "display" : "Sinus rhythm"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "49710005",
                "display" : "Sinus bradycardia"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "11092001",
                "display" : "Sinus tachycardia"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "49436004",
                "display" : "Atrial fibrillation"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "698247007",
                "display" : "Cardiac arrhythmia"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-ecg-results.interpretation",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "11524-6",
              "display" : "EKG study"
            }
          ],
          "text" : "ECG Interpretation",
          "type" : "choice",
          "required" : false,
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
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "442564008",
                "display" : "Evaluation not done"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-ecg-results.findings",
          "text" : "ECG Findings/Notes",
          "type" : "text",
          "required" : false
        },
        {
          "linkId" : "postflight-ecg-results.comparison",
          "text" : "Comparison to Preflight ECG",
          "type" : "choice",
          "required" : false,
          "answerOption" : [
            {
              "valueString" : "No significant change"
            },
            {
              "valueString" : "Improved"
            },
            {
              "valueString" : "New findings"
            },
            {
              "valueString" : "Unable to compare"
            }
          ]
        }
      ]
    },
    {
      "linkId" : "data-delivery",
      "text" : "Data Delivery",
      "type" : "group",
      "item" : [
        {
          "linkId" : "data-delivery.pacs-transfer",
          "text" : "Raw Data Transferred to PACS",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "data-delivery.pacs-transfer-date",
          "text" : "PACS Transfer Date",
          "type" : "dateTime",
          "enableWhen" : [
            {
              "question" : "data-delivery.pacs-transfer",
              "operator" : "=",
              "answerBoolean" : true
            }
          ],
          "required" : false
        },
        {
          "linkId" : "data-delivery.archive",
          "text" : "Data Archive Systems",
          "type" : "choice",
          "required" : true,
          "repeats" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "pacs",
                "display" : "Picture Archiving and Communication System"
              }
            },
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs",
                "code" : "mmis",
                "display" : "Medical Mission Information System"
              }
            }
          ]
        },
        {
          "linkId" : "data-delivery.preflight-report-available",
          "text" : "Preflight Report Available in MMIS",
          "type" : "boolean",
          "required" : false
        },
        {
          "linkId" : "data-delivery.postflight-report-available",
          "text" : "Postflight Report Available in MMIS",
          "type" : "boolean",
          "required" : false
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
          "text" : "No Postflight Debrief Required",
          "type" : "display"
        }
      ]
    }
  ]
}

```
