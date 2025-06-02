// =====================================================
// HYPERBARIC CHAMBER PROFILE DEFINITION
// Add this to your Location.fsh file or create a separate file
// =====================================================

Profile: HyperbaricChamber
Parent: Location
Id: hyperbaric-chamber
Title: "Hyperbaric Chamber"
Description: "A medical facility equipped with a hyperbaric chamber for pressurized treatment"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "HL7 International / Aerospace Medicine"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/aerospace"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001

// Required elements
* status MS
* name 1..1 MS
* description 0..1 MS
* type 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #HUSCS // Hospital Unit - Specialized Care Services

// Extensions for hyperbaric-specific capabilities
* extension contains
    HyperbaricCapabilities named capabilities 0..* MS and
    MaximumPressure named maxPressure 0..1 MS and
    ChamberType named chamberType 0..1 MS and
    OxygenCapability named oxygenCapability 0..1 MS

// Physical type constraining to facility
* physicalType 1..1 MS
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding.code = #ro // Room

// Operational status
* operationalStatus 0..1 MS
* operationalStatus from OperationalStatusVS (extensible)

// Managing organization
* managingOrganization 0..1 MS

// Part of hierarchy (can be part of a larger medical facility)
* partOf 0..1 MS
* partOf only Reference(Location)

// =====================================================
// HYPERBARIC CHAMBER EXTENSIONS
// =====================================================

Extension: HyperbaricCapabilities
Id: hyperbaric-capabilities
Title: "Hyperbaric Chamber Capabilities"
Description: "Specific capabilities of the hyperbaric chamber"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only CodeableConcept
* valueCodeableConcept from HyperbaricCapabilitiesVS (extensible)

Extension: MaximumPressure
Id: maximum-pressure
Title: "Maximum Operating Pressure"
Description: "Maximum pressure the chamber can safely operate at"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only Quantity
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #atm

Extension: ChamberType
Id: chamber-type
Title: "Hyperbaric Chamber Type"
Description: "Type of hyperbaric chamber (monoplace, multiplace, etc.)"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only CodeableConcept
* valueCodeableConcept from HyperbaricChamberTypeVS (extensible)

Extension: OxygenCapability
Id: oxygen-capability
Title: "Oxygen Delivery Capability"
Description: "Oxygen delivery capabilities of the chamber"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only boolean

// =====================================================
// CODE SYSTEMS FOR HYPERBARIC CHAMBERS
// =====================================================

CodeSystem: HyperbaricCapabilitiesCS
Id: hyperbaric-capabilities-cs
Title: "Hyperbaric Chamber Capabilities"
Description: "Capabilities and services available in hyperbaric chambers"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-capabilities-cs"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^version = "1.0.0"
* #decompression-treatment "Decompression Sickness Treatment"
* #wound-healing "Wound Healing Therapy"
* #carbon-monoxide-treatment "Carbon Monoxide Poisoning Treatment"
* #emergency-treatment "Emergency Hyperbaric Treatment"
* #research "Research and Training"
* #multi-patient "Multi-Patient Capability"
* #critical-care "Critical Care Monitoring"

CodeSystem: HyperbaricChamberTypeCS
Id: hyperbaric-chamber-type-cs
Title: "Hyperbaric Chamber Types"
Description: "Types of hyperbaric chambers"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/hyperbaric-chamber-type-cs"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^version = "1.0.0"
* #monoplace "Monoplace Chamber"
* #multiplace "Multiplace Chamber"
* #portable "Portable Chamber"
* #research "Research Chamber"
* #veterinary "Veterinary Chamber"

// =====================================================
// VALUE SETS FOR HYPERBARIC CHAMBERS
// =====================================================

ValueSet: HyperbaricCapabilitiesVS
Id: hyperbaric-capabilities-vs
Title: "Hyperbaric Chamber Capabilities"
Description: "Capabilities available in hyperbaric chambers"
* ^experimental = false
* ^status = #active
* include codes from system HyperbaricCapabilitiesCS

ValueSet: HyperbaricChamberTypeVS
Id: hyperbaric-chamber-type-vs
Title: "Hyperbaric Chamber Types"
Description: "Types of hyperbaric chambers"
* ^experimental = false
* ^status = #active
* include codes from system HyperbaricChamberTypeCS

// =====================================================
// EXAMPLE INSTANCES
// =====================================================

Instance: ExampleHyperbaricChamber
InstanceOf: HyperbaricChamber
Title: "Example Hyperbaric Chamber"
Description: "Example hyperbaric chamber facility"
* status = #active
* name = "Hyperbaric Medicine Center - Chamber 1"
* description = "Multiplace hyperbaric chamber for decompression treatment"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #HUSCS
* type.coding.display = "Hospital Unit - Specialized Care Services"
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding.code = #ro
* physicalType.coding.display = "Room"

Instance: NASAHyperbaricFacility
InstanceOf: HyperbaricChamber
Title: "NASA Hyperbaric Facility"
Description: "NASA's hyperbaric chamber for diving medicine and space analog training"
* status = #active
* name = "NASA Hyperbaric Treatment Facility"
* description = "Hyperbaric chamber for treating decompression sickness and supporting diving operations"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-RoleCode"
* type.coding.code = #HUSCS
* physicalType.coding.system = "http://terminology.hl7.org/CodeSystem/location-physical-type"
* physicalType.coding.code = #ro