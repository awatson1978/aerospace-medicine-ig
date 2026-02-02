// ============================================================================
// MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry Questionnaire
// ============================================================================
// Source: MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry
// Approved: 06/05/17 | JSC28913
// Purpose: Monitor and document crew radiation exposure, perform risk assessment
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


Instance: MEDB31RadiationMonitoringQuestionnaire
InstanceOf: Questionnaire
Title: "MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry"
Description: "NASA Medical Requirements Integration Document for radiation monitoring and crew personal dosimetry. Captures crew radiation exposure data for occupational exposure documentation and health risk assessment."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/medb-3-1-radiation-monitoring"
* version = "1.0.0"
* name = "MEDB31RadiationMonitoring"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Medical Operations"
* contact.name = "Space Radiation Analysis Group"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "To monitor and document crew exposure to radiation and to maintain crew exposures 'as low as reasonably achievable'. To perform risk assessment."
* copyright = "NASA Johnson Space Center - Medical Requirements Integration Documents (MRIDs) JSC28913"

// SDC Extensions for extraction support
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[=].extension[+].url = "name"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext#patient
* extension[=].extension[+].url = "type"
* extension[=].extension[=].valueCode = #Patient
* extension[=].extension[+].url = "description"
* extension[=].extension[=].valueString = "The astronaut/crewmember subject of this medical requirement"

// ============================================================================
// GROUP 1: MEDICAL REQUIREMENTS OVERVIEW
// ============================================================================
* item[0].linkId = "overview"
* item[0].text = "Medical Requirements Overview"
* item[0].type = #group

* item[0].item[0].linkId = "overview.mrid-number"
* item[0].item[0].text = "MRID Number and Title"
* item[0].item[0].type = #display
* item[0].item[0].initial.valueString = "MEDB 3.1 Radiation Monitoring/Crew Personal Dosimetry"

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
* item[0].item[2].initial.valueCoding = $nasa-discipline#radiation "Radiation"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#radiation "Radiation"

* item[0].item[3].linkId = "overview.category"
* item[0].item[3].text = "Category"
* item[0].item[3].type = #string
* item[0].item[3].required = true
* item[0].item[3].readOnly = true
* item[0].item[3].initial.valueString = "Medical Requirements"

* item[0].item[4].linkId = "overview.references"
* item[0].item[4].text = "References"
* item[0].item[4].type = #text
* item[0].item[4].required = false
* item[0].item[4].initial.valueString = "SSP 50260 ISS Medical Operations Requirement Document; SSP 50667 Med Volume B, Section 3.1"

* item[0].item[5].linkId = "overview.purpose"
* item[0].item[5].text = "Purpose/Objectives"
* item[0].item[5].type = #text
* item[0].item[5].required = true
* item[0].item[5].initial.valueString = "To monitor and document crew exposure to radiation and to maintain crew exposures 'as low as reasonably achievable'. To perform risk assessment."

* item[0].item[6].linkId = "overview.measurement-parameters"
* item[0].item[6].text = "Measurement Parameters"
* item[0].item[6].type = #string
* item[0].item[6].required = true
* item[0].item[6].initial.valueString = "Radiation exposure"

* item[0].item[7].linkId = "overview.deliverables"
* item[0].item[7].text = "Deliverables"
* item[0].item[7].type = #text
* item[0].item[7].required = true
* item[0].item[7].initial.valueString = "Record of radiation doses used to document occupational exposure. Doses from each mission and accumulated doses, which shall be used for health risk assessment, are to be recorded in crewmembers' medical records. All U.S. crewmembers' medical records will be updated based on CPD data."

* item[0].item[8].linkId = "overview.flight-duration"
* item[0].item[8].text = "Flight Duration"
* item[0].item[8].type = #string
* item[0].item[8].required = true
* item[0].item[8].initial.valueString = "All flights"

* item[0].item[9].linkId = "overview.number-of-flights"
* item[0].item[9].text = "Number of Flights"
* item[0].item[9].type = #string
* item[0].item[9].required = true
* item[0].item[9].initial.valueString = "Every ISS Increment"

* item[0].item[10].linkId = "overview.crew-members-required"
* item[0].item[10].text = "Number and Type of Crew Members Required"
* item[0].item[10].type = #string
* item[0].item[10].required = true
* item[0].item[10].initial.valueString = "ISS crewmembers (Primary and backup will be trained)"

// ============================================================================
// GROUP 2: PREFLIGHT TRAINING
// ============================================================================
* item[1].linkId = "preflight-training"
* item[1].text = "Preflight Training"
* item[1].type = #group

* item[1].item[0].linkId = "preflight-training.description"
* item[1].item[0].text = "Training Activity Description"
* item[1].item[0].type = #text
* item[1].item[0].required = false
* item[1].item[0].initial.valueString = "Training will be covered in the following Radiation lesson (ISS): EHS Radiation Operations."

* item[1].item[1].linkId = "preflight-training.activity-name"
* item[1].item[1].text = "Activity Name"
* item[1].item[1].type = #string
* item[1].item[1].required = true
* item[1].item[1].initial.valueString = "EHS Radiation Operations"

* item[1].item[2].linkId = "preflight-training.duration"
* item[1].item[2].text = "Duration (minutes)"
* item[1].item[2].type = #integer
* item[1].item[2].required = true
* item[1].item[2].initial.valueInteger = 45

* item[1].item[3].linkId = "preflight-training.schedule"
* item[1].item[3].text = "Schedule"
* item[1].item[3].type = #choice
* item[1].item[3].required = true
* item[1].item[3].answerOption[0].valueCoding = $nasa-offset#L-19m "L-19 months"
* item[1].item[3].initial.valueCoding = $nasa-offset#L-19m "L-19 months"

* item[1].item[4].linkId = "preflight-training.flexibility"
* item[1].item[4].text = "Flexibility"
* item[1].item[4].type = #string
* item[1].item[4].required = false
* item[1].item[4].initial.valueString = "N/A"

* item[1].item[5].linkId = "preflight-training.personnel"
* item[1].item[5].text = "Personnel Required"
* item[1].item[5].type = #choice
* item[1].item[5].required = true
* item[1].item[5].repeats = true
* item[1].item[5].answerOption[0].valueCoding = $nasa-roles#crewmember "Crewmember"
* item[1].item[5].answerOption[1].valueCoding = $nasa-roles#instructor "Instructor"

* item[1].item[6].linkId = "preflight-training.hardware"
* item[1].item[6].text = "Preflight Hardware"
* item[1].item[6].type = #choice
* item[1].item[6].required = true
* item[1].item[6].answerOption[0].valueCoding = $nasa-hardware#cpd "Crew Passive Dosimeter"

* item[1].item[7].linkId = "preflight-training.software"
* item[1].item[7].text = "Preflight Software"
* item[1].item[7].type = #string
* item[1].item[7].required = false
* item[1].item[7].initial.valueString = "N/A"

* item[1].item[8].linkId = "preflight-training.location"
* item[1].item[8].text = "Test Location"
* item[1].item[8].type = #choice
* item[1].item[8].required = true
* item[1].item[8].answerOption[0].valueCoding = $nasa-facility#jsc "Johnson Space Center"
* item[1].item[8].initial.valueCoding = $nasa-facility#jsc "Johnson Space Center"

* item[1].item[9].linkId = "preflight-training.facilities"
* item[1].item[9].text = "Training Facilities"
* item[1].item[9].type = #string
* item[1].item[9].required = false
* item[1].item[9].initial.valueString = "Conference Room"

* item[1].item[10].linkId = "preflight-training.training-date"
* item[1].item[10].text = "Training Completion Date"
* item[1].item[10].type = #date
* item[1].item[10].required = false

* item[1].item[11].linkId = "preflight-training.training-complete"
* item[1].item[11].text = "Training Completed"
* item[1].item[11].type = #boolean
* item[1].item[11].required = true

// ============================================================================
// GROUP 3: PREFLIGHT ACTIVITIES
// ============================================================================
* item[2].linkId = "preflight-activities"
* item[2].text = "Preflight Activities"
* item[2].type = #group

* item[2].item[0].linkId = "preflight-activities.description"
* item[2].item[0].text = "Activity Description"
* item[2].item[0].type = #display
* item[2].item[0].initial.valueString = "No crew activities"

* item[2].item[1].linkId = "preflight-activities.constraints"
* item[2].item[1].text = "Constraints/Special Requirements"
* item[2].item[1].type = #text
* item[2].item[1].required = false
* item[2].item[1].initial.valueString = "When transporting hardware to launch location, hardware should not be x-rayed or stowed/shipped with radioactive material. Dosimeters should be transported inside lead-lined bags. If X-ray is necessary for security, the dosimeters must be kept inside the lead-lined bags and the number of X-rays should be recorded."

* item[2].item[2].linkId = "preflight-activities.launch-delay"
* item[2].item[2].text = "Launch Delay Requirements"
* item[2].item[2].type = #text
* item[2].item[2].required = false
* item[2].item[2].initial.valueString = "If a launch delay of more than 90 days occurs, Space Radiation Analysis Group (SRAG) will decide whether to refurbish, replace or take no action."

// ============================================================================
// GROUP 4: IN-FLIGHT ACTIVITIES
// ============================================================================
* item[3].linkId = "inflight-activities"
* item[3].text = "In-Flight Activities"
* item[3].type = #group

* item[3].item[0].linkId = "inflight-activities.description"
* item[3].item[0].text = "Activity Description"
* item[3].item[0].type = #text
* item[3].item[0].required = false
* item[3].item[0].initial.valueString = "The Crew Passive Dosimeters (CPDs) are preintegrated into the crewed launch vehicle and then distributed to the appropriate crewmembers post launch. Each crewmember is required to carry his/her CPD continuously, including during EVAs. Prior to descent, crewmembers are to wear or stow the CPDs to be recovered at landing."

* item[3].item[1].linkId = "inflight-activities.activity-name"
* item[3].item[1].text = "Activity"
* item[3].item[1].type = #string
* item[3].item[1].required = true
* item[3].item[1].initial.valueString = "Crew Passive Dosimeter"

* item[3].item[2].linkId = "inflight-activities.duration"
* item[3].item[2].text = "Duration"
* item[3].item[2].type = #string
* item[3].item[2].required = true
* item[3].item[2].initial.valueString = "Continuous monitoring"

* item[3].item[3].linkId = "inflight-activities.schedule"
* item[3].item[3].text = "Schedule"
* item[3].item[3].type = #string
* item[3].item[3].required = true
* item[3].item[3].initial.valueString = "Worn continuously during the mission, including ascent and EVAs"

* item[3].item[4].linkId = "inflight-activities.personnel"
* item[3].item[4].text = "Personnel Required"
* item[3].item[4].type = #text
* item[3].item[4].required = true
* item[3].item[4].initial.valueString = "All U.S. crewmembers, CSA and JAXA crewmembers by agreement"

* item[3].item[5].linkId = "inflight-activities.hardware"
* item[3].item[5].text = "In-Flight Hardware"
* item[3].item[5].type = #choice
* item[3].item[5].required = true
* item[3].item[5].answerOption[0].valueCoding = $nasa-hardware#cpd "Crew Passive Dosimeter"
* item[3].item[5].initial.valueCoding = $nasa-hardware#cpd "Crew Passive Dosimeter"

* item[3].item[6].linkId = "inflight-activities.cpd-serial"
* item[3].item[6].text = "CPD Serial Number"
* item[3].item[6].type = #string
* item[3].item[6].required = false

* item[3].item[7].linkId = "inflight-activities.cpd-distributed"
* item[3].item[7].text = "CPD Distribution Date"
* item[3].item[7].type = #date
* item[3].item[7].required = false

* item[3].item[8].linkId = "inflight-activities.mid-mission-exchange"
* item[3].item[8].text = "Mid-Mission CPD Exchange Required (>180 days)"
* item[3].item[8].type = #boolean
* item[3].item[8].required = false

* item[3].item[9].linkId = "inflight-activities.mid-cpd-serial"
* item[3].item[9].text = "Mid-Mission CPD Serial Number"
* item[3].item[9].type = #string
* item[3].item[9].required = false
* item[3].item[9].enableWhen.question = "inflight-activities.mid-mission-exchange"
* item[3].item[9].enableWhen.operator = #=
* item[3].item[9].enableWhen.answerBoolean = true

* item[3].item[10].linkId = "inflight-activities.notes"
* item[3].item[10].text = "Notes"
* item[3].item[10].type = #text
* item[3].item[10].required = false
* item[3].item[10].initial.valueString = "Resupply Requirements: At launch each crewmember will be supplied with a crew passive dosimeter (CPD) for continuous wear. Longer duration crew (greater than 180 days) may receive mid-mission CPDs to exchange with their beginning of mission CPD to assess mid-mission exposures."

// ============================================================================
// GROUP 5: POSTFLIGHT ACTIVITIES
// ============================================================================
* item[4].linkId = "postflight-activities"
* item[4].text = "Postflight Activities"
* item[4].type = #group

* item[4].item[0].linkId = "postflight-activities.description"
* item[4].item[0].text = "Activity Description"
* item[4].item[0].type = #text
* item[4].item[0].required = false
* item[4].item[0].initial.valueString = "Returning Crewmembers will have their dosimeters returned via flight surgeons."

* item[4].item[1].linkId = "postflight-activities.schedule"
* item[4].item[1].text = "Schedule"
* item[4].item[1].type = #choice
* item[4].item[1].required = true
* item[4].item[1].answerOption[0].valueCoding = $nasa-offset#R-0 "R+0"
* item[4].item[1].initial.valueCoding = $nasa-offset#R-0 "R+0"

* item[4].item[2].linkId = "postflight-activities.personnel"
* item[4].item[2].text = "Personnel Required"
* item[4].item[2].type = #choice
* item[4].item[2].required = true
* item[4].item[2].repeats = true
* item[4].item[2].answerOption[0].valueCoding = $nasa-roles#flight-surgeon "Flight Surgeon"
* item[4].item[2].answerOption[1].valueCoding = $nasa-roles#landing-team "Landing Team"

* item[4].item[3].linkId = "postflight-activities.constraints"
* item[4].item[3].text = "Constraints/Special Requirements"
* item[4].item[3].type = #text
* item[4].item[3].required = false
* item[4].item[3].initial.valueString = "Upon the return of hardware, hardware should not be x-rayed or stowed/shipped with radioactive material. Dosimeters should be transported inside lead-lined bags. If X-ray is necessary for security, the dosimeters must be kept inside the lead-lined bags and the number of X-rays should be recorded."

* item[4].item[4].linkId = "postflight-activities.cpd-recovered"
* item[4].item[4].text = "CPD Recovered"
* item[4].item[4].type = #boolean
* item[4].item[4].required = true

* item[4].item[5].linkId = "postflight-activities.cpd-recovery-date"
* item[4].item[5].text = "CPD Recovery Date"
* item[4].item[5].type = #date
* item[4].item[5].required = false

// ============================================================================
// GROUP 6: DATA DELIVERY
// ============================================================================
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.cpd-report"
* item[5].item[0].text = "CPD Analytical Report"
* item[5].item[0].type = #group

* item[5].item[0].item[0].linkId = "data-delivery.cpd-report.due"
* item[5].item[0].item[0].text = "Report Due (R+ days)"
* item[5].item[0].item[0].type = #integer
* item[5].item[0].item[0].required = true
* item[5].item[0].item[0].initial.valueInteger = 30

* item[5].item[0].item[1].linkId = "data-delivery.cpd-report.recipient"
* item[5].item[0].item[1].text = "Report Recipient"
* item[5].item[0].item[1].type = #choice
* item[5].item[0].item[1].required = true
* item[5].item[0].item[1].answerOption[0].valueCoding = $nasa-roles#rho "Radiation Health Officer"
* item[5].item[0].item[1].initial.valueCoding = $nasa-roles#rho "Radiation Health Officer"

* item[5].item[0].item[2].linkId = "data-delivery.cpd-report.delivered"
* item[5].item[0].item[2].text = "Report Delivered"
* item[5].item[0].item[2].type = #boolean
* item[5].item[0].item[2].required = false

* item[5].item[0].item[3].linkId = "data-delivery.cpd-report.delivery-date"
* item[5].item[0].item[3].text = "Delivery Date"
* item[5].item[0].item[3].type = #date
* item[5].item[0].item[3].required = false

* item[5].item[1].linkId = "data-delivery.dosimetry-report"
* item[5].item[1].text = "Mission Dosimetry and Risk Report"
* item[5].item[1].type = #group

* item[5].item[1].item[0].linkId = "data-delivery.dosimetry-report.due"
* item[5].item[1].item[0].text = "Report Due (R+ days)"
* item[5].item[1].item[0].type = #integer
* item[5].item[1].item[0].required = true
* item[5].item[1].item[0].initial.valueInteger = 60

* item[5].item[1].item[1].linkId = "data-delivery.dosimetry-report.recipients"
* item[5].item[1].item[1].text = "Report Recipients"
* item[5].item[1].item[1].type = #choice
* item[5].item[1].item[1].required = true
* item[5].item[1].item[1].repeats = true
* item[5].item[1].item[1].answerOption[0].valueCoding = $nasa-roles#flight-surgeon "Flight Surgeon"
* item[5].item[1].item[1].answerOption[1].valueCoding = $nasa-roles#crew-surgeon "Crew Surgeon"

* item[5].item[1].item[2].linkId = "data-delivery.dosimetry-report.preliminary"
* item[5].item[1].item[2].text = "Preliminary Report Issued"
* item[5].item[1].item[2].type = #boolean
* item[5].item[1].item[2].required = false

* item[5].item[1].item[3].linkId = "data-delivery.dosimetry-report.final"
* item[5].item[1].item[3].text = "Final Report Issued"
* item[5].item[1].item[3].type = #boolean
* item[5].item[1].item[3].required = false

* item[5].item[2].linkId = "data-delivery.archive"
* item[5].item[2].text = "Data Archive System"
* item[5].item[2].type = #choice
* item[5].item[2].required = true
* item[5].item[2].answerOption[0].valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"
* item[5].item[2].initial.valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"

// ============================================================================
// GROUP 7: RADIATION DOSE RESULTS (for extraction to Observation)
// ============================================================================
* item[6].linkId = "dose-results"
* item[6].text = "Radiation Dose Results"
* item[6].type = #group

* item[6].item[0].linkId = "dose-results.mission-dose"
* item[6].item[0].text = "Mission Dose (mSv)"
* item[6].item[0].type = #decimal
* item[6].item[0].required = false
* item[6].item[0].code = $loinc#73536-5 "Radiation dose"

* item[6].item[1].linkId = "dose-results.dose-rate"
* item[6].item[1].text = "Average Dose Rate (mSv/day)"
* item[6].item[1].type = #decimal
* item[6].item[1].required = false

* item[6].item[2].linkId = "dose-results.cumulative-dose"
* item[6].item[2].text = "Career Cumulative Dose (mSv)"
* item[6].item[2].type = #decimal
* item[6].item[2].required = false

* item[6].item[3].linkId = "dose-results.alara-compliant"
* item[6].item[3].text = "ALARA Compliance Confirmed"
* item[6].item[3].type = #boolean
* item[6].item[3].required = false

* item[6].item[4].linkId = "dose-results.notes"
* item[6].item[4].text = "Dose Assessment Notes"
* item[6].item[4].type = #text
* item[6].item[4].required = false

// ============================================================================
// GROUP 8: POSTFLIGHT DEBRIEF
// ============================================================================
* item[7].linkId = "postflight-debrief"
* item[7].text = "Postflight Debrief"
* item[7].type = #group

* item[7].item[0].linkId = "postflight-debrief.schedule"
* item[7].item[0].text = "Schedule"
* item[7].item[0].type = #choice
* item[7].item[0].required = true
* item[7].item[0].answerOption[0].valueCoding = $nasa-offset#R-30d "R+30 days"
* item[7].item[0].initial.valueCoding = $nasa-offset#R-30d "R+30 days"

* item[7].item[1].linkId = "postflight-debrief.duration"
* item[7].item[1].text = "Duration"
* item[7].item[1].type = #string
* item[7].item[1].required = false
* item[7].item[1].initial.valueString = "No extra time (included as part of Med Ops overall debrief)"

* item[7].item[2].linkId = "postflight-debrief.personnel"
* item[7].item[2].text = "Personnel Required"
* item[7].item[2].type = #string
* item[7].item[2].required = false
* item[7].item[2].initial.valueString = "Crewmembers/Radiation Team"

* item[7].item[3].linkId = "postflight-debrief.completed"
* item[7].item[3].text = "Debrief Completed"
* item[7].item[3].type = #boolean
* item[7].item[3].required = false

* item[7].item[4].linkId = "postflight-debrief.date"
* item[7].item[4].text = "Debrief Date"
* item[7].item[4].type = #date
* item[7].item[4].required = false


// ============================================================================
// MR092L Solar Particle Event Protocol Questionnaire
// ============================================================================
// Source: MR092L Solar Particle Event Protocol
// Purpose: Monitor SPE alerts and coordinate crew protection
// ============================================================================

Instance: MR092LSPEProtocolQuestionnaire
InstanceOf: Questionnaire
Title: "MR092L Solar Particle Event Protocol"
Description: "NASA Medical Requirements Integration Document for Solar Particle Event protocol. Monitors SPE alerts, coordinates crew protective actions, and tracks exposure during events."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr092l-spe-protocol"
* version = "1.0.0"
* name = "MR092LSPEProtocol"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Space Radiation Analysis Group"
* contact.name = "Space Radiation Analysis Group"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Document Solar Particle Event monitoring, crew protective actions, and radiation exposure tracking during SPE events."
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
* item[0].item[0].initial.valueString = "MR092L Solar Particle Event Protocol"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#srag "Space Radiation Analysis Group"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#srag "Space Radiation Analysis Group"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#radiation "Radiation Health"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#radiation "Radiation Health"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].initial.valueString = "Monitor SPE alerts, coordinate protective actions, and track crew exposure during solar events."

// GROUP 2: SPE ALERT INFORMATION
* item[1].linkId = "spe-alert"
* item[1].text = "SPE Alert Information"
* item[1].type = #group

* item[1].item[0].linkId = "spe-alert.alert-time"
* item[1].item[0].text = "Alert Time (UTC)"
* item[1].item[0].type = #dateTime
* item[1].item[0].required = true

* item[1].item[1].linkId = "spe-alert.alert-source"
* item[1].item[1].text = "Alert Source"
* item[1].item[1].type = #choice
* item[1].item[1].answerOption[0].valueString = "NOAA Space Weather Prediction Center"
* item[1].item[1].answerOption[1].valueString = "NASA SRAG Real-time"
* item[1].item[1].answerOption[2].valueString = "Partner Agency"

* item[1].item[2].linkId = "spe-alert.severity"
* item[1].item[2].text = "Event Severity"
* item[1].item[2].type = #choice
* item[1].item[2].required = true
* item[1].item[2].answerOption[0].valueString = "S1 - Minor"
* item[1].item[2].answerOption[1].valueString = "S2 - Moderate"
* item[1].item[2].answerOption[2].valueString = "S3 - Strong"
* item[1].item[2].answerOption[3].valueString = "S4 - Severe"
* item[1].item[2].answerOption[4].valueString = "S5 - Extreme"

* item[1].item[3].linkId = "spe-alert.predicted-duration"
* item[1].item[3].text = "Predicted Event Duration (hours)"
* item[1].item[3].type = #integer

* item[1].item[4].linkId = "spe-alert.predicted-peak-flux"
* item[1].item[4].text = "Predicted Peak Flux (pfu)"
* item[1].item[4].type = #decimal

// GROUP 3: CREW PROTECTIVE ACTIONS
* item[2].linkId = "protective-actions"
* item[2].text = "Crew Protective Actions"
* item[2].type = #group

* item[2].item[0].linkId = "protective-actions.notification-time"
* item[2].item[0].text = "Crew Notification Time (UTC)"
* item[2].item[0].type = #dateTime

* item[2].item[1].linkId = "protective-actions.shelter-activated"
* item[2].item[1].text = "Radiation Shelter Activated"
* item[2].item[1].type = #boolean
* item[2].item[1].required = true

* item[2].item[2].linkId = "protective-actions.shelter-entry-time"
* item[2].item[2].text = "Shelter Entry Time (UTC)"
* item[2].item[2].type = #dateTime
* item[2].item[2].enableWhen.question = "protective-actions.shelter-activated"
* item[2].item[2].enableWhen.operator = #=
* item[2].item[2].enableWhen.answerBoolean = true

* item[2].item[3].linkId = "protective-actions.shelter-location"
* item[2].item[3].text = "Shelter Location"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueString = "Service Module"
* item[2].item[3].answerOption[1].valueString = "Node 1 (Unity)"
* item[2].item[3].answerOption[2].valueString = "Sleep Station"
* item[2].item[3].answerOption[3].valueString = "Other optimized location"

* item[2].item[4].linkId = "protective-actions.eva-eva-impact"
* item[2].item[4].text = "EVA in Progress"
* item[2].item[4].type = #boolean

* item[2].item[5].linkId = "protective-actions.eva-terminated"
* item[2].item[5].text = "EVA Terminated Early"
* item[2].item[5].type = #boolean
* item[2].item[5].enableWhen.question = "protective-actions.eva-eva-impact"
* item[2].item[5].enableWhen.operator = #=
* item[2].item[5].enableWhen.answerBoolean = true

// GROUP 4: EXPOSURE TRACKING
* item[3].linkId = "exposure-tracking"
* item[3].text = "Exposure Tracking During Event"
* item[3].type = #group

* item[3].item[0].linkId = "exposure-tracking.dosimeter-readings"
* item[3].item[0].text = "Active Dosimeter Readings Available"
* item[3].item[0].type = #boolean

* item[3].item[1].linkId = "exposure-tracking.pre-event-dose-rate"
* item[3].item[1].text = "Pre-Event Dose Rate (mSv/hr)"
* item[3].item[1].type = #decimal

* item[3].item[2].linkId = "exposure-tracking.peak-dose-rate"
* item[3].item[2].text = "Peak Dose Rate During Event (mSv/hr)"
* item[3].item[2].type = #decimal
* item[3].item[2].code = $loinc#73536-5 "Radiation dose"

* item[3].item[3].linkId = "exposure-tracking.total-event-dose"
* item[3].item[3].text = "Total Event Dose (mSv)"
* item[3].item[3].type = #decimal

* item[3].item[4].linkId = "exposure-tracking.dose-within-limits"
* item[3].item[4].text = "Dose Within Permissible Limits"
* item[3].item[4].type = #boolean
* item[3].item[4].required = true

// GROUP 5: EVENT CONCLUSION
* item[4].linkId = "event-conclusion"
* item[4].text = "Event Conclusion"
* item[4].type = #group

* item[4].item[0].linkId = "event-conclusion.all-clear-time"
* item[4].item[0].text = "All Clear Time (UTC)"
* item[4].item[0].type = #dateTime

* item[4].item[1].linkId = "event-conclusion.shelter-exit-time"
* item[4].item[1].text = "Shelter Exit Time (UTC)"
* item[4].item[1].type = #dateTime

* item[4].item[2].linkId = "event-conclusion.total-shelter-duration"
* item[4].item[2].text = "Total Time in Shelter (hours)"
* item[4].item[2].type = #decimal

* item[4].item[3].linkId = "event-conclusion.crew-health-status"
* item[4].item[3].text = "Crew Health Status Post-Event"
* item[4].item[3].type = #choice
* item[4].item[3].answerOption[0].valueString = "No symptoms reported"
* item[4].item[3].answerOption[1].valueString = "Minor symptoms - monitoring"
* item[4].item[3].answerOption[2].valueString = "Medical evaluation required"

* item[4].item[4].linkId = "event-conclusion.notes"
* item[4].item[4].text = "Event Notes"
* item[4].item[4].type = #text

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"
* item[5].item[0].initial.valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"


// ============================================================================
// MR093L Radiation Contingency Questionnaire
// ============================================================================
// Source: MR093L Radiation Contingency
// Purpose: Document radiation contingency events and response
// ============================================================================

Instance: MR093LRadiationContingencyQuestionnaire
InstanceOf: Questionnaire
Title: "MR093L Radiation Contingency"
Description: "NASA Medical Requirements Integration Document for radiation contingency events. Documents unexpected radiation events, crew response, and medical assessment."
Usage: #definition

* url = "https://mitre.org/fhir/space-health/Questionnaire/mr093l-radiation-contingency"
* version = "1.0.0"
* name = "MR093LRadiationContingency"
* status = #active
* date = "2017-06-05"
* publisher = "NASA Space Radiation Analysis Group"
* contact.name = "Space Radiation Analysis Group"

* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Document radiation contingency events, crew protective response, exposure assessment, and medical evaluation."
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
* item[0].item[0].initial.valueString = "MR093L Radiation Contingency"

* item[0].item[1].linkId = "overview.sponsor"
* item[0].item[1].text = "Sponsor"
* item[0].item[1].type = #choice
* item[0].item[1].required = true
* item[0].item[1].readOnly = true
* item[0].item[1].initial.valueCoding = $nasa-sponsor#srag "Space Radiation Analysis Group"
* item[0].item[1].answerOption[0].valueCoding = $nasa-sponsor#srag "Space Radiation Analysis Group"

* item[0].item[2].linkId = "overview.discipline"
* item[0].item[2].text = "Discipline"
* item[0].item[2].type = #choice
* item[0].item[2].required = true
* item[0].item[2].readOnly = true
* item[0].item[2].initial.valueCoding = $nasa-discipline#radiation "Radiation Health"
* item[0].item[2].answerOption[0].valueCoding = $nasa-discipline#radiation "Radiation Health"

* item[0].item[3].linkId = "overview.purpose"
* item[0].item[3].text = "Purpose/Objectives"
* item[0].item[3].type = #text
* item[0].item[3].initial.valueString = "Document radiation contingencies, crew response, and medical assessment."

// GROUP 2: CONTINGENCY EVENT
* item[1].linkId = "contingency-event"
* item[1].text = "Contingency Event Details"
* item[1].type = #group

* item[1].item[0].linkId = "contingency-event.datetime"
* item[1].item[0].text = "Event Date/Time (UTC)"
* item[1].item[0].type = #dateTime
* item[1].item[0].required = true

* item[1].item[1].linkId = "contingency-event.type"
* item[1].item[1].text = "Contingency Type"
* item[1].item[1].type = #choice
* item[1].item[1].required = true
* item[1].item[1].answerOption[0].valueString = "Equipment malfunction - elevated readings"
* item[1].item[1].answerOption[1].valueString = "Shielding breach/damage"
* item[1].item[1].answerOption[2].valueString = "Unexpected exposure during EVA"
* item[1].item[1].answerOption[3].valueString = "Dosimeter alarm"
* item[1].item[1].answerOption[4].valueString = "Radioactive source incident"
* item[1].item[1].answerOption[5].valueString = "Other"

* item[1].item[2].linkId = "contingency-event.description"
* item[1].item[2].text = "Event Description"
* item[1].item[2].type = #text
* item[1].item[2].required = true

* item[1].item[3].linkId = "contingency-event.crew-affected"
* item[1].item[3].text = "Number of Crew Affected"
* item[1].item[3].type = #integer

* item[1].item[4].linkId = "contingency-event.location"
* item[1].item[4].text = "Location of Event"
* item[1].item[4].type = #string

// GROUP 3: EXPOSURE ASSESSMENT
* item[2].linkId = "exposure-assessment"
* item[2].text = "Exposure Assessment"
* item[2].type = #group

* item[2].item[0].linkId = "exposure-assessment.estimated-dose"
* item[2].item[0].text = "Estimated Additional Dose (mSv)"
* item[2].item[0].type = #decimal
* item[2].item[0].code = $loinc#73536-5 "Radiation dose"

* item[2].item[1].linkId = "exposure-assessment.dose-type"
* item[2].item[1].text = "Exposure Type"
* item[2].item[1].type = #choice
* item[2].item[1].answerOption[0].valueString = "Whole body"
* item[2].item[1].answerOption[1].valueString = "Skin/extremity"
* item[2].item[1].answerOption[2].valueString = "Eye lens"
* item[2].item[1].answerOption[3].valueString = "Mixed/uncertain"

* item[2].item[2].linkId = "exposure-assessment.exposure-duration"
* item[2].item[2].text = "Exposure Duration (minutes)"
* item[2].item[2].type = #integer

* item[2].item[3].linkId = "exposure-assessment.limits-exceeded"
* item[2].item[3].text = "Any Limits Exceeded"
* item[2].item[3].type = #boolean
* item[2].item[3].required = true

* item[2].item[4].linkId = "exposure-assessment.limits-detail"
* item[2].item[4].text = "Limits Exceeded Details"
* item[2].item[4].type = #text
* item[2].item[4].enableWhen.question = "exposure-assessment.limits-exceeded"
* item[2].item[4].enableWhen.operator = #=
* item[2].item[4].enableWhen.answerBoolean = true

// GROUP 4: MEDICAL ASSESSMENT
* item[3].linkId = "medical-assessment"
* item[3].text = "Medical Assessment"
* item[3].type = #group

* item[3].item[0].linkId = "medical-assessment.symptoms-reported"
* item[3].item[0].text = "Symptoms Reported"
* item[3].item[0].type = #boolean

* item[3].item[1].linkId = "medical-assessment.symptoms"
* item[3].item[1].text = "Symptoms"
* item[3].item[1].type = #choice
* item[3].item[1].repeats = true
* item[3].item[1].enableWhen.question = "medical-assessment.symptoms-reported"
* item[3].item[1].enableWhen.operator = #=
* item[3].item[1].enableWhen.answerBoolean = true
* item[3].item[1].answerOption[0].valueString = "Nausea"
* item[3].item[1].answerOption[1].valueString = "Fatigue"
* item[3].item[1].answerOption[2].valueString = "Skin erythema"
* item[3].item[1].answerOption[3].valueString = "Headache"
* item[3].item[1].answerOption[4].valueString = "Other"

* item[3].item[2].linkId = "medical-assessment.medical-consult"
* item[3].item[2].text = "Ground Medical Consultation"
* item[3].item[2].type = #boolean
* item[3].item[2].required = true

* item[3].item[3].linkId = "medical-assessment.consult-recommendations"
* item[3].item[3].text = "Consultation Recommendations"
* item[3].item[3].type = #text

* item[3].item[4].linkId = "medical-assessment.follow-up-required"
* item[3].item[4].text = "Follow-up Assessment Required"
* item[3].item[4].type = #boolean

// GROUP 5: CORRECTIVE ACTIONS
* item[4].linkId = "corrective-actions"
* item[4].text = "Corrective Actions"
* item[4].type = #group

* item[4].item[0].linkId = "corrective-actions.immediate"
* item[4].item[0].text = "Immediate Actions Taken"
* item[4].item[0].type = #text

* item[4].item[1].linkId = "corrective-actions.root-cause"
* item[4].item[1].text = "Root Cause (if determined)"
* item[4].item[1].type = #text

* item[4].item[2].linkId = "corrective-actions.preventive-measures"
* item[4].item[2].text = "Preventive Measures Implemented"
* item[4].item[2].type = #text

* item[4].item[3].linkId = "corrective-actions.report-filed"
* item[4].item[3].text = "Incident Report Filed"
* item[4].item[3].type = #boolean
* item[4].item[3].required = true

// GROUP 6: DATA DELIVERY
* item[5].linkId = "data-delivery"
* item[5].text = "Data Delivery"
* item[5].type = #group

* item[5].item[0].linkId = "data-delivery.archive"
* item[5].item[0].text = "Data Archive System"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"
* item[5].item[0].initial.valueCoding = $nasa-archive#areas "Astronaut Radiation Exposure Assessment System"
