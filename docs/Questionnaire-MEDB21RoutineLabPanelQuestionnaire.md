# MEDB 2.1 Routine Laboratory Panel - v0.5.8

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MEDB 2.1 Routine Laboratory Panel**

## Questionnaire: MEDB 2.1 Routine Laboratory Panel 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/Questionnaire/medb-2-1-routine-lab-panel | *Version*:0.5.8 |
| Active as of 2017-06-05 | *Computable Name*:MEDB21RoutineLabPanel |
| **Copyright/Legal**: NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913 | |

 
NASA Medical Requirements Integration Document for routine laboratory panel. Captures comprehensive blood chemistry, hematology, and urinalysis data for spaceflight crew members. 

 
To assess pre- and postflight clinical laboratory values for comprehensive health assessment of spaceflight crew members 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "MEDB21RoutineLabPanelQuestionnaire",
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
  "url" : "https://mitre.org/fhir/space-health/Questionnaire/medb-2-1-routine-lab-panel",
  "version" : "0.5.8",
  "name" : "MEDB21RoutineLabPanel",
  "title" : "MEDB 2.1 Routine Laboratory Panel",
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
  "description" : "NASA Medical Requirements Integration Document for routine laboratory panel. Captures comprehensive blood chemistry, hematology, and urinalysis data for spaceflight crew members.",
  "purpose" : "To assess pre- and postflight clinical laboratory values for comprehensive health assessment of spaceflight crew members",
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
              "valueString" : "MEDB 2.1 Routine Laboratory Panel"
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
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            }
          ],
          "initial" : [
            {
              "valueCoding" : {
                "system" : "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs",
                "code" : "laboratory",
                "display" : "Laboratory"
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
              "valueString" : "To obtain comprehensive clinical laboratory data for health assessment, establish baselines, and monitor for spaceflight-related physiological changes."
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
              "valueString" : "Complete blood count, comprehensive metabolic panel, lipid panel, urinalysis"
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
              "valueString" : "All flights >= 30 days"
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
              "valueString" : "Fasting blood draw and urine collection for comprehensive laboratory analysis."
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
              "valueInteger" : 30
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
              "valueString" : "AME L-9/6 m, L-60 to L-10 days"
            }
          ]
        },
        {
          "linkId" : "preflight-activities.fasting-required",
          "text" : "Fasting Required (8-12 hours)",
          "type" : "boolean",
          "required" : true,
          "initial" : [
            {
              "valueBoolean" : true
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
          "linkId" : "preflight-activities.collection-date",
          "text" : "Sample Collection Date",
          "type" : "date"
        },
        {
          "linkId" : "preflight-activities.collection-completed",
          "text" : "Sample Collection Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "preflight-cbc",
      "text" : "Preflight Complete Blood Count",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-cbc.wbc",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "6690-2",
              "display" : "Leukocytes [#/volume] in Blood by Automated count"
            }
          ],
          "text" : "WBC (10^3/uL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.rbc",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "789-8",
              "display" : "Erythrocytes [#/volume] in Blood by Automated count"
            }
          ],
          "text" : "RBC (10^6/uL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.hemoglobin",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "718-7",
              "display" : "Hemoglobin [Mass/volume] in Blood"
            }
          ],
          "text" : "Hemoglobin (g/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.hematocrit",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "4544-3",
              "display" : "Hematocrit [Volume Fraction] of Blood by Automated count"
            }
          ],
          "text" : "Hematocrit (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.mcv",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "787-2",
              "display" : "MCV [Entitic volume] by Automated count"
            }
          ],
          "text" : "MCV (fL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.mch",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "785-6",
              "display" : "MCH [Entitic mass] by Automated count"
            }
          ],
          "text" : "MCH (pg)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.mchc",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "786-4",
              "display" : "MCHC [Mass/volume] by Automated count"
            }
          ],
          "text" : "MCHC (g/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cbc.platelets",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "777-3",
              "display" : "Platelets [#/volume] in Blood by Automated count"
            }
          ],
          "text" : "Platelets (10^3/uL)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "preflight-cmp",
      "text" : "Preflight Comprehensive Metabolic Panel",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-cmp.glucose",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2345-7",
              "display" : "Glucose [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Glucose (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.bun",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "3094-0",
              "display" : "Urea nitrogen [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "BUN (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.creatinine",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2160-0",
              "display" : "Creatinine [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Creatinine (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.sodium",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2951-2",
              "display" : "Sodium [Moles/volume] in Serum or Plasma"
            }
          ],
          "text" : "Sodium (mEq/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.potassium",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2823-3",
              "display" : "Potassium [Moles/volume] in Serum or Plasma"
            }
          ],
          "text" : "Potassium (mEq/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.chloride",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2075-0",
              "display" : "Chloride [Moles/volume] in Serum or Plasma"
            }
          ],
          "text" : "Chloride (mEq/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.co2",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2028-9",
              "display" : "Carbon dioxide, total [Moles/volume] in Serum or Plasma"
            }
          ],
          "text" : "CO2 (mEq/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.calcium",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "17861-6",
              "display" : "Calcium [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Calcium (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.total-protein",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2885-2",
              "display" : "Protein [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Total Protein (g/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.albumin",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "1751-7",
              "display" : "Albumin [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Albumin (g/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.bilirubin",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "1975-2",
              "display" : "Bilirubin.total [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Total Bilirubin (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.alp",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "6768-6",
              "display" : "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
            }
          ],
          "text" : "Alkaline Phosphatase (U/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.ast",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "1920-8",
              "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
            }
          ],
          "text" : "AST (U/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-cmp.alt",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "1742-6",
              "display" : "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
            }
          ],
          "text" : "ALT (U/L)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "preflight-lipid",
      "text" : "Preflight Lipid Panel",
      "type" : "group",
      "item" : [
        {
          "linkId" : "preflight-lipid.total-cholesterol",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2093-3",
              "display" : "Cholesterol [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Total Cholesterol (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-lipid.hdl",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2085-9",
              "display" : "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "HDL Cholesterol (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-lipid.ldl",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2089-1",
              "display" : "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "LDL Cholesterol (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "preflight-lipid.triglycerides",
          "code" : [
            {
              "system" : "http://loinc.org",
              "code" : "2571-8",
              "display" : "Triglyceride [Mass/volume] in Serum or Plasma"
            }
          ],
          "text" : "Triglycerides (mg/dL)",
          "type" : "decimal"
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
          "text" : "No routine in-flight laboratory collection for this MRID",
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
              "valueString" : "R+0 to R+3 days"
            }
          ]
        },
        {
          "linkId" : "postflight-activities.collection-date",
          "text" : "Sample Collection Date",
          "type" : "date"
        },
        {
          "linkId" : "postflight-activities.collection-completed",
          "text" : "Sample Collection Completed",
          "type" : "boolean",
          "required" : true
        }
      ]
    },
    {
      "linkId" : "postflight-cbc",
      "text" : "Postflight Complete Blood Count",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-cbc.wbc",
          "text" : "WBC (10^3/uL)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cbc.rbc",
          "text" : "RBC (10^6/uL)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cbc.hemoglobin",
          "text" : "Hemoglobin (g/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cbc.hematocrit",
          "text" : "Hematocrit (%)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cbc.platelets",
          "text" : "Platelets (10^3/uL)",
          "type" : "decimal"
        }
      ]
    },
    {
      "linkId" : "postflight-cmp",
      "text" : "Postflight Key Metabolic Values",
      "type" : "group",
      "item" : [
        {
          "linkId" : "postflight-cmp.glucose",
          "text" : "Glucose (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cmp.creatinine",
          "text" : "Creatinine (mg/dL)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cmp.sodium",
          "text" : "Sodium (mEq/L)",
          "type" : "decimal"
        },
        {
          "linkId" : "postflight-cmp.potassium",
          "text" : "Potassium (mEq/L)",
          "type" : "decimal"
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
