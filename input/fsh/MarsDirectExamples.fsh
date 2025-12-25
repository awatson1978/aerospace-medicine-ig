// Mars Direct Example Instances
// Concrete examples for Mars missions, locations, EVAs, devices, monitoring

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

// =====================================================
// PATIENT: Mars Crew Member Example
// =====================================================

Instance: MarsCrewMember1
InstanceOf: Patient
Title: "Mars Crew Member - Commander Chen"
Description: "Example Mars crew member (Commander Sarah Chen) with baseline health data"
Usage: #example

* identifier[0].system = "http://nasa.gov/astronaut-id"
* identifier[=].value = "AST-2029-001"
* name[0].family = "Chen"
* name[=].given[0] = "Sarah"
* name[=].prefix[0] = "CDR"
* gender = #female
* birthDate = "1990-03-15"

// =====================================================
// LOCATION: Mars Habitat at Jezero Crater
// =====================================================

Instance: MarsHabitat-Jezero
InstanceOf: Location
Title: "Mars Surface Habitat - Jezero Crater"
Description: "Pressurized habitat module at Jezero Crater landing site"
Usage: #example

* name = "Mars Direct Habitat Unit - Jezero Site"
* description = "Pressurized surface habitat with life support, medical bay, and crew quarters. Landed at Jezero Crater ancient delta region."
* status = #active
* mode = #instance

* type.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-type-cs"
* type.coding.code = #surface-habitat
* type.text = "Mars surface habitat"

* position.latitude = 18.4
* position.longitude = 77.5
* position.altitude = -2500 // meters relative to Mars datum

// =====================================================
// DEVICE: Mars ISRU Plant
// =====================================================

Instance: ISRU-Plant-Jezero-1
InstanceOf: Device
Title: "ISRU Propellant Production Plant"
Description: "In-situ resource utilization plant for CH4/O2 production from Martian atmosphere"
Usage: #example

* deviceName.name = "Mars Direct ISRU Unit #1 - Jezero"
* deviceName.type = #user-friendly-name

* type.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-devices-prototype-cs"
* type.coding.code = #isruPlant
* type.text = "ISRU Propellant Plant"

* status = #active
* manufacturer = "NASA / Commercial Partners"

// =====================================================
// OBSERVATION: Habitat Environmental Monitoring
// =====================================================

Instance: HabitatEnvironment-Sol125
InstanceOf: HabitatEnvironmentalObservation
Title: "Habitat Environmental Conditions - Sol 125"
Description: "Atmospheric monitoring inside Mars habitat on Sol 125"
Usage: #example

* status = #final
* category[environmental] = $obs-cat#environmental

* code.text = "Habitat Atmospheric Conditions"

* subject = Reference(MarsHabitat-Jezero)
* effectiveDateTime = "2041-03-15T14:30:00Z" // Sol 125 of surface operations

* component[0].code.text = "Cabin Pressure"
* component[=].valueQuantity.value = 101.3
* component[=].valueQuantity.unit = "kPa"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #kPa

* component[+].code.text = "Oxygen Percentage"
* component[=].valueQuantity.value = 21.0
* component[=].valueQuantity.unit = "%"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #%

* component[+].code.text = "Carbon Dioxide"
* component[=].valueQuantity.value = 0.04
* component[=].valueQuantity.unit = "%"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #%

* component[+].code.text = "Temperature"
* component[=].valueQuantity.value = 22.5
* component[=].valueQuantity.unit = "Cel"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #Cel

* component[+].code.text = "Relative Humidity"
* component[=].valueQuantity.value = 45.0
* component[=].valueQuantity.unit = "%"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = #%

// =====================================================
// OBSERVATION: ISRU Production Log
// =====================================================

Instance: ISRU-Production-Sol210
InstanceOf: ISRUProductionLog
Title: "ISRU Production Log - Sol 210"
Description: "Cumulative propellant production by Sol 210 (7 months operation)"
Usage: #example

* status = #final
* category[operational].coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/observation-category-aerospace"
* category[operational].coding.code = #operational

* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs"
* code.coding.code = #cumulative-propellant
* code.coding.display = "Cumulative Propellant Production"

* effectiveDateTime = "2041-06-01T12:00:00Z" // Sol 210

* valueQuantity.value = 89000
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = #kg

* device = Reference(ISRU-Plant-Jezero-1)

* component[reactorStatus].code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs"
* component[reactorStatus].code.coding.code = #reactor-status
* component[reactorStatus].valueString = "Nominal operation, 96% efficiency"

* component[powerConsumption].code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isru-metrics-cs"
* component[powerConsumption].code.coding.code = #power-consumption
* component[powerConsumption].valueQuantity.value = 25.3
* component[powerConsumption].valueQuantity.unit = "kW"
* component[powerConsumption].valueQuantity.system = $ucum
* component[powerConsumption].valueQuantity.code = #kW

* note[0].text = "Production rate steady at 450 kg/sol average. On track to reach 112 tons for Earth return vehicle by Sol 300."

// =====================================================
// PROCEDURE: Mars Surface EVA
// =====================================================

Instance: MarsEVA-Sol147
InstanceOf: MarsEVAProcedure
Title: "Mars EVA - Sol 147"
Description: "Surface EVA to collect geological samples at crater rim, duration 6.5 hours"
Usage: #example

* status = #completed

* code.text = "Mars Surface Extravehicular Activity"
* code.coding[snomedCT].system = $sct
* code.coding[snomedCT].code = #103741001
* code.coding[snomedCT].display = "Extravehicular activity (procedure)"

* subject = Reference(MarsCrewMember1)

* performedPeriod.start = "2041-04-06T08:30:00Z"
* performedPeriod.end = "2041-04-06T15:00:00Z" // 6.5 hour EVA

* location.reference = "Location/MarsHabitat-Jezero"
* location.display = "Jezero Crater rim region, 2.3 km from habitat"

* performer[0].actor = Reference(MarsCrewMember1)
* performer[0].actor.display = "CDR Sarah Chen"

* reasonCode[0].text = "Geological sample collection and crater rim survey"

* outcome.coding[0].system = $sct
* outcome.coding[=].code = #385669000
* outcome.coding[=].display = "Successful"

* extension[missionContext].valueReference = Reference(Encounter/MarsDirectMission2040)
* extension[evaNumber].valueString = "EVA-147"
* extension[communicationDelay].valueQuantity.value = 12.5
* extension[communicationDelay].valueQuantity.unit = "min"
* extension[communicationDelay].valueQuantity.system = $ucum
* extension[communicationDelay].valueQuantity.code = #min

* note[0].text = "Crew reported excellent mobility in xEMU suit. Peak heart rate 145 bpm during crater ascent. No suit anomalies. Dust contamination moderate, decontamination protocols completed post-EVA."

// =====================================================
// ENCOUNTER: Mars Direct Mission 2040
// =====================================================

Instance: MarsDirectMission2040
InstanceOf: Encounter
Title: "Mars Direct Mission 2040"
Description: "Entire Mars Direct mission encounter (launch to splashdown)"
Usage: #example

* status = #in-progress

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#FLD "field"

* subject = Reference(MarsCrewMember1)

* period.start = "2040-09-01T00:00:00Z" // Launch
// period.end not set - mission ongoing

* reasonCode[0].text = "First Mars Direct mission - 18 month surface stay with ISRU demonstration"

// =====================================================
// RISK ASSESSMENT: Radiation Exposure
// =====================================================

Instance: RadiationRisk-PostTransit
InstanceOf: MarsRadiationRiskAssessment
Title: "Radiation Risk Assessment - Post Outbound Transit"
Description: "Cancer risk assessment after 6-month outbound transit to Mars"
Usage: #example

* status = #final

* subject = Reference(MarsCrewMember1)

* code.coding.system = $sct
* code.coding.code = #225338004 // Risk assessment
* code.coding.display = "Risk assessment"

* occurrenceDateTime = "2041-03-01T00:00:00Z" // After arrival at Mars

* basis[0] = Reference(Observation/CumulativeDose-Transit)
* basis[0].display = "Cumulative GCR dose during transit: 360 mSv"

* prediction[0].outcome.coding[0].system = $sct
* prediction[=].outcome.coding[=].code = #363346000
* prediction[=].outcome.coding[=].display = "Malignant neoplastic disease"

* prediction[=].probabilityDecimal = 0.018 // 1.8% increased lifetime cancer risk from transit alone

* prediction[=].rationale = "Based on 360 mSv GCR exposure during 6-month deep space transit using BEIR VII risk model. Assumes nominal spacecraft shielding (~10 g/cm² aluminum equivalent). Total mission dose projected 750-900 mSv (transit + surface + return), conferring ~3.5-4.2% lifetime cancer risk increase."

* note[0].text = "Mitigation: Continue radiation monitoring throughout surface operations. Utilize habitat shielding (regolith berms if available). Implement storm shelter protocols for any solar particle events. Consider pharmacologic radioprotectants for return transit if cumulative dose approaches career limits."

* extension[missionContext].valueReference = Reference(Encounter/MarsDirectMission2040)

// =====================================================
// ENCOUNTER: Autonomous Emergency - Appendicitis
// =====================================================

Instance: Emergency-Appendicitis-Sol189
InstanceOf: AutonomousMedicalEncounter
Title: "Autonomous Medical Encounter - Appendicitis Sol 189"
Description: "Crew-led emergency appendectomy on Mars with 15-minute Earth communication delay"
Usage: #example

* status = #finished

* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#EMER "emergency"

* subject = Reference(Patient/MarsCrewMember2) // Different crew member

* period.start = "2041-05-18T03:00:00Z" // Symptom onset
* period.end = "2041-05-19T08:00:00Z" // Post-op stable

* reasonCode[0].coding.system = $sct
* reasonCode[=].coding.code = #85189001
* reasonCode[=].coding.display = "Acute appendicitis"

* diagnosis[0].condition.display = "Acute appendicitis, confirmed by ultrasound"
* diagnosis[=].use.coding.system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[=].use.coding.code = #AD
* diagnosis[=].use.coding.display = "Admission diagnosis"

* extension[communicationDelay].valueQuantity.value = 15.2
* extension[communicationDelay].valueQuantity.unit = "min"
* extension[communicationDelay].valueQuantity.system = $ucum
* extension[communicationDelay].valueQuantity.code = #min

* extension[missionContext].valueReference = Reference(Encounter/MarsDirectMission2040)

* hospitalization.dischargeDisposition.text = "Crew Medical Officer performed successful appendectomy with ground guidance. Patient stable post-op, full recovery expected. Demonstrates autonomous medical capability critical for Mars missions."

// =====================================================
// PLAN DEFINITION: Mars Direct Mission Timeline
// =====================================================

Instance: MarsDirectMissionPlan2040
InstanceOf: MissionTimelinePlan
Title: "Mars Direct Mission Plan 2040"
Description: "Complete mission timeline for Mars Direct architecture mission"
Usage: #example

* status = #active
* title = "Mars Direct Mission 2040 - Jezero Crater Landing"

* type.coding.system = "http://terminology.hl7.org/CodeSystem/plan-definition-type"
* type.coding.code = #workflow-definition

* description = "Mars Direct architecture mission with ERV pre-deployed, ISRU propellant production for return, crew of 4, 18-month surface operations at Jezero Crater. Mission objectives: demonstrate ISRU viability, conduct extensive geological surveys, collect samples for analysis, validate long-duration Mars surface systems."

* action[0].title = "Launch - Earth Return Vehicle (ERV)"
* action[=].description = "Uncrewed ERV launch with Sabatier reactor, nuclear power unit, hydrogen supply. Target: Mars arrival 6 months later, land at Jezero. Begin ISRU propellant production immediately."

* action[+].title = "Launch - Crew in Mars Habitat Unit"
* action[=].description = "Crew of 4 launches 26 months after ERV (once ISRU confirms propellant production). 6-month transit with artificial gravity tether."

* action[+].title = "Outbound Transit"
* action[=].description = "6-month deep space cruise. Continuous radiation monitoring, exercise countermeasures, health assessments, crew training for surface operations."

* action[+].title = "Mars Orbit Insertion and Descent"
* action[=].description = "Direct entry and landing at Jezero site near pre-positioned ERV. Habitat establishes life support upon landing."

* action[+].title = "Surface Operations - 18 Months"
* action[=].description = "Extended surface mission with ~400-500 EVAs total. Geological surveys, sample collection, ISRU monitoring, equipment maintenance, health monitoring. Weekly medical checkups, monthly radiation assessments."

* action[+].title = "Ascent and Earth Return"
* action[=].description = "Crew boards fueled ERV, launches from Mars, 6-month return transit. Total mission duration: ~30 months (900 days)."

* action[+].title = "Earth Atmospheric Entry and Recovery"
* action[=].description = "ERV capsule atmospheric entry, parachute descent, splashdown in Pacific. Crew medical evaluation and reconditioning."

* extension[missionContext].valueReference = Reference(Encounter/MarsDirectMission2040)
