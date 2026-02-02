// ============================================================================
// MR Environmental Health Questionnaires
// ============================================================================
// This file contains questionnaires for environmental health monitoring MRIDs
// including water quality, air quality, and microbial monitoring
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
// MR051L Water Quality Assessment Questionnaire
// ============================================================================
// Source: MR051L Water Quality Monitoring
// Purpose: Monitor potable and technical water quality aboard ISS
// ============================================================================

Instance: MR051LWaterQualityQuestionnaire
InstanceOf: Questionnaire
Title: "MR051L Water Quality Assessment"
Description: "NASA Medical Requirements Integration Document for water quality monitoring. Tracks potable and technical water quality parameters aboard the International Space Station."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr051l-water-quality"
* version = "1.0.0"
* name = "MR051LWaterQuality"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Environmental Health System"
* contact.name = "Environmental Health System"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To monitor water quality aboard ISS to ensure crew health and safety. Includes potable water, condensate, and technical water systems."
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
* item[0].item[0].initial.valueString = "MR051L Water Quality Monitoring"

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
* item[0].item[2].initial.valueCoding = $nasa-discipline#environmental "Environmental"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#environmental "Environmental"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To monitor the quality of potable water, condensate, and technical water aboard ISS. Ensure water meets health and safety requirements for crew consumption and use."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "Total organic carbon, pH, conductivity, microbial counts, iodine/silver biocide levels"

* item[0].item[5].linkId = "overview.flight-duration"
* item[0].item[5].text = "Flight Duration"
* item[0].item[5].type = #string
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "Continuous during ISS operations"

// GROUP 2: PREFLIGHT TRAINING
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.description"
* item[1].item[0].text = "Training Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "Environmental Health System training on water sampling procedures and equipment operation."

* item[1].item[1].linkId = "preflight-training.duration"
* item[1].item[1].text = "Duration (minutes)"
* item[1].item[1].type = #integer
* item[1].item[1].initial.valueInteger = 60

* item[1].item[2].linkId = "preflight-training.schedule"
* item[1].item[2].text = "Schedule"
* item[1].item[2].type = #string
* item[1].item[2].initial.valueString = "L-12 months"

* item[1].item[3].linkId = "preflight-training.completed"
* item[1].item[3].text = "Training Completed"
* item[1].item[3].type = #boolean

// GROUP 3: IN-FLIGHT ACTIVITIES
* item[2].linkId = "inflight-activities"
* item[2].text = "In-Flight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "inflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #text
* item[2].item[0].initial.valueString = "Regular water sampling and analysis using on-board equipment. Samples may be returned to ground for comprehensive analysis."

* item[2].item[1].linkId = "inflight-activities.schedule"
* item[2].item[1].text = "Sampling Schedule"
* item[2].item[1].type = #string
* item[2].item[1].initial.valueString = "Weekly for microbial, monthly for chemical parameters"

* item[2].item[2].linkId = "inflight-activities.sample-location"
* item[2].item[2].text = "Sample Location"
* item[2].item[2].type = #choice
* item[2].item[2].repeats = true
* item[2].item[2].answerOption[0].valueString = "PWD (Potable Water Dispenser)"
* item[2].item[2].answerOption[1].valueString = "WHC (Waste and Hygiene Compartment)"
* item[2].item[2].answerOption[2].valueString = "WRS (Water Recovery System)"
* item[2].item[2].answerOption[3].valueString = "Galley"
* item[2].item[2].answerOption[4].valueString = "Russian Segment"

// GROUP 4: WATER QUALITY RESULTS
* item[3].linkId = "water-quality-results"
* item[3].text = "Water Quality Results"
* item[3].type = #group

* item[3].item[0].linkId = "water-quality-results.sample-date"
* item[3].item[0].text = "Sample Date"
* item[3].item[0].type = #date

* item[3].item[1].linkId = "water-quality-results.sample-source"
* item[3].item[1].text = "Sample Source"
* item[3].item[1].type = #string

* item[3].item[2].linkId = "water-quality-results.toc"
* item[3].item[2].text = "Total Organic Carbon (mg/L)"
* item[3].item[2].type = #decimal
* item[3].item[2].code = $loinc#5810-9 "Carbon.organic.total [Mass/volume] in Water"

* item[3].item[3].linkId = "water-quality-results.ph"
* item[3].item[3].text = "pH"
* item[3].item[3].type = #decimal
* item[3].item[3].code = $loinc#2753-2 "pH of Water"

* item[3].item[4].linkId = "water-quality-results.conductivity"
* item[3].item[4].text = "Conductivity (uS/cm)"
* item[3].item[4].type = #decimal

* item[3].item[5].linkId = "water-quality-results.turbidity"
* item[3].item[5].text = "Turbidity (NTU)"
* item[3].item[5].type = #decimal

* item[3].item[6].linkId = "water-quality-results.total-coliform"
* item[3].item[6].text = "Total Coliform (CFU/100mL)"
* item[3].item[6].type = #integer
* item[3].item[6].code = $loinc#5801-8 "Coliform bacteria [#/volume] in Water by Culture"

* item[3].item[7].linkId = "water-quality-results.heterotrophic-plate-count"
* item[3].item[7].text = "Heterotrophic Plate Count (CFU/mL)"
* item[3].item[7].type = #integer

* item[3].item[8].linkId = "water-quality-results.iodine-level"
* item[3].item[8].text = "Iodine Level (mg/L)"
* item[3].item[8].type = #decimal

* item[3].item[9].linkId = "water-quality-results.silver-level"
* item[3].item[9].text = "Silver Level (mg/L)"
* item[3].item[9].type = #decimal

* item[3].item[10].linkId = "water-quality-results.meets-specifications"
* item[3].item[10].text = "Meets ISS Water Quality Specifications"
* item[3].item[10].type = #boolean

* item[3].item[11].linkId = "water-quality-results.corrective-action"
* item[3].item[11].text = "Corrective Action Required"
* item[3].item[11].type = #boolean

* item[3].item[12].linkId = "water-quality-results.notes"
* item[3].item[12].text = "Notes"
* item[3].item[12].type = #text

// GROUP 5: DATA DELIVERY
* item[4].linkId = "data-delivery"
* item[4].text = "Data Delivery"
* item[4].type = #group

* item[4].item[0].linkId = "data-delivery.archive"
* item[4].item[0].text = "Data Archive System"
* item[4].item[0].type = #choice
* item[4].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[4].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"


// ============================================================================
// MR022S Air Quality Monitoring Questionnaire
// ============================================================================
// Source: MR022S Atmosphere Monitoring
// Purpose: Monitor atmospheric quality aboard spacecraft
// ============================================================================

Instance: MR022SAirQualityQuestionnaire
InstanceOf: Questionnaire
Title: "MR022S Air Quality Monitoring"
Description: "NASA Medical Requirements Integration Document for atmospheric monitoring. Tracks air quality parameters to ensure crew health and safety."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr022s-air-quality"
* version = "1.0.0"
* name = "MR022SAirQuality"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Environmental Health System"
* contact.name = "Environmental Health System"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To monitor atmospheric composition and quality aboard spacecraft to ensure crew health and safety"
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
* item[0].item[0].initial.valueString = "MR022S Air Quality Monitoring"

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
* item[0].item[2].initial.valueCoding = $nasa-discipline#environmental "Environmental"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#environmental "Environmental"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To monitor atmospheric composition, trace contaminants, particulates, and microbial loads in spacecraft air to protect crew health."

* item[0].item[4].linkId = "overview.measurement-parameters"
* item[0].item[4].text = "Measurement Parameters"
* item[0].item[4].type = #string
* item[0].item[4].required = true
* item[0].item[4].initial.valueString = "O2, CO2, trace contaminants, particulates, microbial counts, humidity, temperature"

// GROUP 2: IN-FLIGHT ACTIVITIES
* item[1].linkId = "inflight-activities"
* item[1].text = "In-Flight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "inflight-activities.description"
* item[1].item[0].text = "Activity Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "Continuous atmospheric monitoring using onboard sensors. Periodic air samples collected for ground analysis."

* item[1].item[1].linkId = "inflight-activities.monitoring-frequency"
* item[1].item[1].text = "Monitoring Frequency"
* item[1].item[1].type = #string
* item[1].item[1].initial.valueString = "Continuous for major constituents, weekly/monthly for sampling"

// GROUP 3: ATMOSPHERIC RESULTS
* item[2].linkId = "air-quality-results"
* item[2].text = "Air Quality Results"
* item[2].type = #group

* item[2].item[0].linkId = "air-quality-results.sample-date"
* item[2].item[0].text = "Sample/Reading Date"
* item[2].item[0].type = #dateTime

* item[2].item[1].linkId = "air-quality-results.location"
* item[2].item[1].text = "Sample Location"
* item[2].item[1].type = #string

* item[2].item[2].linkId = "air-quality-results.oxygen-ppO2"
* item[2].item[2].text = "Oxygen Partial Pressure (mmHg)"
* item[2].item[2].type = #decimal
* item[2].item[2].code = $loinc#19989-3 "Oxygen [Partial pressure] in Inhaled gas"

* item[2].item[3].linkId = "air-quality-results.co2-ppCO2"
* item[2].item[3].text = "CO2 Partial Pressure (mmHg)"
* item[2].item[3].type = #decimal
* item[2].item[3].code = $loinc#19883-8 "Carbon dioxide [Partial pressure] in Inhaled gas"

* item[2].item[4].linkId = "air-quality-results.total-pressure"
* item[2].item[4].text = "Total Pressure (mmHg)"
* item[2].item[4].type = #decimal

* item[2].item[5].linkId = "air-quality-results.temperature"
* item[2].item[5].text = "Temperature (°C)"
* item[2].item[5].type = #decimal

* item[2].item[6].linkId = "air-quality-results.relative-humidity"
* item[2].item[6].text = "Relative Humidity (%)"
* item[2].item[6].type = #decimal

* item[2].item[7].linkId = "air-quality-results.co-level"
* item[2].item[7].text = "Carbon Monoxide (ppm)"
* item[2].item[7].type = #decimal

* item[2].item[8].linkId = "air-quality-results.ammonia-level"
* item[2].item[8].text = "Ammonia (ppm)"
* item[2].item[8].type = #decimal

* item[2].item[9].linkId = "air-quality-results.formaldehyde-level"
* item[2].item[9].text = "Formaldehyde (ppm)"
* item[2].item[9].type = #decimal

* item[2].item[10].linkId = "air-quality-results.particulate-count"
* item[2].item[10].text = "Particulate Count (particles/m3)"
* item[2].item[10].type = #integer

* item[2].item[11].linkId = "air-quality-results.fungal-count"
* item[2].item[11].text = "Fungal Count (CFU/m3)"
* item[2].item[11].type = #integer

* item[2].item[12].linkId = "air-quality-results.bacterial-count"
* item[2].item[12].text = "Bacterial Count (CFU/m3)"
* item[2].item[12].type = #integer

* item[2].item[13].linkId = "air-quality-results.meets-specifications"
* item[2].item[13].text = "Meets ISS Air Quality Specifications"
* item[2].item[13].type = #boolean

* item[2].item[14].linkId = "air-quality-results.corrective-action"
* item[2].item[14].text = "Corrective Action Required"
* item[2].item[14].type = #boolean

* item[2].item[15].linkId = "air-quality-results.notes"
* item[2].item[15].text = "Notes"
* item[2].item[15].type = #text

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
// MR054L Microbial Monitoring Questionnaire
// ============================================================================
// Source: MR054L Microbial Monitoring
// Purpose: Monitor microbial environment aboard ISS
// ============================================================================

Instance: MR054LMicrobialMonitoringQuestionnaire
InstanceOf: Questionnaire
Title: "MR054L Microbial Monitoring"
Description: "NASA Medical Requirements Integration Document for microbial monitoring. Tracks microbial populations in air, water, and surfaces aboard ISS."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr054l-microbial-monitoring"
* version = "1.0.0"
* name = "MR054LMicrobialMonitoring"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Environmental Health System"
* contact.name = "Environmental Health System"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To monitor microbial populations in air, water, and on surfaces aboard ISS to prevent infections and monitor spacecraft cleanliness"
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
* item[0].item[0].initial.valueString = "MR054L Microbial Monitoring"

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
* item[0].item[2].initial.valueCoding = $nasa-discipline#environmental "Environmental"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#environmental "Environmental"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].required = true
* item[0].item[3].initial.valueString = "To characterize and monitor microbial populations aboard ISS in air, water, and on surfaces. Identify potential pathogens and track microbial trends."

// GROUP 2: IN-FLIGHT ACTIVITIES
* item[1].linkId = "inflight-activities"
* item[1].text = "In-Flight Activities"
* item[1].type = #group

* item[1].item[0].linkId = "inflight-activities.description"
* item[1].item[0].text = "Activity Description"
* item[1].item[0].type = #text
* item[1].item[0].initial.valueString = "Regular collection of air, water, and surface samples for microbial analysis. Samples analyzed onboard and/or returned to ground for comprehensive analysis."

* item[1].item[1].linkId = "inflight-activities.air-sampling-frequency"
* item[1].item[1].text = "Air Sampling Frequency"
* item[1].item[1].type = #string
* item[1].item[1].initial.valueString = "Weekly"

* item[1].item[2].linkId = "inflight-activities.surface-sampling-frequency"
* item[1].item[2].text = "Surface Sampling Frequency"
* item[1].item[2].type = #string
* item[1].item[2].initial.valueString = "Monthly"

// GROUP 3: AIR MICROBIAL RESULTS
* item[2].linkId = "air-microbial-results"
* item[2].text = "Air Microbial Results"
* item[2].type = #group

* item[2].item[0].linkId = "air-microbial-results.sample-date"
* item[2].item[0].text = "Sample Date"
* item[2].item[0].type = #date

* item[2].item[1].linkId = "air-microbial-results.location"
* item[2].item[1].text = "Sample Location"
* item[2].item[1].type = #string

* item[2].item[2].linkId = "air-microbial-results.total-bacteria"
* item[2].item[2].text = "Total Bacteria (CFU/m3)"
* item[2].item[2].type = #integer

* item[2].item[3].linkId = "air-microbial-results.total-fungi"
* item[2].item[3].text = "Total Fungi (CFU/m3)"
* item[2].item[3].type = #integer

* item[2].item[4].linkId = "air-microbial-results.predominant-bacteria"
* item[2].item[4].text = "Predominant Bacterial Species"
* item[2].item[4].type = #string

* item[2].item[5].linkId = "air-microbial-results.predominant-fungi"
* item[2].item[5].text = "Predominant Fungal Species"
* item[2].item[5].type = #string

* item[2].item[6].linkId = "air-microbial-results.pathogens-detected"
* item[2].item[6].text = "Potential Pathogens Detected"
* item[2].item[6].type = #boolean

* item[2].item[7].linkId = "air-microbial-results.pathogen-list"
* item[2].item[7].text = "Pathogens Identified"
* item[2].item[7].type = #text
* item[2].item[7].enableWhen.question = "air-microbial-results.pathogens-detected"
* item[2].item[7].enableWhen.operator = #=
* item[2].item[7].enableWhen.answerBoolean = true

// GROUP 4: SURFACE MICROBIAL RESULTS
* item[3].linkId = "surface-microbial-results"
* item[3].text = "Surface Microbial Results"
* item[3].type = #group

* item[3].item[0].linkId = "surface-microbial-results.sample-date"
* item[3].item[0].text = "Sample Date"
* item[3].item[0].type = #date

* item[3].item[1].linkId = "surface-microbial-results.location"
* item[3].item[1].text = "Sample Location"
* item[3].item[1].type = #string

* item[3].item[2].linkId = "surface-microbial-results.total-bacteria"
* item[3].item[2].text = "Total Bacteria (CFU/cm2)"
* item[3].item[2].type = #integer

* item[3].item[3].linkId = "surface-microbial-results.total-fungi"
* item[3].item[3].text = "Total Fungi (CFU/cm2)"
* item[3].item[3].type = #integer

* item[3].item[4].linkId = "surface-microbial-results.biofilm-detected"
* item[3].item[4].text = "Biofilm Detected"
* item[3].item[4].type = #boolean

* item[3].item[5].linkId = "surface-microbial-results.cleaning-required"
* item[3].item[5].text = "Cleaning/Remediation Required"
* item[3].item[5].type = #boolean

// GROUP 5: SUMMARY
* item[4].linkId = "summary"
* item[4].text = "Summary Assessment"
* item[4].type = #group

* item[4].item[0].linkId = "summary.meets-specifications"
* item[4].item[0].text = "Meets ISS Microbial Specifications"
* item[4].item[0].type = #boolean

* item[4].item[1].linkId = "summary.trend-assessment"
* item[4].item[1].text = "Trend Assessment"
* item[4].item[1].type = #choice
* item[4].item[1].answerOption[0].valueString = "Stable"
* item[4].item[1].answerOption[1].valueString = "Increasing"
* item[4].item[1].answerOption[2].valueString = "Decreasing"
* item[4].item[1].answerOption[3].valueString = "Requires attention"

* item[4].item[2].linkId = "summary.notes"
* item[4].item[2].text = "Notes"
* item[4].item[2].type = #text

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#mmis "Medical Mission Information System"
* item[5].item[0].initial.valueCoding = $nasa-archive#mmis "Medical Mission Information System"
