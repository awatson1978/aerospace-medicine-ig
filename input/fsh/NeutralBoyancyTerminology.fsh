// Enhanced Code Systems for Neutral Buoyancy Training and Diving Medicine
// Addresses harmonization issues with custom terminologies

// =====================================================
// NEUTRAL BUOYANCY AND DIVING MEDICINE CODE SYSTEMS
// =====================================================

CodeSystem: NeutralBuoyancyTrainingCS
Id: neutral-buoyancy-training-cs
Title: "Neutral Buoyancy Training Code System"
Description: "Specialized codes for neutral buoyancy training activities and assessments"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active

// Training Session Types
* #eva-simulation "EVA Simulation Training" "Extravehicular activity simulation in neutral buoyancy pool"
* #tool-manipulation "Tool Manipulation Training" "Training for handling tools and equipment in weightless environment"
* #emergency-egress "Emergency Egress Training" "Training for emergency escape procedures from spacecraft"
* #crew-coordination "Crew Coordination Training" "Multi-astronaut coordination and communication training"
* #equipment-familiarization "Equipment Familiarization" "Introduction and practice with space equipment"
* #habitat-construction "Habitat Construction Training" "Training for assembly of space habitats and structures"
* #scientific-sampling "Scientific Sampling Training" "Training for geological and biological sample collection"
* #maintenance-repair "Maintenance and Repair Training" "Training for spacecraft and equipment maintenance"

// Performance Metrics
* #task-completion-time "Task Completion Time" "Time required to complete assigned tasks"
* #movement-efficiency "Movement Efficiency" "Assessment of movement and navigation efficiency"
* #communication-clarity "Communication Clarity" "Quality of underwater communication systems"
* #emergency-response-time "Emergency Response Time" "Response time to emergency scenarios"
* #equipment-handling "Equipment Handling Proficiency" "Skill in manipulating tools and equipment"
* #spatial-orientation "Spatial Orientation" "Ability to maintain orientation in 3D environment"
* #stress-management "Stress Management" "Performance under stress and unexpected conditions"

// Training Environments
* #nbl-facility "Neutral Buoyancy Laboratory" "NASA's Neutral Buoyancy Laboratory facility"
* #commercial-facility "Commercial Training Facility" "Commercial neutral buoyancy training facility"
* #open-water "Open Water Training" "Training conducted in natural water environments"
* #saturation-habitat "Saturation Diving Habitat" "Underwater habitat for extended training missions"

CodeSystem: DivingMedicineCS
Id: diving-medicine-cs
Title: "Diving Medicine Code System"
Description: "Medical codes specific to diving medicine and hyperbaric treatments"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active

// Medical Examinations
* #dive-medical-exam "Diving Medical Examination" "Comprehensive medical examination for diving fitness"
* #hyperbaric-clearance "Hyperbaric Medical Clearance" "Medical clearance for hyperbaric exposures"
* #fitness-assessment "Diving Fitness Assessment" "Assessment of physical fitness for diving operations"
* #post-incident-eval "Post-Incident Medical Evaluation" "Medical evaluation following diving incident"
* #annual-recert "Annual Diving Recertification" "Annual medical recertification for diving"

// Dive Profile Elements
* #dive-profile "Dive Profile" "Complete diving profile including depth and time data"
* #maximum-depth "Maximum Depth" "Deepest point reached during dive"
* #bottom-time "Bottom Time" "Time spent at maximum depth"
* #ascent-rate "Ascent Rate" "Rate of ascent from depth"
* #surface-interval "Surface Interval" "Time spent at surface between dives"
* #decompression-time "Decompression Time" "Time required for decompression stops"
* #breathing-gas "Breathing Gas Mixture" "Composition of breathing gas used"
* #water-temperature "Water Temperature" "Temperature of water during dive"
* #visibility "Underwater Visibility" "Visual range underwater"
* #current-conditions "Current Conditions" "Water current strength and direction"

// Decompression and Pressure
* #nitrogen-loading "Nitrogen Tissue Loading" "Calculated nitrogen saturation in tissues"
* #decompression-obligation "Decompression Obligation" "Required decompression stops"
* #no-deco-limit "No-Decompression Limit" "Maximum time at depth without required stops"
* #repetitive-dive "Repetitive Dive" "Dive with residual nitrogen from previous dive"
* #surface-pressure "Surface Equivalent Pressure" "Pressure equivalent at sea level"

// Hyperbaric Treatments
* #usn-table-5 "USN Treatment Table 5" "US Navy Treatment Table 5 for mild DCS"
* #usn-table-6 "USN Treatment Table 6" "US Navy Treatment Table 6 for serious DCS"
* #usn-table-6a "USN Treatment Table 6A" "US Navy Treatment Table 6A with extensions"
* #usn-table-4 "USN Treatment Table 4" "US Navy Treatment Table 4 for arterial gas embolism"
* #hbo-wound "HBO Wound Treatment" "Hyperbaric oxygen for wound healing"
* #hbo-carbon-monoxide "HBO Carbon Monoxide" "Hyperbaric oxygen for CO poisoning"

// Safety Protocols
* #buddy-system "Buddy System Protocol" "Two-diver safety protocol"
* #surface-supplied "Surface Supplied Diving" "Diving with surface-supplied breathing gas"
* #emergency-ascent "Emergency Ascent Protocol" "Procedures for emergency surface ascent"
* #lost-diver "Lost Diver Protocol" "Search and rescue procedures for missing diver"
* #equipment-failure "Equipment Failure Protocol" "Response to life support equipment failure"

CodeSystem: UnderwaterCommunicationCS
Id: underwater-communication-cs
Title: "Underwater Communication Systems"
Description: "Communication systems and protocols for underwater training operations"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active

// Communication Systems
* #hardwire-comm "Hardwired Communication" "Physical cable-based communication system"
* #through-water-comm "Through-Water Communication" "Wireless underwater communication system"
* #surface-comm "Surface Communication" "Communication with surface support team"
* #inter-diver-comm "Inter-Diver Communication" "Communication between divers underwater"
* #full-face-mask "Full Face Mask Communication" "Communication through full face diving mask"
* #bone-conduction "Bone Conduction Communication" "Bone conduction underwater communication"
* #pneumatic-comm "Pneumatic Communication" "Air-powered communication system"

// Communication Protocols
* #standard-signals "Standard Hand Signals" "Standardized underwater hand signal protocol"
* #emergency-signals "Emergency Communication" "Emergency communication procedures"
* #abort-signal "Abort Signal" "Signal to immediately terminate dive operation"
* #assistance-request "Assistance Request" "Signal requesting help from dive partner"
* #surface-immediately "Surface Immediately" "Signal to ascend to surface without delay"
* #problem-signal "Problem Signal" "General problem indication signal"
* #ok-signal "OK Signal" "All clear/everything normal signal"

// Equipment Status
* #comm-check "Communication Check" "System communication verification"
* #signal-quality "Signal Quality Assessment" "Quality of communication signal"
* #backup-comm "Backup Communication" "Secondary communication system"
* #comm-failure "Communication Failure" "Loss of communication capability"
* #range-test "Communication Range Test" "Testing effective communication range"

CodeSystem: RegulatoryComplianceCS
Id: regulatory-compliance-cs
Title: "Diving and Space Medicine Regulatory Compliance"
Description: "Regulatory standards and compliance codes for diving and space medicine"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active

// NOAA Standards
* #noaa-diving-manual "NOAA Diving Manual" "NOAA Diving Manual standards compliance"
* #noaa-medical-standards "NOAA Medical Standards" "NOAA diving medical standards"
* #noaa-training-standards "NOAA Training Standards" "NOAA diver training standards"
* #noaa-equipment-standards "NOAA Equipment Standards" "NOAA diving equipment standards"

// OSHA Standards
* #osha-commercial-diving "OSHA Commercial Diving" "OSHA 29 CFR 1910 Subpart T compliance"
* #osha-medical-requirements "OSHA Medical Requirements" "OSHA diving medical requirements"
* #osha-safety-standards "OSHA Safety Standards" "OSHA diving safety standards"

// AAUS Standards
* #aaus-scientific-diving "AAUS Scientific Diving" "American Academy of Underwater Sciences standards"
* #aaus-training "AAUS Training Standards" "AAUS diver training certification"
* #aaus-medical "AAUS Medical Standards" "AAUS medical fitness requirements"

// NASA Standards
* #nasa-nbl-operations "NASA NBL Operations" "NASA Neutral Buoyancy Laboratory operating procedures"
* #nasa-dive-safety "NASA Dive Safety" "NASA diving safety standards"
* #nasa-medical-standards "NASA Medical Standards" "NASA astronaut medical standards"
* #nasa-training-protocols "NASA Training Protocols" "NASA astronaut training protocols"

// International Standards
* #iso-diving-services "ISO Diving Services" "ISO 24801 diving services standards"
* #en-diving-services "EN Diving Services" "European diving services standards"
* #csa-diving-operations "CSA Diving Operations" "Canadian Standards Association diving"

// Certification Levels
* #commercial-diver "Commercial Diver Certification" "Professional commercial diving certification"
* #scientific-diver "Scientific Diver Certification" "Scientific diving certification"
* #public-safety-diver "Public Safety Diver" "Public safety diving certification"
* #instructor-level "Instructor Certification" "Diving instructor certification"

CodeSystem: DecompressionProtocolCS
Id: decompression-protocol-cs
Title: "Decompression Protocols and Procedures"
Description: "Standardized decompression protocols and safety procedures"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active

// Decompression Algorithms
* #buhlmann-zh-l16c "Bühlmann ZH-L16C" "Bühlmann decompression algorithm"
* #rgbm "Reduced Gradient Bubble Model" "RGBM decompression algorithm"
* #vpm "Varying Permeability Model" "VPM decompression algorithm"
* #usn-tables "US Navy Tables" "US Navy decompression tables"
* #noaa-tables "NOAA Tables" "NOAA decompression tables"
* #padi-tables "PADI Tables" "PADI recreational decompression tables"

// Safety Stops
* #safety-stop-3min "3-Minute Safety Stop" "Standard 3-minute safety stop at 15 feet"
* #safety-stop-5min "5-Minute Safety Stop" "Extended 5-minute safety stop"
* #deep-stop "Deep Stop" "Deep safety stop at half maximum depth"
* #mandatory-deco "Mandatory Decompression" "Required decompression stop"
* #emergency-deco "Emergency Decompression" "Emergency decompression procedure"

// Ascent Procedures
* #normal-ascent "Normal Ascent" "Standard controlled ascent procedure"
* #emergency-ascent "Emergency Ascent" "Rapid emergency ascent procedure"
* #assisted-ascent "Assisted Ascent" "Ascent with assistance from dive partner"
* #controlled-emergency-ascent "Controlled Emergency Ascent" "Controlled emergency swimming ascent"
* #buoyant-ascent "Buoyant Emergency Ascent" "Emergency ascent using buoyancy control"

// Gas Switching
* #nitrox-switch "Nitrox Gas Switch" "Switching to nitrox decompression gas"
* #oxygen-switch "Oxygen Switch" "Switching to pure oxygen for decompression"
* #trimix-switch "Trimix Switch" "Switching between trimix breathing gases"
* #air-break "Air Break" "Air break during oxygen decompression"

// Environmental Factors
* #altitude-diving "Altitude Diving" "Decompression procedures for altitude diving"
* #cold-water "Cold Water Diving" "Cold water decompression considerations"
* #overhead-environment "Overhead Environment" "Decompression in overhead environments"
* #repetitive-diving "Repetitive Diving" "Multiple dive decompression planning"

// =====================================================
// ENHANCED VALUE SETS
// =====================================================

ValueSet: NeutralBuoyancyTrainingActivities
Id: neutral-buoyancy-training-activities
Title: "Neutral Buoyancy Training Activities"
Description: "Types of training activities conducted in neutral buoyancy environments"
* ^experimental = false
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #eva-simulation
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #tool-manipulation
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #emergency-egress
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #crew-coordination
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #equipment-familiarization
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #habitat-construction
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #scientific-sampling
* include codes from system NeutralBuoyancyTrainingCS where concept is-a #maintenance-repair

ValueSet: DivingMedicalExaminations
Id: diving-medical-examinations
Title: "Diving Medical Examinations"
Description: "Types of medical examinations for diving fitness"
* ^experimental = false
* include codes from system DivingMedicineCS where concept is-a #dive-medical-exam
* include codes from system DivingMedicineCS where concept is-a #hyperbaric-clearance
* include codes from system DivingMedicineCS where concept is-a #fitness-assessment
* include codes from system DivingMedicineCS where concept is-a #post-incident-eval
* include codes from system DivingMedicineCS where concept is-a #annual-recert

ValueSet: UnderwaterCommunicationSystems
Id: underwater-communication-systems
Title: "Underwater Communication Systems"
Description: "Communication systems used in underwater training operations"
* ^experimental = false
* include codes from system UnderwaterCommunicationCS where concept is-a #hardwire-comm
* include codes from system UnderwaterCommunicationCS where concept is-a #through-water-comm
* include codes from system UnderwaterCommunicationCS where concept is-a #surface-comm
* include codes from system UnderwaterCommunicationCS where concept is-a #inter-diver-comm
* include codes from system UnderwaterCommunicationCS where concept is-a #full-face-mask
* include codes from system UnderwaterCommunicationCS where concept is-a #bone-conduction
* include codes from system UnderwaterCommunicationCS where concept is-a #pneumatic-comm

ValueSet: RegulatoryStandards
Id: regulatory-standards
Title: "Regulatory Standards for Diving and Space Medicine"
Description: "Regulatory standards and compliance requirements"
* ^experimental = false
* include codes from system RegulatoryComplianceCS
* include $sct#79492003 "Diving medical examination"
* include $sct#182813001 "Training activity"

ValueSet: DecompressionProcedures
Id: decompression-procedures
Title: "Decompression Procedures"
Description: "Standardized decompression procedures and protocols"
* ^experimental = false
* include codes from system DecompressionProtocolCS
* include $sct#44016006 "Decompression sickness"
* include $sct#182813001 "Training activity"