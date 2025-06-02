// Enhanced Neutral Buoyancy Training and Diving Medicine Profiles
// Addresses harmonization issues and adds missing functionality

Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org
Alias: $nb-training = http://hl7.org/fhir/uv/aerospace/CodeSystem/neutral-buoyancy-training-cs
Alias: $diving-med = http://hl7.org/fhir/uv/aerospace/CodeSystem/diving-medicine-cs
Alias: $underwater-comm = http://hl7.org/fhir/uv/aerospace/CodeSystem/underwater-communication-cs
Alias: $regulatory = http://hl7.org/fhir/uv/aerospace/CodeSystem/regulatory-compliance-cs
Alias: $decompression = http://hl7.org/fhir/uv/aerospace/CodeSystem/decompression-protocol-cs

// =====================================================
// DECOMPRESSION PROTOCOLS AND REGULATORY COMPLIANCE
// =====================================================

Profile: DecompressionProtocol
Parent: Procedure
Id: decompression-protocol
Title: "Decompression Protocol"
Description: "Standardized decompression procedures for diving operations and space analog training"

* status MS
* code MS
* code from DecompressionProcedures (extensible)
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(NeutralBuoyancyFacility or HyperbaricChamber)
* outcome MS

* extension contains
    DecompressionAlgorithm named algorithm 0..1 MS and
    MaximumDepthReached named maxDepth 0..1 MS and
    TotalDecompressionTime named decoTime 0..1 MS and
    SafetyStopCompliance named safetyStops 0..* MS and
    EnvironmentalFactors named environmental 0..* MS and
    EmergencyProcedures named emergency 0..1 MS

Extension: DecompressionAlgorithm
Id: decompression-algorithm
Title: "Decompression Algorithm Used"
Description: "The specific decompression algorithm or table used"
* value[x] only CodeableConcept
* valueCodeableConcept from DecompressionProcedures (extensible)

Extension: MaximumDepthReached
Id: maximum-depth-reached
Title: "Maximum Depth Reached"
Description: "Maximum depth reached during the dive requiring decompression"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #m

Extension: TotalDecompressionTime
Id: total-decompression-time
Title: "Total Decompression Time"
Description: "Total time required for decompression including all stops"
* value[x] only Duration

Extension: SafetyStopCompliance
Id: safety-stop-compliance
Title: "Safety Stop Compliance"
Description: "Compliance with required safety stops during ascent"
* extension contains
    depth 0..1 MS and
    duration 0..1 MS and
    completed 0..1 MS
* extension[depth].value[x] only Quantity
* extension[duration].value[x] only Duration  
* extension[completed].value[x] only boolean

Extension: EnvironmentalFactors
Id: environmental-factors
Title: "Environmental Factors"
Description: "Environmental conditions affecting decompression requirements"
* value[x] only CodeableConcept
* valueCodeableConcept from DecompressionProcedures (extensible)

Extension: EmergencyProcedures
Id: emergency-procedures
Title: "Emergency Procedures"
Description: "Emergency decompression procedures if applicable"
* value[x] only Reference(Procedure)

Profile: RegulatoryComplianceAssessment
Parent: Observation
Id: regulatory-compliance-assessment
Title: "Regulatory Compliance Assessment"
Description: "Assessment of compliance with diving and space medicine regulatory standards"

* status MS
* code MS
* code from RegulatoryStandards (extensible)
* subject only Reference(Astronaut)
* effective[x] only dateTime
* value[x] only CodeableConcept

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    complianceStatus 0..1 MS and
    standardsVersion 0..1 MS and
    certificationLevel 0..1 MS and
    expirationDate 0..1 MS and
    restrictionsLimitations 0..* MS

* component[complianceStatus].code = $regulatory#compliance-status
* component[complianceStatus].value[x] only CodeableConcept

* component[standardsVersion].code = $regulatory#standards-version
* component[standardsVersion].value[x] only string

* component[certificationLevel].code = $regulatory#certification-level
* component[certificationLevel].value[x] only CodeableConcept

* component[expirationDate].code = $regulatory#expiration-date
* component[expirationDate].value[x] only dateTime

* component[restrictionsLimitations].code = $regulatory#restrictions-limitations
* component[restrictionsLimitations].value[x] only string

// =====================================================
// UNDERWATER COMMUNICATION SYSTEMS
// =====================================================

Profile: UnderwaterCommunicationSystem
Parent: SpaceEquipment
Id: underwater-communication-system
Title: "Underwater Communication System"
Description: "Communication equipment for underwater training operations"

* type MS
* type from UnderwaterCommunicationSystems (extensible)
* status MS

* property ^slicing.discriminator.type = #pattern
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property contains
    communicationRange 0..1 MS and
    signalQuality 0..1 MS and
    encryptionCapability 0..1 MS and
    batteryLife 0..1 MS and
    waterproofRating 0..1 MS and
    operatingDepth 0..1 MS

// Define property types without trying to constrain value[x] subtypes
* property[communicationRange].type = $underwater-comm#comm-range
* property[communicationRange].valueQuantity.system = $ucum
* property[communicationRange].valueQuantity.code = #m

* property[signalQuality].type = $underwater-comm#signal-quality
// Remove the problematic valueString constraint

* property[encryptionCapability].type = $underwater-comm#encryption
// Remove the problematic valueBoolean constraint

* property[batteryLife].type = $underwater-comm#battery-life
* property[batteryLife].valueQuantity.system = $ucum
* property[batteryLife].valueQuantity.code = #h

* property[waterproofRating].type = $underwater-comm#waterproof-rating
// Remove the problematic valueString constraint

* property[operatingDepth].type = $underwater-comm#operating-depth
* property[operatingDepth].valueQuantity.system = $ucum
* property[operatingDepth].valueQuantity.code = #m

Profile: CommunicationSessionAssessment
Parent: Observation
Id: communication-session-assessment
Title: "Communication Session Assessment"
Description: "Assessment of communication system performance during underwater training"

* status MS
* code MS
* code = $underwater-comm#comm-assessment "Communication Assessment"
* subject only Reference(Astronaut)
* effective[x] only dateTime
* device only Reference(UnderwaterCommunicationSystem)
* value[x] only CodeableConcept

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    signalStrength 0..1 MS and
    audioClarity 0..1 MS and
    communicationReliability 0..1 MS and
    emergencyResponseTime 0..1 MS and
    securityAssessment 0..1 MS

* component[signalStrength].code = $underwater-comm#signal-strength
* component[signalStrength].value[x] only Quantity
* component[signalStrength].valueQuantity.system = $ucum
* component[signalStrength].valueQuantity.code = #dB

* component[audioClarity].code = $underwater-comm#audio-clarity
* component[audioClarity].value[x] only CodeableConcept

* component[communicationReliability].code = $underwater-comm#comm-reliability
* component[communicationReliability].value[x] only Quantity
* component[communicationReliability].valueQuantity.system = $ucum
* component[communicationReliability].valueQuantity.code = #%

* component[emergencyResponseTime].code = $underwater-comm#emergency-response-time
* component[emergencyResponseTime].value[x] only Quantity
* component[emergencyResponseTime].valueQuantity.system = $ucum
* component[emergencyResponseTime].valueQuantity.code = #s

* component[securityAssessment].code = $underwater-comm#security-assessment
* component[securityAssessment].value[x] only CodeableConcept

// =====================================================
// ENHANCED NEUTRAL BUOYANCY TRAINING PROFILES
// =====================================================

Profile: EnhancedNeutralBuoyancySession
Parent: Procedure
Id: enhanced-neutral-buoyancy-session
Title: "Enhanced Neutral Buoyancy Training Session"
Description: "Comprehensive neutral buoyancy training session with full regulatory compliance tracking"

* status MS
* code MS
* code from NeutralBuoyancyTrainingActivities (extensible)
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(NeutralBuoyancyFacility)
* complication 0..*
* followUp 0..*
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

Extension: CommunicationSystems
Id: communication-systems
Title: "Communication Systems Used"
Description: "Communication systems and protocols used during training"
* value[x] only Reference(UnderwaterCommunicationSystem)

Extension: SafetyProtocols
Id: safety-protocols
Title: "Safety Protocols"
Description: "Safety protocols and procedures followed during training"
* value[x] only CodeableConcept
* valueCodeableConcept from RegulatoryStandards (extensible)

Extension: RegulatoryCompliance
Id: regulatory-compliance
Title: "Regulatory Compliance"
Description: "Regulatory standards compliance during training session"
* value[x] only Reference(RegulatoryComplianceAssessment)

Extension: EnvironmentalConditions
Id: environmental-conditions
Title: "Environmental Conditions"
Description: "Environmental conditions during training session"
* extension contains
    waterTemperature 0..1 and
    visibility 0..1 and
    currentStrength 0..1 and
    poolConfiguration 0..1
* extension[waterTemperature].value[x] only Quantity
* extension[visibility].value[x] only Quantity
* extension[currentStrength].value[x] only Quantity
* extension[poolConfiguration].value[x] only string

Profile: AdvancedDiveProfile
Parent: Observation
Id: advanced-dive-profile
Title: "Advanced Dive Profile"
Description: "Comprehensive dive profile with enhanced data collection and regulatory compliance"

* status MS
* code MS
* code = $diving-med#dive-profile "Dive Profile"
* subject only Reference(Astronaut)
* effective[x] only dateTime
* value[x] 0..0
* device only Reference(DivingEquipment)

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
    nitrogenLoading 0..1 MS and
    breathingGasMixture 0..1 MS and
    decompressionObligation 0..1 MS and
    emergencyProcedures 0..* MS and
    communicationLog 0..1 MS

* component[maximumDepth].code = $diving-med#maximum-depth
* component[maximumDepth].value[x] only Quantity
* component[maximumDepth].valueQuantity.system = $ucum
* component[maximumDepth].valueQuantity.code = #m

* component[bottomTime].code = $diving-med#bottom-time
* component[bottomTime].value[x] only Quantity
* component[bottomTime].valueQuantity.system = $ucum
* component[bottomTime].valueQuantity.code = #min

* component[surfaceInterval].code = $diving-med#surface-interval
* component[surfaceInterval].value[x] only Quantity
* component[surfaceInterval].valueQuantity.system = $ucum
* component[surfaceInterval].valueQuantity.code = #min

* component[ascentRate].code = $diving-med#ascent-rate
* component[ascentRate].value[x] only Quantity
* component[ascentRate].valueQuantity.system = $ucum
* component[ascentRate].valueQuantity.code = #m/min

* component[waterTemperature].code = $diving-med#water-temperature
* component[waterTemperature].value[x] only Quantity
* component[waterTemperature].valueQuantity.system = $ucum
* component[waterTemperature].valueQuantity.code = #Cel

* component[visibility].code = $diving-med#visibility
* component[visibility].value[x] only Quantity
* component[visibility].valueQuantity.system = $ucum
* component[visibility].valueQuantity.code = #m

* component[nitrogenLoading].code = $diving-med#nitrogen-loading
* component[nitrogenLoading].value[x] only Quantity
* component[nitrogenLoading].valueQuantity.system = $ucum
* component[nitrogenLoading].valueQuantity.code = #%

* component[breathingGasMixture].code = $diving-med#breathing-gas
* component[breathingGasMixture].value[x] only CodeableConcept

* component[decompressionObligation].code = $diving-med#decompression-obligation
* component[decompressionObligation].value[x] only boolean

* component[emergencyProcedures].code = $diving-med#emergency-procedures
* component[emergencyProcedures].value[x] only CodeableConcept

* component[communicationLog].code = $underwater-comm#communication-log
* component[communicationLog].value[x] only string

// =====================================================
// EMERGENCY RESPONSE AND SAFETY PROFILES
// =====================================================

Profile: UnderwaterEmergencyResponse
Parent: Procedure
Id: underwater-emergency-response
Title: "Underwater Emergency Response"
Description: "Emergency response procedures during underwater training operations"

* status MS
* code MS
* code from UnderwaterTrainingProcedures (extensible)
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(NeutralBuoyancyFacility)
* reasonCode MS

* extension contains
    EmergencyType named emergencyType 0..1 MS and
    ResponseTime named responseTime 0..1 MS and
    RescueProcedures named rescue 0..* MS and
    MedicalIntervention named medical 0..1 MS and
    LessonsLearned named lessons 0..1 MS

Extension: EmergencyType
Id: emergency-type
Title: "Type of Emergency"
Description: "Classification of the emergency situation"
* value[x] only CodeableConcept

Extension: ResponseTime
Id: response-time
Title: "Emergency Response Time"
Description: "Time from emergency recognition to response initiation"
* value[x] only Duration

Extension: RescueProcedures
Id: rescue-procedures
Title: "Rescue Procedures Used"
Description: "Specific rescue procedures and techniques employed"
* value[x] only CodeableConcept

Extension: MedicalIntervention
Id: medical-intervention
Title: "Medical Intervention"
Description: "Medical interventions provided during emergency response"
* value[x] only Reference(Procedure)

Extension: LessonsLearned
Id: lessons-learned
Title: "Lessons Learned"
Description: "Lessons learned and recommendations from emergency response"
* value[x] only string

// =====================================================
// HYPERBARIC MEDICINE ENHANCEMENTS
// =====================================================

Profile: EnhancedHyperbaricTreatment
Parent: Procedure
Id: enhanced-hyperbaric-treatment
Title: "Enhanced Hyperbaric Treatment"
Description: "Comprehensive hyperbaric oxygen therapy with full monitoring and safety protocols"

* status MS
* code MS
* code from DecompressionProcedures (extensible)
* subject only Reference(Astronaut)
* performedDateTime MS
* location only Reference(HyperbaricChamber)

* extension contains
    TreatmentTable named treatmentTable 0..1 MS and
    MaximumPressure named maximumPressure 0..1 MS and
    TreatmentDuration named treatmentDuration 0..1 MS and
    OxygenConcentration named oxygenConcentration 0..1 MS and
    ComplicationMonitoring named complications 0..* MS and
    SafetyProtocols named safetyProtocols 0..* MS and
    PatientMonitoring named monitoring 0..* MS and
    ChamberConfiguration named chamberConfig 0..1 MS

Extension: ChamberConfiguration
Id: chamber-configuration
Title: "Hyperbaric Chamber Configuration"
Description: "Configuration and setup of the hyperbaric chamber"
* value[x] only Reference(Device)

Extension: PatientMonitoring
Id: patient-monitoring
Title: "Patient Monitoring"
Description: "Continuous patient monitoring during hyperbaric treatment"
* value[x] only Reference(Observation)