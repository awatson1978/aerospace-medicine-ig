# MEDB 1.8 Audiometry - v0.5.12

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.8 Audiometry**

## Questionnaire: MEDB 1.8 Audiometry 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-8-audiometry | *Version*:0.5.12 |
| Active as of 2017-06-05 | *Computable Name*:MEDB18Audiometry |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for audiometric assessment. Captures pre- and postflight hearing threshold data to monitor crew hearing status. 

 
To assess pre- and postflight hearing thresholds on crew members using pure tone audiometry 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB18AudiometryQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-8-audiometry",
  "version" : "0.5.12",
  "name" : "MEDB18Audiometry",
  "title" : "MEDB 1.8 Audiometry",
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
  "description" : "NASA Medical Requirements Integration Document for audiometric assessment. Captures pre- and postflight hearing threshold data to monitor crew hearing status.",
  "purpose" : "To assess pre- and postflight hearing thresholds on crew members using pure tone audiometry",
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
              "valueString" : "MEDB 1.8 Audiometry"
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
          "required" : true,
          "readOnly" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "audiology",
                "display" : "Audiology"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "audiology",
                "display" : "Audiology"
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
              "valueString" : "To assess pre- and postflight hearing thresholds on crew members using pure tone audiometry. To track hearing changes across missions."
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
              "valueString" : "Pure tone air conduction thresholds at 500, 1000, 2000, 3000, 4000, 6000, 8000 Hz"
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
              "valueString" : "Pure tone audiometry is performed in a sound-treated booth. Testing includes air conduction thresholds at standard frequencies."
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
              "valueString" : "Annual medical examination and L-60 to L-10 days"
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
                "code" : "audiometer",
                "display" : "Audiometer"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs",
                "code" : "audiometer",
                "display" : "Audiometer"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.location",
          "text" : "Test Location",
          "type" : "choice",
          "required" : true,
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs",
                "code" : "jsc",
                "display" : "Johnson Space Center"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-activities.test-date",
          "text" : "Preflight Audiometry Date",
          "type" : "date",
          "required" : false
        },
        {
          "linkId" : "preflight-activities.test-completed",
          "text" : "Preflight Audiometry Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "preflight-audiometry-results",
      "text" : "Preflight Audiometry Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-audiometry-results.right-ear",
          "text" : "Right Ear Thresholds",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-audiometry-results.right-ear.500hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89024-4",
                  "display" : "Hearing threshold Ear - right --500 Hz"
                }
              ],
              "text" : "500 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.1000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89023-6",
                  "display" : "Hearing threshold Ear - right --1000 Hz"
                }
              ],
              "text" : "1000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.2000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89022-8",
                  "display" : "Hearing threshold Ear - right --2000 Hz"
                }
              ],
              "text" : "2000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.3000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89021-0",
                  "display" : "Hearing threshold Ear - right --3000 Hz"
                }
              ],
              "text" : "3000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.4000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89020-2",
                  "display" : "Hearing threshold Ear - right --4000 Hz"
                }
              ],
              "text" : "4000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.6000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89019-4",
                  "display" : "Hearing threshold Ear - right --6000 Hz"
                }
              ],
              "text" : "6000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.right-ear.8000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89018-6",
                  "display" : "Hearing threshold Ear - right --8000 Hz"
                }
              ],
              "text" : "8000 Hz Threshold (dB HL)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "preflight-audiometry-results.left-ear",
          "text" : "Left Ear Thresholds",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-audiometry-results.left-ear.500hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89017-8",
                  "display" : "Hearing threshold Ear - left --500 Hz"
                }
              ],
              "text" : "500 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.1000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89016-0",
                  "display" : "Hearing threshold Ear - left --1000 Hz"
                }
              ],
              "text" : "1000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.2000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89015-2",
                  "display" : "Hearing threshold Ear - left --2000 Hz"
                }
              ],
              "text" : "2000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.3000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89014-5",
                  "display" : "Hearing threshold Ear - left --3000 Hz"
                }
              ],
              "text" : "3000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.4000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89013-7",
                  "display" : "Hearing threshold Ear - left --4000 Hz"
                }
              ],
              "text" : "4000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.6000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89012-9",
                  "display" : "Hearing threshold Ear - left --6000 Hz"
                }
              ],
              "text" : "6000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-audiometry-results.left-ear.8000hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89011-1",
                  "display" : "Hearing threshold Ear - left --8000 Hz"
                }
              ],
              "text" : "8000 Hz Threshold (dB HL)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "preflight-audiometry-results.interpretation",
          "text" : "Audiometric Interpretation",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "162339002",
                "display" : "Hearing normal"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "15188001",
                "display" : "Hearing loss"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "95820000",
                "display" : "Bilateral hearing loss"
              }
            }
          ]
        },
        {
          "linkId" : "preflight-audiometry-results.notes",
          "text" : "Audiometric Notes",
          "type" : "text"
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
          "linkId" : "postflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "R+3 to R+7 days"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.test-date",
          "text" : "Postflight Audiometry Date",
          "type" : "date"
        },
        {
          "linkId" : "postflight-activities.test-completed",
          "text" : "Postflight Audiometry Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-audiometry-results",
      "text" : "Postflight Audiometry Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-audiometry-results.right-ear",
          "text" : "Right Ear Thresholds",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-audiometry-results.right-ear.500hz",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "89024-4",
                  "display" : "Hearing threshold Ear - right --500 Hz"
                }
              ],
              "text" : "500 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.right-ear.1000hz",
              "text" : "1000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.right-ear.2000hz",
              "text" : "2000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.right-ear.4000hz",
              "text" : "4000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.right-ear.6000hz",
              "text" : "6000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.right-ear.8000hz",
              "text" : "8000 Hz Threshold (dB HL)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "postflight-audiometry-results.left-ear",
          "text" : "Left Ear Thresholds",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-audiometry-results.left-ear.500hz",
              "text" : "500 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.left-ear.1000hz",
              "text" : "1000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.left-ear.2000hz",
              "text" : "2000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.left-ear.4000hz",
              "text" : "4000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.left-ear.6000hz",
              "text" : "6000 Hz Threshold (dB HL)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-audiometry-results.left-ear.8000hz",
              "text" : "8000 Hz Threshold (dB HL)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "postflight-audiometry-results.interpretation",
          "text" : "Audiometric Interpretation",
          "type" : "choice",
          "answerOption" : [
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "162339002",
                "display" : "Hearing normal"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "15188001",
                "display" : "Hearing loss"
              }
            },
            {
              "valueCoding" : {
                "system" : "http://snomed.info/sct",
                "code" : "95820000",
                "display" : "Bilateral hearing loss"
              }
            }
          ]
        },
        {
          "linkId" : "postflight-audiometry-results.comparison",
          "text" : "Comparison to Preflight",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "No significant change"
            },
            {
              "valueString" : "Threshold shift detected"
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
          "text" : "N/A - Included as part of Medical Operations overall debrief",
          "type" : "display"
        }
      ]
    }
  ]
}

```
