// ============================================================================
// MEDB 2.x Laboratory Questionnaires
// ============================================================================
// This file contains questionnaires for MEDB 2.x series laboratory assessments
// ============================================================================

Alias: $nasa-sponsor = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs
Alias: $nasa-discipline = https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs
Alias: $nasa-phase = https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs
Alias: $nasa-offset = https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs
Alias: $nasa-hardware = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs
Alias: $nasa-facility = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs
Alias: $nasa-archive = https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs
Alias: $nasa-roles = https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org


// ============================================================================
// MEDB 2.1 Routine Laboratory Panel Questionnaire
// ============================================================================
// Source: MEDB 2.1 Routine Laboratory Panel
// Purpose: Assess pre- and postflight clinical laboratory values
// ============================================================================

Instance: MEDB21RoutineLabPanelQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 2.1 Routine Laboratory Panel"
Description: "NASA Medical Requirements Integration Document for routine laboratory panel. Captures comprehensive blood chemistry, hematology, and urinalysis data for spaceflight crew members."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-2-1-routine-lab-panel"
* version = "1.0.0"
* name = "MEDB21RoutineLabPanel"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To assess pre- and postflight clinical laboratory values for comprehensive health assessment of spaceflight crew members"
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 2.1 Routine Laboratory Panel"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#laboratory "Laboratory"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#laboratory "Laboratory"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To obtain comprehensive clinical laboratory data for health assessment, establish baselines, and monitor for spaceflight-related physiological changes."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Complete blood count, comprehensive metabolic panel, lipid panel, urinalysis"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "All flights >= 30 days"

// GROUP 2: PREFLIGHT TRAINING (N/A)
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.na"
* item[1].item[0].text = "No Preflight Training Required"
* item[1].item[0].type = #display

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Fasting blood draw and urine collection for comprehensive laboratory analysis."

* item[2].item[1].linkId = "preflight-activities.duration"
* item[2].item[1].text = "Duration (minutes)"
* item[2].item[1].type = #integer
* item[2].item[1].required = true
* item[2].item[1].initial.valueInteger = 30

* item[2].item[2].linkId = "preflight-activities.schedule"
* item[2].item[2].text = "Schedule"
* item[2].item[2].type = #string
* item[2].item[2].required = true
* item[2].item[2].initial.valueString = "AME L-9/6 m, L-60 to L-10 days"

* item[2].item[3].linkId = "preflight-activities.fasting-required"
* item[2].item[3].text = "Fasting Required (8-12 hours)"
* item[2].item[3].type = #boolean
* item[2].item[3].required = true
* item[2].item[3].initial.valueBoolean = true

* item[2].item[4].linkId = "preflight-activities.location"
* item[2].item[4].text = "Test Location"
* item[2].item[4].type = #choice
* item[2].item[4].required = true
* item[2].item[4].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[2].item[4].initial.valueCoding = $nasa-facility#jsc "Johnson Space Center"

* item[2].item[5].linkId = "preflight-activities.collection-date"
* item[2].item[5].text = "Sample Collection Date"
* item[2].item[5].type = #date

* item[2].item[6].linkId = "preflight-activities.collection-completed"
* item[2].item[6].text = "Sample Collection Completed"
* item[2].item[6].type = #boolean
* item[2].item[6].required = true

// GROUP 4: PREFLIGHT LAB RESULTS - CBC
* item[3].linkId = "preflight-cbc"
* item[3].text = "Preflight Complete Blood Count"
* item[3].type = #group

* item[3].item[0].linkId = "preflight-cbc.wbc"
* item[3].item[0].text = "WBC (10^3/uL)"
* item[3].item[0].type = #decimal
* item[3].item[0].code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"

* item[3].item[1].linkId = "preflight-cbc.rbc"
* item[3].item[1].text = "RBC (10^6/uL)"
* item[3].item[1].type = #decimal
* item[3].item[1].code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"

* item[3].item[2].linkId = "preflight-cbc.hemoglobin"
* item[3].item[2].text = "Hemoglobin (g/dL)"
* item[3].item[2].type = #decimal
* item[3].item[2].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"

* item[3].item[3].linkId = "preflight-cbc.hematocrit"
* item[3].item[3].text = "Hematocrit (%)"
* item[3].item[3].type = #decimal
* item[3].item[3].code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"

* item[3].item[4].linkId = "preflight-cbc.mcv"
* item[3].item[4].text = "MCV (fL)"
* item[3].item[4].type = #decimal
* item[3].item[4].code = $loinc#787-2 "MCV [Entitic volume] by Automated count"

* item[3].item[5].linkId = "preflight-cbc.mch"
* item[3].item[5].text = "MCH (pg)"
* item[3].item[5].type = #decimal
* item[3].item[5].code = $loinc#785-6 "MCH [Entitic mass] by Automated count"

* item[3].item[6].linkId = "preflight-cbc.mchc"
* item[3].item[6].text = "MCHC (g/dL)"
* item[3].item[6].type = #decimal
* item[3].item[6].code = $loinc#786-4 "MCHC [Mass/volume] by Automated count"

* item[3].item[7].linkId = "preflight-cbc.platelets"
* item[3].item[7].text = "Platelets (10^3/uL)"
* item[3].item[7].type = #decimal
* item[3].item[7].code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"

// GROUP 5: PREFLIGHT LAB RESULTS - METABOLIC PANEL
* item[4].linkId = "preflight-cmp"
* item[4].text = "Preflight Comprehensive Metabolic Panel"
* item[4].type = #group

* item[4].item[0].linkId = "preflight-cmp.glucose"
* item[4].item[0].text = "Glucose (mg/dL)"
* item[4].item[0].type = #decimal
* item[4].item[0].code = $loinc#2345-7 "Glucose [Mass/volume] in Serum or Plasma"

* item[4].item[1].linkId = "preflight-cmp.bun"
* item[4].item[1].text = "BUN (mg/dL)"
* item[4].item[1].type = #decimal
* item[4].item[1].code = $loinc#3094-0 "Urea nitrogen [Mass/volume] in Serum or Plasma"

* item[4].item[2].linkId = "preflight-cmp.creatinine"
* item[4].item[2].text = "Creatinine (mg/dL)"
* item[4].item[2].type = #decimal
* item[4].item[2].code = $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"

* item[4].item[3].linkId = "preflight-cmp.sodium"
* item[4].item[3].text = "Sodium (mEq/L)"
* item[4].item[3].type = #decimal
* item[4].item[3].code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"

* item[4].item[4].linkId = "preflight-cmp.potassium"
* item[4].item[4].text = "Potassium (mEq/L)"
* item[4].item[4].type = #decimal
* item[4].item[4].code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"

* item[4].item[5].linkId = "preflight-cmp.chloride"
* item[4].item[5].text = "Chloride (mEq/L)"
* item[4].item[5].type = #decimal
* item[4].item[5].code = $loinc#2075-0 "Chloride [Moles/volume] in Serum or Plasma"

* item[4].item[6].linkId = "preflight-cmp.co2"
* item[4].item[6].text = "CO2 (mEq/L)"
* item[4].item[6].type = #decimal
* item[4].item[6].code = $loinc#2028-9 "Carbon dioxide, total [Moles/volume] in Serum or Plasma"

* item[4].item[7].linkId = "preflight-cmp.calcium"
* item[4].item[7].text = "Calcium (mg/dL)"
* item[4].item[7].type = #decimal
* item[4].item[7].code = $loinc#17861-6 "Calcium [Mass/volume] in Serum or Plasma"

* item[4].item[8].linkId = "preflight-cmp.total-protein"
* item[4].item[8].text = "Total Protein (g/dL)"
* item[4].item[8].type = #decimal
* item[4].item[8].code = $loinc#2885-2 "Protein [Mass/volume] in Serum or Plasma"

* item[4].item[9].linkId = "preflight-cmp.albumin"
* item[4].item[9].text = "Albumin (g/dL)"
* item[4].item[9].type = #decimal
* item[4].item[9].code = $loinc#1751-7 "Albumin [Mass/volume] in Serum or Plasma"

* item[4].item[10].linkId = "preflight-cmp.bilirubin"
* item[4].item[10].text = "Total Bilirubin (mg/dL)"
* item[4].item[10].type = #decimal
* item[4].item[10].code = $loinc#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma"

* item[4].item[11].linkId = "preflight-cmp.alp"
* item[4].item[11].text = "Alkaline Phosphatase (U/L)"
* item[4].item[11].type = #decimal
* item[4].item[11].code = $loinc#6768-6 "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"

* item[4].item[12].linkId = "preflight-cmp.ast"
* item[4].item[12].text = "AST (U/L)"
* item[4].item[12].type = #decimal
* item[4].item[12].code = $loinc#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

* item[4].item[13].linkId = "preflight-cmp.alt"
* item[4].item[13].text = "ALT (U/L)"
* item[4].item[13].type = #decimal
* item[4].item[13].code = $loinc#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

// GROUP 6: PREFLIGHT LAB RESULTS - LIPID PANEL
* item[5].linkId = "preflight-lipid"
* item[5].text = "Preflight Lipid Panel"
* item[5].type = #group

* item[5].item[0].linkId = "preflight-lipid.total-cholesterol"
* item[5].item[0].text = "Total Cholesterol (mg/dL)"
* item[5].item[0].type = #decimal
* item[5].item[0].code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"

* item[5].item[1].linkId = "preflight-lipid.hdl"
* item[5].item[1].text = "HDL Cholesterol (mg/dL)"
* item[5].item[1].type = #decimal
* item[5].item[1].code = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"

* item[5].item[2].linkId = "preflight-lipid.ldl"
* item[5].item[2].text = "LDL Cholesterol (mg/dL)"
* item[5].item[2].type = #decimal
* item[5].item[2].code = $loinc#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"

* item[5].item[3].linkId = "preflight-lipid.triglycerides"
* item[5].item[3].text = "Triglycerides (mg/dL)"
* item[5].item[3].type = #decimal
* item[5].item[3].code = $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"

// GROUP 7: IN-FLIGHT (N/A for routine labs)
* item[6].linkId = "inflight-activities"
* item[6].text = "In-Flight Activities"
* item[6].type = #group

* item[6].item[0].linkId = "inflight-activities.na"
* item[6].item[0].text = "No routine in-flight laboratory collection for this MRID"
* item[6].item[0].type = #display

// GROUP 8: POSTFLIGHT ACTIVITIES
* item[7].linkId = "postflight-activities"
* item[7].text = "Postflight Activities"
* item[7].type = #group

* item[7].item[0].linkId = "postflight-activities.schedule"
* item[7].item[0].text = "Schedule"
* item[7].item[0].type = #string
* item[7].item[0].initial.valueString = "R+0 to R+3 days"

* item[7].item[1].linkId = "postflight-activities.collection-date"
* item[7].item[1].text = "Sample Collection Date"
* item[7].item[1].type = #date

* item[7].item[2].linkId = "postflight-activities.collection-completed"
* item[7].item[2].text = "Sample Collection Completed"
* item[7].item[2].type = #boolean
* item[7].item[2].required = true

// GROUP 9: POSTFLIGHT LAB RESULTS - CBC
* item[8].linkId = "postflight-cbc"
* item[8].text = "Postflight Complete Blood Count"
* item[8].type = #group

* item[8].item[0].linkId = "postflight-cbc.wbc"
* item[8].item[0].text = "WBC (10^3/uL)"
* item[8].item[0].type = #decimal

* item[8].item[1].linkId = "postflight-cbc.rbc"
* item[8].item[1].text = "RBC (10^6/uL)"
* item[8].item[1].type = #decimal

* item[8].item[2].linkId = "postflight-cbc.hemoglobin"
* item[8].item[2].text = "Hemoglobin (g/dL)"
* item[8].item[2].type = #decimal

* item[8].item[3].linkId = "postflight-cbc.hematocrit"
* item[8].item[3].text = "Hematocrit (%)"
* item[8].item[3].type = #decimal

* item[8].item[4].linkId = "postflight-cbc.platelets"
* item[8].item[4].text = "Platelets (10^3/uL)"
* item[8].item[4].type = #decimal

// GROUP 10: POSTFLIGHT LAB RESULTS - KEY METABOLIC
* item[9].linkId = "postflight-cmp"
* item[9].text = "Postflight Key Metabolic Values"
* item[9].type = #group

* item[9].item[0].linkId = "postflight-cmp.glucose"
* item[9].item[0].text = "Glucose (mg/dL)"
* item[9].item[0].type = #decimal

* item[9].item[1].linkId = "postflight-cmp.creatinine"
* item[9].item[1].text = "Creatinine (mg/dL)"
* item[9].item[1].type = #decimal

* item[9].item[2].linkId = "postflight-cmp.sodium"
* item[9].item[2].text = "Sodium (mEq/L)"
* item[9].item[2].type = #decimal

* item[9].item[3].linkId = "postflight-cmp.potassium"
* item[9].item[3].text = "Potassium (mEq/L)"
* item[9].item[3].type = #decimal

// GROUP 11: DATA DELIVERY
* item[10].linkId = "data-delivery"
* item[10].text = "Data Delivery"
* item[10].type = #group

* item[10].item[0].linkId = "data-delivery.archive"
* item[10].item[0].text = "Data Archive System"
* item[10].item[0].type = #choice
* item[10].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[10].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"

// GROUP 12: POSTFLIGHT DEBRIEF
* item[11].linkId = "postflight-debrief"
* item[11].text = "Postflight Debrief"
* item[11].type = #group

* item[11].item[0].linkId = "postflight-debrief.na"
* item[11].item[0].text = "N/A - Included as part of Medical Operations overall debrief"
* item[11].item[0].type = #display


// ============================================================================
// MEDB 2.2 MRSA Screening Questionnaire
// ============================================================================
// Source: MEDB 2.2 MRSA Screening
// Purpose: Screen for Methicillin-resistant Staphylococcus aureus colonization
// ============================================================================

Instance: MEDB22MRSAScreeningQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 2.2 MRSA Screening"
Description: "NASA Medical Requirements Integration Document for MRSA screening. Screens crew members for Methicillin-resistant Staphylococcus aureus colonization prior to spaceflight."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-2-2-mrsa-screening"
* version = "1.0.0"
* name = "MEDB22MRSAScreening"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Environmental Health System"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To screen crew members for MRSA colonization prior to spaceflight to prevent transmission in the closed ISS environment"
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 2.2 MRSA Screening"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#environmental-health "Environmental Health System"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#environmental-health "Environmental Health System"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#laboratory "Laboratory"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#laboratory "Laboratory"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To screen crew members for MRSA colonization prior to spaceflight. Positive cases require decolonization treatment before flight."

* item[0].item[4].linkId = "overview.flight-duration"
* item[0].item[4].text = "Flight Duration"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "All flights"

// GROUP 2: PREFLIGHT TRAINING (N/A)
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.na"
* item[1].item[0].text = "No Preflight Training Required"
* item[1].item[0].type = #display

// GROUP 3: PREFLIGHT ACTIVITIES
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Nasal swab collection from both nares for MRSA culture or PCR testing."

* item[2].item[1].linkId = "preflight-activities.schedule"
* item[2].item[1].text = "Schedule"
* item[2].item[1].type = #string
* item[2].item[1].initial.valueString = "L-60 to L-30 days, with retest at L-10 if initially positive"

* item[2].item[2].linkId = "preflight-activities.sample-date"
* item[2].item[2].text = "Sample Collection Date"
* item[2].item[2].type = #date

* item[2].item[3].linkId = "preflight-activities.sample-collected"
* item[2].item[3].text = "Sample Collected"
* item[2].item[3].type = #boolean
* item[2].item[3].required = true

// GROUP 4: MRSA RESULTS
* item[3].linkId = "mrsa-results"
* item[3].text = "MRSA Screening Results"
* item[3].type = #group

* item[3].item[0].linkId = "mrsa-results.test-type"
* item[3].item[0].text = "Test Type"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueString = "Culture"
* item[3].item[0].answerOption[1].valueString = "PCR"
* item[3].item[0].answerOption[2].valueString = "Both"

* item[3].item[1].linkId = "mrsa-results.result"
* item[3].item[1].text = "MRSA Result"
* item[3].item[1].type = #choice
* item[3].item[1].code = $loinc#42720-2 "MRSA DNA [Presence] in Nose by NAA with probe detection"
* item[3].item[1].answerOption[0].valueCoding = $sct#260385009 "Negative"
* item[3].item[1].answerOption[1].valueCoding = $sct#10828004 "Positive"
* item[3].item[1].answerOption[2].valueCoding = $sct#419984006 "Inconclusive"

* item[3].item[2].linkId = "mrsa-results.decolonization-required"
* item[3].item[2].text = "Decolonization Required"
* item[3].item[2].type = #boolean
* item[3].item[2].enableWhen.question = "mrsa-results.result"
* item[3].item[2].enableWhen.operator = #=
* item[3].item[2].enableWhen.answerCoding = $sct#10828004 "Positive"

* item[3].item[3].linkId = "mrsa-results.decolonization-completed"
* item[3].item[3].text = "Decolonization Completed"
* item[3].item[3].type = #boolean
* item[3].item[3].enableWhen.question = "mrsa-results.decolonization-required"
* item[3].item[3].enableWhen.operator = #=
* item[3].item[3].enableWhen.answerBoolean = true

* item[3].item[4].linkId = "mrsa-results.retest-result"
* item[3].item[4].text = "Retest Result (if applicable)"
* item[3].item[4].type = #choice
* item[3].item[4].answerOption[0].valueCoding = $sct#260385009 "Negative"
* item[3].item[4].answerOption[1].valueCoding = $sct#10828004 "Positive"
* item[3].item[4].enableWhen.question = "mrsa-results.decolonization-completed"
* item[3].item[4].enableWhen.operator = #=
* item[3].item[4].enableWhen.answerBoolean = true

* item[3].item[5].linkId = "mrsa-results.flight-cleared"
* item[3].item[5].text = "Cleared for Flight"
* item[3].item[5].type = #boolean

// GROUP 5-7: IN-FLIGHT, POSTFLIGHT, DATA DELIVERY (minimal for screening)
* item[4].linkId = "inflight-activities"
* item[4].text = "In-Flight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "inflight-activities.na"
* item[4].item[0].text = "No In-Flight Activities"
* item[4].item[0].type = #display

* item[5].linkId = "postflight-activities"
* item[5].text = "Postflight Activities"
* item[5].type = #group

* item[5].item[0].linkId = "postflight-activities.na"
* item[5].item[0].text = "No specific postflight MRSA screening required"
* item[5].item[0].type = #display

* item[6].linkId = "data-delivery"
* item[6].text = "Data Delivery"
* item[6].type = #group

* item[6].item[0].linkId = "data-delivery.archive"
* item[6].item[0].text = "Data Archive System"
* item[6].item[0].type = #choice
* item[6].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[6].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"

* item[7].linkId = "postflight-debrief"
* item[7].text = "Postflight Debrief"
* item[7].type = #group

* item[7].item[0].linkId = "postflight-debrief.na"
* item[7].item[0].text = "N/A"
* item[7].item[0].type = #display


// ============================================================================
// MEDB 2.3 Tuberculosis Testing Questionnaire
// ============================================================================

Instance: MEDB23TBTestingQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 2.3 Tuberculosis Testing"
Description: "NASA Medical Requirements Integration Document for tuberculosis screening. Screens crew members for TB infection prior to spaceflight."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-2-3-tb-testing"
* version = "1.0.0"
* name = "MEDB23TBTesting"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To screen crew members for tuberculosis infection prior to spaceflight"
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 2.3 Tuberculosis Testing"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "To screen crew members for latent or active tuberculosis infection prior to spaceflight."

* item[0].item[3].linkId = "overview.flight-duration"
* item[0].item[3].text = "Flight Duration"
* item[0].item[3].type = #string
* item[0].item[3].initial.valueString = "All flights"

// GROUP 2: PREFLIGHT
* item[1].linkId = "preflight-activities"
* item[1].text = "Preflight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-activities.schedule"
* item[1].item[0].text = "Schedule"
* item[1].item[0].type = #string
* item[1].item[0].initial.valueString = "Annual medical examination"

* item[1].item[1].linkId = "preflight-activities.test-date"
* item[1].item[1].text = "Test Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "preflight-activities.test-completed"
* item[1].item[2].text = "Test Completed"
* item[1].item[2].type = #boolean
* item[1].item[2].required = true

// GROUP 3: TB RESULTS
* item[2].linkId = "tb-results"
* item[2].text = "TB Test Results"
* item[2].type = #group

* item[2].item[0].linkId = "tb-results.test-type"
* item[2].item[0].text = "Test Type"
* item[2].item[0].type = #choice
* item[2].item[0].answerOption[0].valueString = "Tuberculin Skin Test (TST/PPD)"
* item[2].item[0].answerOption[1].valueString = "Interferon-Gamma Release Assay (IGRA)"
* item[2].item[0].answerOption[2].valueString = "QuantiFERON-TB Gold"
* item[2].item[0].answerOption[3].valueString = "T-SPOT.TB"

* item[2].item[1].linkId = "tb-results.result"
* item[2].item[1].text = "Test Result"
* item[2].item[1].type = #choice
* item[2].item[1].code = $loinc#71773-6 "Mycobacterium tuberculosis stimulated gamma interferon [Presence] in Blood"
* item[2].item[1].answerOption[0].valueCoding = $sct#260385009 "Negative"
* item[2].item[1].answerOption[1].valueCoding = $sct#10828004 "Positive"
* item[2].item[1].answerOption[2].valueCoding = $sct#419984006 "Indeterminate"

* item[2].item[2].linkId = "tb-results.tst-induration"
* item[2].item[2].text = "TST Induration (mm)"
* item[2].item[2].type = #integer
* item[2].item[2].enableWhen.question = "tb-results.test-type"
* item[2].item[2].enableWhen.operator = #=
* item[2].item[2].enableWhen.answerString = "Tuberculin Skin Test (TST/PPD)"

* item[2].item[3].linkId = "tb-results.chest-xray-required"
* item[2].item[3].text = "Chest X-ray Required"
* item[2].item[3].type = #boolean
* item[2].item[3].enableWhen.question = "tb-results.result"
* item[2].item[3].enableWhen.operator = #=
* item[2].item[3].enableWhen.answerCoding = $sct#10828004 "Positive"

* item[2].item[4].linkId = "tb-results.chest-xray-result"
* item[2].item[4].text = "Chest X-ray Result"
* item[2].item[4].type = #choice
* item[2].item[4].answerOption[0].valueCoding = $sct#17621005 "Normal"
* item[2].item[4].answerOption[1].valueCoding = $sct#263654008 "Abnormal"
* item[2].item[4].enableWhen.question = "tb-results.chest-xray-required"
* item[2].item[4].enableWhen.operator = #=
* item[2].item[4].enableWhen.answerBoolean = true

* item[2].item[5].linkId = "tb-results.treatment-required"
* item[2].item[5].text = "Treatment Required"
* item[2].item[5].type = #boolean

* item[2].item[6].linkId = "tb-results.flight-cleared"
* item[2].item[6].text = "Cleared for Flight"
* item[2].item[6].type = #boolean

// GROUP 4: DATA DELIVERY
* item[3].linkId = "data-delivery"
* item[3].text = "Data Delivery"
* item[3].type = #group

* item[3].item[0].linkId = "data-delivery.archive"
* item[3].item[0].text = "Data Archive System"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[3].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MEDB 2.4 H. pylori Screening Questionnaire
// ============================================================================

Instance: MEDB24HpyloriScreeningQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 2.4 H. pylori Screening"
Description: "NASA Medical Requirements Integration Document for Helicobacter pylori screening. Screens crew members for H. pylori infection prior to long-duration spaceflight."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-2-4-hpylori-screening"
* version = "1.0.0"
* name = "MEDB24HpyloriScreening"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To screen crew members for Helicobacter pylori infection prior to long-duration spaceflight to prevent gastric complications"
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// GROUP 1: OVERVIEW
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 2.4 H. pylori Screening"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#medical-operations "Medical Operations"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#medical-operations "Medical Operations"

* item[0].item[2].linkId = "overview.purpose"
* item[0].item[2].text = "Purpose/Objectives"
* item[0].item[2].type = #text
* item[0].item[2].initial.valueString = "To screen crew members for H. pylori infection prior to long-duration spaceflight. Positive cases require treatment before flight to prevent gastric ulcer complications."

* item[0].item[3].linkId = "overview.flight-duration"
* item[0].item[3].text = "Flight Duration"
* item[0].item[3].type = #string
* item[0].item[3].initial.valueString = ">= 30 days"

// GROUP 2: PREFLIGHT
* item[1].linkId = "preflight-activities"
* item[1].text = "Preflight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-activities.schedule"
* item[1].item[0].text = "Schedule"
* item[1].item[0].type = #string
* item[1].item[0].initial.valueString = "L-180 to L-90 days"

* item[1].item[1].linkId = "preflight-activities.test-date"
* item[1].item[1].text = "Test Date"
* item[1].item[1].type = #date

* item[1].item[2].linkId = "preflight-activities.test-completed"
* item[1].item[2].text = "Test Completed"
* item[1].item[2].type = #boolean
* item[1].item[2].required = true

// GROUP 3: H. PYLORI RESULTS
* item[2].linkId = "hpylori-results"
* item[2].text = "H. pylori Test Results"
* item[2].type = #group

* item[2].item[0].linkId = "hpylori-results.test-type"
* item[2].item[0].text = "Test Type"
* item[2].item[0].type = #choice
* item[2].item[0].answerOption[0].valueString = "Urea Breath Test"
* item[2].item[0].answerOption[1].valueString = "Stool Antigen Test"
* item[2].item[0].answerOption[2].valueString = "Serology (IgG)"
* item[2].item[0].answerOption[3].valueString = "Endoscopy with Biopsy"

* item[2].item[1].linkId = "hpylori-results.result"
* item[2].item[1].text = "Test Result"
* item[2].item[1].type = #choice
* item[2].item[1].code = $loinc#17780-8 "Helicobacter pylori Ab [Presence] in Serum"
* item[2].item[1].answerOption[0].valueCoding = $sct#260385009 "Negative"
* item[2].item[1].answerOption[1].valueCoding = $sct#10828004 "Positive"
* item[2].item[1].answerOption[2].valueCoding = $sct#419984006 "Equivocal"

* item[2].item[2].linkId = "hpylori-results.treatment-required"
* item[2].item[2].text = "Eradication Treatment Required"
* item[2].item[2].type = #boolean
* item[2].item[2].enableWhen.question = "hpylori-results.result"
* item[2].item[2].enableWhen.operator = #=
* item[2].item[2].enableWhen.answerCoding = $sct#10828004 "Positive"

* item[2].item[3].linkId = "hpylori-results.treatment-regimen"
* item[2].item[3].text = "Treatment Regimen"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueString = "Triple Therapy (PPI + Clarithromycin + Amoxicillin)"
* item[2].item[3].answerOption[1].valueString = "Quadruple Therapy (PPI + Bismuth + Metronidazole + Tetracycline)"
* item[2].item[3].answerOption[2].valueString = "Other"
* item[2].item[3].enableWhen.question = "hpylori-results.treatment-required"
* item[2].item[3].enableWhen.operator = #=
* item[2].item[3].enableWhen.answerBoolean = true

* item[2].item[4].linkId = "hpylori-results.treatment-completed"
* item[2].item[4].text = "Treatment Completed"
* item[2].item[4].type = #boolean
* item[2].item[4].enableWhen.question = "hpylori-results.treatment-required"
* item[2].item[4].enableWhen.operator = #=
* item[2].item[4].enableWhen.answerBoolean = true

* item[2].item[5].linkId = "hpylori-results.eradication-confirmed"
* item[2].item[5].text = "Eradication Confirmed (Post-treatment Test Negative)"
* item[2].item[5].type = #boolean
* item[2].item[5].enableWhen.question = "hpylori-results.treatment-completed"
* item[2].item[5].enableWhen.operator = #=
* item[2].item[5].enableWhen.answerBoolean = true

* item[2].item[6].linkId = "hpylori-results.flight-cleared"
* item[2].item[6].text = "Cleared for Flight"
* item[2].item[6].type = #boolean

// GROUP 4: DATA DELIVERY
* item[3].linkId = "data-delivery"
* item[3].text = "Data Delivery"
* item[3].type = #group

* item[3].item[0].linkId = "data-delivery.archive"
* item[3].item[0].text = "Data Archive System"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[3].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"
