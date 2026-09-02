// Underwater Training and Decompression Medicine Profiles
// This file defines FHIR profiles for underwater training environments 
// that serve as space analogs, including neutral buoyancy facilities, 
// SCUBA operations, and hyperbaric medicine

Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// NEUTRAL BUOYANCY TRAINING PROFILES
// =====================================================

Profile: NeutralBuoyancySession
Parent: Procedure
Id: neutral-buoyancy-session
Title: "Neutral Buoyancy Training Session"
Description: "Training session in a neutral buoyancy facility for EVA simulation, including communication systems, safety protocols, regulatory compliance and environmental conditions"

* status MS
* code MS
* code from NeutralBuoyancyTrainingActivities (extensible)
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(NeutralBuoyancyFacility)
* complication 0..*
* followUp 0..*
* bodySite 0..0
* report 0..*

* extension contains
    SessionDuration named sessionDuration 0..1 MS and
    MaximumDepth named maximumDepth 0..1 MS and
    TrainingObjectives named trainingObjectives 0..* MS and
    TaskCompletionMetrics named taskMetrics 0..* MS and
    CommunicationSystems named commSystems 0..* MS and
    SafetyProtocols named safetyProtocols 0..* MS and
    RegulatoryCompliance named compliance 0..* MS and
    EnvironmentalConditions named environmental 0..1 MS

Extension: SessionDuration
Id: session-duration
Title: "Training Session Duration"
Description: "Duration of the neutral buoyancy training session"
Context: Procedure
* value[x] only Duration

Extension: MaximumDepth
Id: maximum-depth
Title: "Maximum Training Depth"
Description: "Maximum depth reached during training session"
Context: Procedure
* value[x] only Quantity
* valueQuantity.unit = "m"

Extension: TrainingObjectives
Id: training-objectives
Title: "Training Session Objectives"
Description: "Specific training objectives for the session"
Context: Procedure
* value[x] only string

Extension: TaskCompletionMetrics
Id: task-completion-metrics
Title: "Task Completion Metrics"
Description: "Performance metrics for tasks completed during training"
Context: Procedure
* value[x] only string

// =====================================================
// UNDERWATER EVA SIMULATION PROFILE
// =====================================================

Profile: UnderwaterEVASimulation
Parent: NeutralBuoyancySession
Id: underwater-eva-simulation
Title: "Underwater EVA Simulation"
Description: "Extravehicular activity simulation conducted underwater"

* extension contains
    SuitConfiguration named suitConfig 0..1 MS and
    ToolUsageAssessment named toolUsage 0..* MS and
    CrewCoordination named crewCoord 0..1 MS and
    UnderwaterEmergencyResponseExt named emergencyResp 0..1 MS

Extension: SuitConfiguration
Id: suit-configuration
Title: "Space Suit Configuration"
Description: "Configuration of space suit simulator used in training"
Context: Procedure
* value[x] only Reference(SpaceEquipment)

Extension: ToolUsageAssessment
Id: tool-usage-assessment
Title: "Tool Usage Assessment"
Description: "Assessment of tool manipulation and usage effectiveness"
Context: Procedure
* value[x] only string

Extension: CrewCoordination
Id: crew-coordination
Title: "Crew Coordination Assessment"
Description: "Assessment of crew coordination during simulation"
Context: Procedure
* value[x] only string

Extension: UnderwaterEmergencyResponseExt
Id: underwater-emergency-response-ext
Title: "Emergency Response Assessment"
Description: "Assessment of emergency response procedures"
Context: Procedure
* value[x] only string

// =====================================================
// SCUBA AND DIVING MEDICINE PROFILES
// =====================================================

Profile: DiveMedicalClearance
Parent: Procedure
Id: dive-medical-clearance
Title: "Dive Medical Clearance"
Description: "Medical clearance examination for diving operations"

* status MS
* code MS
* code = $sct#79492003 "Diving medical examination"
* subject only Reference(Astronaut)
* outcome MS
* report 0..*

* extension contains
    PulmonaryFunction named pulmonaryFunction 0..1 MS and
    CardiovascularFitness named cardiovascularFitness 0..1 MS and
    VestibularAssessment named vestibularAssessment 0..1 MS and
    DivingContraindications named contraindications 0..* MS

Extension: PulmonaryFunction
Id: pulmonary-function
Title: "Pulmonary Function Assessment"
Description: "Assessment of respiratory function for diving"
Context: Procedure
* value[x] only Reference(Observation)

Extension: CardiovascularFitness
Id: cardiovascular-fitness
Title: "Cardiovascular Fitness Assessment"
Description: "Assessment of cardiovascular fitness for diving"
Context: Procedure
* value[x] only Reference(Observation)

Extension: VestibularAssessment
Id: vestibular-assessment
Title: "Vestibular Function Assessment"
Description: "Assessment of inner ear and balance function"
Context: Procedure
* value[x] only Reference(Observation)

Extension: DivingContraindications
Id: diving-contraindications
Title: "Diving Medical Contraindications"
Description: "Medical conditions that contraindicate diving"
Context: Procedure
* value[x] only Reference(Condition)

// =====================================================
// DIVE PROFILE AND EXPOSURE TRACKING
// =====================================================

Profile: DiveProfile
Parent: Observation
Id: dive-profile
Title: "Dive Profile"
Description: "Comprehensive dive profile including depth, time, and environmental data"

* status MS
* code MS
* code = DivingMedicineCS#dive-profile "Dive Profile"
* subject only Reference(Astronaut)
* effective[x] only dateTime
* value[x] 0..0

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    maximumDepth 0..1 MS and
    bottomTime 0..1 MS and
    surfaceInterval 0..1 MS and
    ascentRate 0..1 MS and
    waterTemperature 0..1 MS and
    visibility 0..1 MS and
    nitrogenLoading 0..1 MS

* component[maximumDepth].code = DivingMedicineCS#maximum-depth "Maximum Depth"
* component[maximumDepth].value[x] only Quantity
* component[maximumDepth].valueQuantity.unit = "m"

* component[bottomTime].code = DivingMedicineCS#bottom-time "Bottom Time"
* component[bottomTime].value[x] only Quantity
* component[bottomTime].valueQuantity.unit = "min"

* component[surfaceInterval].code = DivingMedicineCS#surface-interval "Surface Interval"
* component[surfaceInterval].value[x] only Quantity
* component[surfaceInterval].valueQuantity.unit = "min"

* component[ascentRate].code = DivingMedicineCS#ascent-rate "Ascent Rate"
* component[ascentRate].value[x] only Quantity
* component[ascentRate].valueQuantity.unit = "m/min"

* component[waterTemperature].code = DivingMedicineCS#water-temperature "Water Temperature"
* component[waterTemperature].value[x] only Quantity
* component[waterTemperature].valueQuantity.unit = "Cel"

* component[visibility].code = DivingMedicineCS#visibility "Underwater Visibility"
* component[visibility].value[x] only Quantity
* component[visibility].valueQuantity.unit = "m"

* component[nitrogenLoading].code = DivingMedicineCS#nitrogen-loading "Nitrogen Tissue Loading"
* component[nitrogenLoading].value[x] only Quantity

// =====================================================
// DECOMPRESSION SICKNESS PROFILE
// =====================================================

Profile: DecompressionSickness
Parent: SpaceCondition
Id: decompression-sickness
Title: "Decompression Sickness"
Description: "Decompression sickness occurring during diving or altitude training"

* code = $sct#37347000 "Caisson disease"
* severity 1..1 MS
* onset[x] only dateTime
* recordedDate MS

* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence contains
    diveProfile 0..1 MS and
    symptoms 0..* MS and
    treatment 0..1 MS

* evidence[diveProfile].code = DivingMedicineCS#dive-profile "Dive Profile"
* evidence[diveProfile].detail only Reference(DiveProfile)

* evidence[symptoms].code = $sct#418799008 "Symptom"
* evidence[symptoms].detail only Reference(Observation)

* evidence[treatment].code = $sct#276239002 "Therapy"
* evidence[treatment].detail only Reference(Procedure)

// =====================================================
// HYPERBARIC TREATMENT PROFILE
// =====================================================

Profile: HyperbaricTreatment
Parent: Procedure
Id: hyperbaric-treatment
Title: "Hyperbaric Treatment"
Description: "Hyperbaric oxygen therapy or chamber treatment"

* status MS
* code MS
* code = $sct#18678007 "Hyperbaric oxygen therapy"
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(HyperbaricChamber)

* extension contains
    TreatmentTable named treatmentTable 0..1 MS and
    MaximumPressure named maximumPressure 0..1 MS and
    TreatmentDuration named treatmentDuration 0..1 MS and
    OxygenConcentration named oxygenConcentration 0..1 MS and
    ComplicationMonitoring named complications 0..* MS

Extension: TreatmentTable
Id: treatment-table
Title: "Hyperbaric Treatment Table"
Description: "Specific treatment table used (e.g., USN Table 6)"
Context: Procedure
* value[x] only string

Extension: TreatmentDuration
Id: treatment-duration
Title: "Treatment Duration"
Description: "Total duration of hyperbaric treatment"
Context: Procedure
* value[x] only Duration

Extension: OxygenConcentration
Id: oxygen-concentration
Title: "Oxygen Concentration"
Description: "Oxygen concentration during treatment"
Context: Procedure
* value[x] only Quantity
* valueQuantity.unit = "%"

Extension: ComplicationMonitoring
Id: complication-monitoring
Title: "Complication Monitoring"
Description: "Monitoring for treatment complications"
Context: Procedure
* value[x] only Reference(Observation)

// =====================================================
// BAROTRAUMA ASSESSMENT PROFILE
// =====================================================

Profile: BarotraumaAssessment
Parent: Observation
Id: barotrauma-assessment
Title: "Barotrauma Assessment"
Description: "Assessment of pressure-related injuries (barotrauma)"

* status MS
* code MS
* code = $sct#49532004 "Barotrauma"
* subject only Reference(Astronaut)
* effective[x] only dateTime
* value[x] only CodeableConcept

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    earBarotrauma 0..1 MS and
    pulmonaryBarotrauma 0..1 MS and
    sinusBarotrauma 0..1 MS and
    dentalBarotrauma 0..1 MS

* component[earBarotrauma].code = DivingMedicineCS#ear-barotrauma "Ear Barotrauma"
* component[earBarotrauma].value[x] only CodeableConcept

* component[pulmonaryBarotrauma].code = DivingMedicineCS#pulmonary-barotrauma "Pulmonary Barotrauma"
* component[pulmonaryBarotrauma].value[x] only CodeableConcept

* component[sinusBarotrauma].code = DivingMedicineCS#sinus-barotrauma "Sinus Barotrauma"
* component[sinusBarotrauma].value[x] only CodeableConcept

* component[dentalBarotrauma].code = DivingMedicineCS#dental-barotrauma "Dental Barotrauma"
* component[dentalBarotrauma].value[x] only CodeableConcept

// =====================================================
// DIVING EQUIPMENT PROFILE
// =====================================================

Profile: DivingEquipment
Parent: SpaceEquipment
Id: diving-equipment
Title: "Diving Equipment"
Description: "Equipment used for diving operations and underwater training"

* type MS
* status MS

Instance: ScubaDivingEquipment
InstanceOf: DivingEquipment
Title: "SCUBA Diving Equipment"
Description: "Self-contained underwater breathing apparatus"
Usage: #example
* insert SyntheticExample
* status = #active
* deviceName[0].name = "SCUBA Equipment"
* deviceName[=].type = #user-friendly-name
* type.text = "Underwater Breathing Apparatus"

Instance: NeutralBuoyancyFacilityEquipment
InstanceOf: DivingEquipment
Title: "Neutral Buoyancy Facility Equipment"
Description: "Equipment used in neutral buoyancy training facility"
Usage: #example
* insert SyntheticExample
* status = #active
* deviceName[0].name = "Neutral Buoyancy Training Equipment"
* deviceName[=].type = #user-friendly-name
* type.text = "Training Pool Equipment"

// =====================================================
// LOCATION PROFILES
// =====================================================

Profile: NeutralBuoyancyFacility
Parent: SpaceLocation
Id: neutral-buoyancy-facility
Title: "Neutral Buoyancy Facility"
Description: "Facility for underwater astronaut training"

Instance: HyperbaricChamberFacility
InstanceOf: Location
Title: "Hyperbaric Treatment Chamber"
Description: "Hyperbaric medicine treatment facility"
Usage: #example
* insert SyntheticExample
* name = "Hyperbaric Treatment Chamber"
* description = "Medical facility for hyperbaric oxygen therapy"

// =====================================================
// CONTRAINDICATIONS VALUE SETS
// =====================================================

ValueSet: DivingContraindicatedConditions
Id: diving-contraindicated-conditions-vs
Title: "Diving Medical Contraindications"
Description: "Medical conditions that contraindicate diving activities"
* ^status = #active
* ^experimental = true

* $sct#49436004 "Atrial fibrillation"
* $sct#195967001 "Asthma"
* $sct#84757009 "Epilepsy"
* $sct#230690007 "Cerebrovascular accident"
* $sct#19887002 "Claustrophobia"
* $sct#77386006 "Pregnancy"
* $sct#38341003 "Hypertensive disorder"
* $sct#73211009 "Diabetes mellitus"
* $sct#37347000 "Caisson disease"
* $sct#49532004 "Barotrauma"
* $sct#233604007 "Pneumothorax"
* $sct#128238001 "Chronic heart disease"

ValueSet: UnderwaterTrainingProcedures
Id: underwater-training-procedures-vs
Title: "Underwater Training Procedures"
Description: "Procedures and activities conducted during underwater training"
* ^status = #active
* ^experimental = true

* $sct#182813001 "Training activity"
* NeutralBuoyancyTrainingCS#eva-simulation "EVA Simulation Training"
* NeutralBuoyancyTrainingCS#tool-manipulation "Tool Manipulation Training"
* NeutralBuoyancyTrainingCS#emergency-egress "Emergency Egress Training"
* NeutralBuoyancyTrainingCS#communication-training "Communication Training"
* NeutralBuoyancyTrainingCS#crew-coordination "Crew Coordination Training"
* NeutralBuoyancyTrainingCS#equipment-familiarization "Equipment Familiarization"

// =====================================================
// INSTANCES FOR COMMON SCENARIOS
// =====================================================

Instance: ExampleNeutralBuoyancySession
InstanceOf: NeutralBuoyancySession
Title: "Example Neutral Buoyancy Training Session"
Description: "Example of a typical neutral buoyancy training session"
Usage: #example
* insert SyntheticExample
* status = #completed
* code = $sct#182813001 "Training activity"
* subject = Reference(CaptainJaneway)
* performedDateTime = "2025-06-01T09:00:00Z"
* location = Reference(NASANeutralBuoyancyLaboratory)

Instance: ExampleDiveProfile
InstanceOf: DiveProfile
Title: "Example Training Dive Profile"
Description: "Example dive profile from neutral buoyancy training"
Usage: #example
* insert SyntheticExample
* status = #final
* code = DivingMedicineCS#dive-profile "Dive Profile"
* subject = Reference(CaptainJaneway)
* effectiveDateTime = "2025-06-01T09:30:00Z"
* component[maximumDepth].code = DivingMedicineCS#maximum-depth "Maximum Depth"
* component[maximumDepth].valueQuantity = 12 'm'
* component[bottomTime].code = DivingMedicineCS#bottom-time "Bottom Time"
* component[bottomTime].valueQuantity = 180 'min'
* component[waterTemperature].code = DivingMedicineCS#water-temperature "Water Temperature"
* component[waterTemperature].valueQuantity = 26 'Cel'

Instance: ExampleDiveMedicalClearance
InstanceOf: DiveMedicalClearance
Title: "Example Dive Medical Clearance"
Description: "Example medical clearance for diving operations"
Usage: #example
* insert SyntheticExample
* status = #completed
* code = $sct#79492003 "Diving medical examination"
* subject = Reference(CaptainJaneway)
* performedDateTime = "2025-05-15T14:00:00Z"
* outcome.text = "Cleared for diving operations"