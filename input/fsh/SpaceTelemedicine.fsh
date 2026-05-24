// Space Telemedicine Profiles
// WP16: ISRO-SCTIMST MoU (2025-2026); ISS telemedicine operations

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: TelemedicineModalityCS
Id: telemedicine-modality-cs
Title: "Telemedicine Modality Code System"
Description: "Telemedicine modalities for spaceflight medical operations"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #realtime-video "Real-time Video" "Synchronous video consultation between crew and ground"
* #store-forward "Store-and-Forward" "Asynchronous transmission of clinical data and images for later review"
* #asynchronous-text "Asynchronous Text" "Text-based clinical communication with time delay"
* #remote-monitoring "Remote Monitoring" "Continuous remote physiological monitoring from ground"
* #ai-assisted-triage "AI-Assisted Triage" "Autonomous or semi-autonomous AI-based clinical triage"
* #remote-guided-procedure "Remote-Guided Procedure" "Procedure performed by crew with real-time or near-real-time guidance from ground"

CodeSystem: TelemedicineEquipmentCS
Id: telemedicine-equipment-cs
Title: "Telemedicine Equipment Code System"
Description: "Medical equipment used for telemedicine in spaceflight"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #video-conferencing "Video Conferencing System" "Audio-video communication system for medical consultations"
* #remote-ultrasound "Remote Ultrasound" "Ultrasound device with remote guidance capability"
* #digital-stethoscope "Digital Stethoscope" "Electronic stethoscope with signal transmission capability"
* #dermatoscope "Dermatoscope" "Digital dermatoscope for skin lesion assessment"
* #portable-xray "Portable X-ray" "Portable radiography device for remote imaging"
* #ecg-transmitter "ECG Transmitter" "Electrocardiogram device with data transmission capability"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: TelemedicineModalityVS
Id: telemedicine-modality-vs
Title: "Telemedicine Modality Value Set"
Description: "Telemedicine modalities"
* ^experimental = false
* ^status = #active
* include codes from system TelemedicineModalityCS

ValueSet: TelemedicineEquipmentVS
Id: telemedicine-equipment-vs
Title: "Telemedicine Equipment Value Set"
Description: "Telemedicine equipment types"
* ^experimental = false
* ^status = #active
* include codes from system TelemedicineEquipmentCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: CommunicationLatency
Id: communication-latency
Title: "Communication Latency"
Description: "One-way signal latency for telemedicine encounters, complementing the Mars-specific CommunicationDelay extension with general-purpose latency tracking"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* ^context[1].type = #element
* ^context[1].expression = "CommunicationRequest"
* ^context[2].type = #element
* ^context[2].expression = "ServiceRequest"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #s
* valueQuantity ^short = "One-way communication latency in seconds"

// =====================================================
// PROFILES
// =====================================================

Profile: TelemedicineEncounter
Parent: Encounter
Id: telemedicine-encounter
Title: "Telemedicine Encounter"
Description: "Telemedicine encounter between crew and ground medical team"
* ^version = "1.0.0"
* ^status = #active

* status MS
* class MS

* type 0..* MS
* type from TelemedicineModalityVS (extensible)
* type ^short = "Telemedicine modality used"

* subject 1..1 MS
* subject only Reference(Astronaut)

* period 0..1 MS
* period ^short = "Encounter duration"

* participant 0..* MS
* participant.individual MS
* participant.individual ^short = "CMO (crew) or ground specialist"

* reasonCode 0..* MS
* reasonCode ^short = "Clinical reason for consultation"

* extension contains
    CommunicationLatency named communicationLatency 0..1 MS and
    MissionContext named missionContext 0..1 MS

Profile: TelemedicineConsultRequest
Parent: ServiceRequest
Id: telemedicine-consult-request
Title: "Telemedicine Consult Request"
Description: "Request for telemedicine consultation from crew medical officer to ground specialist"
* ^version = "1.0.0"
* ^status = #active

* status MS
* intent MS

* code 0..1 MS
* code from TelemedicineModalityVS (extensible)
* code ^short = "Requested telemedicine modality"

* subject 1..1 MS
* subject only Reference(Astronaut)

* requester 0..1 MS
* requester ^short = "Crew Medical Officer requesting consultation"

* performer 0..* MS
* performer ^short = "Ground-based specialist"

* reasonCode 0..* MS
* reasonCode ^short = "Clinical reason for consult"

* note 0..* MS
* note ^short = "Clinical details and urgency"

* extension contains
    CommunicationLatency named communicationLatency 0..1 MS and
    MissionContext named missionContext 0..1 MS

Profile: TelemedicineCommunication
Parent: CommunicationRequest
Id: telemedicine-communication
Title: "Telemedicine Communication"
Description: "Telemedicine communication request with clinical data and imaging payloads"
* ^version = "1.0.0"
* ^status = #active

* status MS

* medium 0..* MS
* medium from TelemedicineModalityVS (extensible)
* medium ^short = "Communication modality"

* subject 0..1 MS
* subject only Reference(Astronaut)

* payload 0..* MS
* payload.content[x] MS
* payload ^short = "Clinical data, images, or other attachments"

* sender 0..1 MS
* sender ^short = "Crew member or ground team sending data"

* recipient 0..* MS
* recipient ^short = "Receiving party (ground specialist or crew)"

* extension contains
    MissionContext named missionContext 0..1 MS

Profile: TelemedicineDevice
Parent: Device
Id: telemedicine-device
Title: "Telemedicine Device"
Description: "Medical device used for telemedicine in spaceflight operations"
* ^version = "1.0.0"
* ^status = #active

* type 1..1 MS
* type from TelemedicineEquipmentVS (extensible)
* type ^short = "Type of telemedicine equipment"

* status MS

* patient 0..1 MS
* patient only Reference(Astronaut)

* manufacturer 0..1 MS
* modelNumber 0..1 MS

* deviceName 0..* MS

* extension contains
    MissionContext named missionContext 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: Telemedicine-StoreForward-001
InstanceOf: TelemedicineEncounter
Title: "Store-and-Forward Telemedicine Encounter"
Description: "Store-and-forward dermatology consultation from ISS to ground"
Usage: #example

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"
* type = TelemedicineModalityCS#store-forward "Store-and-Forward"
* subject = Reference(Patient/ExampleAstronaut)
* period.start = "2028-05-10T09:00:00Z"
* period.end = "2028-05-10T09:15:00Z"
* reasonCode = $sct#95320005 "Skin disorder"
* extension[communicationLatency].valueQuantity.value = 1.3
* extension[communicationLatency].valueQuantity.unit = "s"
* extension[communicationLatency].valueQuantity.system = $ucum
* extension[communicationLatency].valueQuantity.code = #s

Instance: Telemedicine-POCUS-Request-001
InstanceOf: TelemedicineConsultRequest
Title: "Remote-Guided POCUS Request"
Description: "Request for remote-guided point-of-care ultrasound from ISS CMO to ground radiologist"
Usage: #example

* status = #active
* intent = #order
* code = TelemedicineModalityCS#remote-guided-procedure "Remote-Guided Procedure"
* subject = Reference(Patient/ExampleAstronaut)
* reasonCode = $sct#21522001 "Abdominal pain"
* note.text = "Crew member reports acute RLQ pain x 6 hours. Request remote-guided abdominal POCUS."

Instance: Telemedicine-LunarTerminal-001
InstanceOf: TelemedicineDevice
Title: "Lunar Telemedicine Terminal"
Description: "Integrated telemedicine terminal for Artemis lunar surface operations"
Usage: #example

* type = TelemedicineEquipmentCS#video-conferencing "Video Conferencing System"
* status = #active
* deviceName.name = "Artemis Surface Medical Terminal #ASMT-001"
* deviceName.type = #user-friendly-name
* manufacturer = "NASA/JSC Medical Operations"
* modelNumber = "ASMT-v2"
