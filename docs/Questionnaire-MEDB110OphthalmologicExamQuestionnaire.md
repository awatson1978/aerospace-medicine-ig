# MEDB 1.10 Ophthalmologic Examination - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 1.10 Ophthalmologic Examination**

## Questionnaire: MEDB 1.10 Ophthalmologic Examination 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-1-10-ophthalmologic-exam | *Version*:0.5.9 |
| Active as of 2017-06-05 | *Computable Name*:MEDB110OphthalmologicExam |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for ophthalmologic examination. Captures comprehensive eye examination data for monitoring Spaceflight Associated Neuro-ocular Syndrome (SANS). 

 
To assess pre- and postflight ocular status and monitor for Spaceflight Associated Neuro-ocular Syndrome (SANS) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB110OphthalmologicExamQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-1-10-ophthalmologic-exam",
  "version" : "0.5.9",
  "name" : "MEDB110OphthalmologicExam",
  "title" : "MEDB 1.10 Ophthalmologic Examination",
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
  "description" : "NASA Medical Requirements Integration Document for ophthalmologic examination. Captures comprehensive eye examination data for monitoring Spaceflight Associated Neuro-ocular Syndrome (SANS).",
  "purpose" : "To assess pre- and postflight ocular status and monitor for Spaceflight Associated Neuro-ocular Syndrome (SANS)",
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
              "valueString" : "MEDB 1.10 Ophthalmologic Examination"
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
                "code" : "ophthalmology",
                "display" : "Ophthalmology"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "ophthalmology",
                "display" : "Ophthalmology"
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
              "valueString" : "To assess pre- and postflight ocular status, establish baseline measurements, and monitor for Spaceflight Associated Neuro-ocular Syndrome (SANS) including optic disc edema, globe flattening, choroidal folds, and refractive changes."
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
              "valueString" : "Visual acuity, refraction, IOP, fundoscopy, OCT, visual fields"
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
              "valueString" : "Comprehensive ophthalmologic examination including visual acuity, refraction, intraocular pressure, slit lamp examination, dilated fundoscopy, optical coherence tomography (OCT), and visual field testing."
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
              "valueInteger" : 90
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
              "valueString" : "AME L-9/6 m, L-90 to L-30 days"
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
          "text" : "Preflight Exam Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.test-completed",
          "text" : "Preflight Exam Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "preflight-ophth-results",
      "text" : "Preflight Ophthalmologic Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-ophth-results.visual-acuity",
          "text" : "Visual Acuity",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-ophth-results.visual-acuity.right-uncorrected",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79880-1",
                  "display" : "Visual acuity uncorrected Right eye"
                }
              ],
              "text" : "Right Eye Uncorrected",
              "type" : "string"
            },
            {
              "linkId" : "preflight-ophth-results.visual-acuity.right-corrected",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79881-9",
                  "display" : "Visual acuity best corrected Right eye"
                }
              ],
              "text" : "Right Eye Best Corrected",
              "type" : "string"
            },
            {
              "linkId" : "preflight-ophth-results.visual-acuity.left-uncorrected",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79882-7",
                  "display" : "Visual acuity uncorrected Left eye"
                }
              ],
              "text" : "Left Eye Uncorrected",
              "type" : "string"
            },
            {
              "linkId" : "preflight-ophth-results.visual-acuity.left-corrected",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79883-5",
                  "display" : "Visual acuity best corrected Left eye"
                }
              ],
              "text" : "Left Eye Best Corrected",
              "type" : "string"
            }
          ]
        },
        {
          "linkId" : "preflight-ophth-results.refraction",
          "text" : "Refraction",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-ophth-results.refraction.right-sphere",
              "text" : "Right Eye Sphere (D)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.refraction.right-cylinder",
              "text" : "Right Eye Cylinder (D)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.refraction.right-axis",
              "text" : "Right Eye Axis (degrees)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-ophth-results.refraction.left-sphere",
              "text" : "Left Eye Sphere (D)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.refraction.left-cylinder",
              "text" : "Left Eye Cylinder (D)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.refraction.left-axis",
              "text" : "Left Eye Axis (degrees)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "preflight-ophth-results.iop",
          "text" : "Intraocular Pressure",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-ophth-results.iop.right",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79893-4",
                  "display" : "Intraocular pressure of Eye - right"
                }
              ],
              "text" : "Right Eye IOP (mmHg)",
              "type" : "integer"
            },
            {
              "linkId" : "preflight-ophth-results.iop.left",
              "code" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "79892-6",
                  "display" : "Intraocular pressure of Eye - left"
                }
              ],
              "text" : "Left Eye IOP (mmHg)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "preflight-ophth-results.fundoscopy",
          "text" : "Fundoscopy Findings",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-ophth-results.fundoscopy.optic-disc-right",
              "text" : "Optic Disc Right Eye",
              "type" : "choice",
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
                    "code" : "423341008",
                    "display" : "Optic disc edema"
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
              "linkId" : "preflight-ophth-results.fundoscopy.optic-disc-left",
              "text" : "Optic Disc Left Eye",
              "type" : "choice",
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
                    "code" : "423341008",
                    "display" : "Optic disc edema"
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
              "linkId" : "preflight-ophth-results.fundoscopy.choroidal-folds",
              "text" : "Choroidal Folds Present",
              "type" : "boolean"
            },
            {
              "linkId" : "preflight-ophth-results.fundoscopy.globe-flattening",
              "text" : "Globe Flattening Present",
              "type" : "boolean"
            }
          ]
        },
        {
          "linkId" : "preflight-ophth-results.oct",
          "text" : "OCT Measurements",
          "type" : "group",
          "item" : [
            {
              "linkId" : "preflight-ophth-results.oct.rnfl-right",
              "text" : "Right Eye RNFL Average (microns)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.oct.rnfl-left",
              "text" : "Left Eye RNFL Average (microns)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.oct.total-retinal-thickness-right",
              "text" : "Right Eye Total Retinal Thickness (microns)",
              "type" : "decimal"
            },
            {
              "linkId" : "preflight-ophth-results.oct.total-retinal-thickness-left",
              "text" : "Left Eye Total Retinal Thickness (microns)",
              "type" : "decimal"
            }
          ]
        },
        {
          "linkId" : "preflight-ophth-results.interpretation",
          "text" : "Overall Ophthalmologic Interpretation",
          "type" : "choice",
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
          "linkId" : "preflight-ophth-results.notes",
          "text" : "Examination Notes",
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
          "linkId" : "inflight-activities.description",
          "text" : "Activity Description",
          "type" : "text",
          "initial" : [
            {
              "valueString" : "Fundoscopy using Fundoscope onboard ISS. Images reviewed by ground team for SANS monitoring."
            }
          ]
        },
        {
          "linkId" : "inflight-activities.schedule",
          "text" : "Schedule",
          "type" : "string",
          "initial" : [
            {
              "valueString" : "Monthly during mission"
            }
          ]
        },
        {
          "linkId" : "inflight-activities.fundoscopy-completed",
          "text" : "In-flight Fundoscopy Completed",
          "type" : "boolean"
        },
        {
          "linkId" : "inflight-activities.sans-suspected",
          "text" : "SANS Findings Suspected In-Flight",
          "type" : "boolean"
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
              "valueString" : "R+1 to R+3 days, R+30 days, R+180 days"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.test-date",
          "text" : "Postflight Exam Date (Initial)",
          "type" : "date"
        },
        {
          "linkId" : "postflight-activities.test-completed",
          "text" : "Postflight Exam Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-ophth-results",
      "text" : "Postflight Ophthalmologic Results",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-ophth-results.visual-acuity",
          "text" : "Visual Acuity",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-ophth-results.visual-acuity.right-corrected",
              "text" : "Right Eye Best Corrected",
              "type" : "string"
            },
            {
              "linkId" : "postflight-ophth-results.visual-acuity.left-corrected",
              "text" : "Left Eye Best Corrected",
              "type" : "string"
            }
          ]
        },
        {
          "linkId" : "postflight-ophth-results.iop",
          "text" : "Intraocular Pressure",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-ophth-results.iop.right",
              "text" : "Right Eye IOP (mmHg)",
              "type" : "integer"
            },
            {
              "linkId" : "postflight-ophth-results.iop.left",
              "text" : "Left Eye IOP (mmHg)",
              "type" : "integer"
            }
          ]
        },
        {
          "linkId" : "postflight-ophth-results.sans-assessment",
          "text" : "SANS Assessment",
          "type" : "group",
          "item" : [
            {
              "linkId" : "postflight-ophth-results.sans-assessment.optic-disc-edema",
              "text" : "Optic Disc Edema Present",
              "type" : "boolean"
            },
            {
              "linkId" : "postflight-ophth-results.sans-assessment.globe-flattening",
              "text" : "Globe Flattening Present",
              "type" : "boolean"
            },
            {
              "linkId" : "postflight-ophth-results.sans-assessment.choroidal-folds",
              "text" : "Choroidal Folds Present",
              "type" : "boolean"
            },
            {
              "linkId" : "postflight-ophth-results.sans-assessment.hyperopic-shift",
              "text" : "Hyperopic Shift Present",
              "type" : "boolean"
            },
            {
              "linkId" : "postflight-ophth-results.sans-assessment.cotton-wool-spots",
              "text" : "Cotton Wool Spots Present",
              "type" : "boolean"
            },
            {
              "linkId" : "postflight-ophth-results.sans-assessment.sans-grade",
              "text" : "SANS Grade",
              "type" : "choice",
              "answerOption" : [
                {
                  "valueString" : "No SANS"
                },
                {
                  "valueString" : "Grade 1 - Mild"
                },
                {
                  "valueString" : "Grade 2 - Moderate"
                },
                {
                  "valueString" : "Grade 3 - Severe"
                }
              ]
            }
          ]
        },
        {
          "linkId" : "postflight-ophth-results.comparison",
          "text" : "Comparison to Preflight",
          "type" : "choice",
          "answerOption" : [
            {
              "valueString" : "No significant change"
            },
            {
              "valueString" : "SANS findings present"
            },
            {
              "valueString" : "Other changes"
            }
          ]
        },
        {
          "linkId" : "postflight-ophth-results.notes",
          "text" : "Examination Notes",
          "type" : "text"
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
          "text" : "Data Archive Systems",
          "type" : "choice",
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
