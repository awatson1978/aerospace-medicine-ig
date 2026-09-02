// Artemis Supporting CodeSystems and ValueSets
// Terminology used by the Artemis profiles and examples that is not part of the
// radiation tracking module: shielding conditions, location types, and the
// observation/component codes used by ArtemisRadiationExposure.
//
// Note: the former unified ArtemisDevicesCS (artemis-devices-cs) was merged into
// ArtemisCertifiedDevicesCS and ArtemisPrototypeDevicesCS (see ArtemisDevices.fsh).

// =====================================================
// SHIELDING CONDITION
// =====================================================

CodeSystem: ShieldingConditionCS
Id: shielding-condition-cs
Title: "Shielding Condition"
Description: "Qualitative radiation shielding condition of the crew at the time of a radiation exposure measurement"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 5
* #unshielded "Unshielded" "No structural or suit shielding beyond the ambient environment (e.g., open-space exposure)"
* #minimal-shielding "Minimal Shielding" "Suit fabric or thin structure only, roughly below 1 g/cm2 areal density (e.g., lunar surface EVA)"
* #nominal-shielding "Nominal Shielding" "Nominal vehicle or habitat structure, roughly 5-20 g/cm2 areal density (e.g., Orion crew module, Gateway HALO)"
* #enhanced-shielding "Enhanced Shielding" "Augmented shielding such as water walls, polyethylene, or regolith cover"
* #storm-shelter "Storm Shelter" "Crew located in a dedicated solar particle event storm shelter configuration"

ValueSet: ShieldingConditionVS
Id: shielding-condition-vs
Title: "Shielding Condition"
Description: "Shielding conditions for radiation exposure observations"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system ShieldingConditionCS

// =====================================================
// LOCATION TYPE
// =====================================================

CodeSystem: LocationTypeCS
Id: location-type-cs
Title: "Aerospace Location Type"
Description: "Types of locations used in lunar and planetary mission records (landing sites, orbital stations, surface habitats, outposts, analog facilities)"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 5
* #landing-site "Landing Site" "Surface landing site or landing region on a planetary body"
* #orbital-station "Orbital Station" "Crewed station or module in orbit (e.g., Lunar Gateway in NRHO)"
* #surface-habitat "Surface Habitat" "Pressurized surface habitat providing living quarters and life support"
* #surface-outpost "Surface Outpost" "Multi-element surface base such as Artemis Base Camp"
* #analog-facility "Analog Facility" "Terrestrial analog facility used for mission simulation and training"

ValueSet: LocationTypeVS
Id: location-type-vs
Title: "Aerospace Location Type"
Description: "Location types for lunar and planetary mission locations"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system LocationTypeCS

// =====================================================
// ARTEMIS RADIATION MEASURES
// =====================================================

CodeSystem: ArtemisRadiationMeasureCS
Id: artemis-radiation-measure-cs
Title: "Artemis Radiation Measures"
Description: "Observation and component codes used by the ArtemisRadiationExposure profile: dose measures and the contextual components (radiation source, shielding condition, tissue type). Radiation source values come from SpaceRadiationTypeCS."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 5
* #cumulative-dose "Cumulative Radiation Dose" "Accumulated effective dose over a mission phase or period"
* #dose-rate "Radiation Dose Rate" "Instantaneous or average dose rate during a measurement window"
* #radiation-source "Radiation Source" "Component identifying the dominant radiation source (GCR, SPE, trapped, secondary)"
* #shielding-condition "Shielding Condition" "Component identifying the shielding condition during the exposure"
* #tissue-type "Tissue Type" "Component identifying the tissue or organ for which the dose is reported"

ValueSet: ArtemisRadiationMeasureVS
Id: artemis-radiation-measure-vs
Title: "Artemis Radiation Measures"
Description: "Dose measure codes for ArtemisRadiationExposure.code"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include ArtemisRadiationMeasureCS#cumulative-dose
* include ArtemisRadiationMeasureCS#dose-rate
