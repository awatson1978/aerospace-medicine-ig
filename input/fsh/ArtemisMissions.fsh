// Artemis Missions CodeSystem
// Enumerates Artemis program missions I-V with properties

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEM
// =====================================================

CodeSystem: ArtemisMissionCS
Id: artemis-mission-cs
Title: "Artemis Missions"
Description: "Historical and planned Artemis program missions with target destinations, launch dates, and status"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Mission status property
* ^property[0].code = #status
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#status"
* ^property[=].description = "Mission status (completed, in-progress, planned)"
* ^property[=].type = #code

// Target destination property
* ^property[+].code = #target
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#target"
* ^property[=].description = "Target destination (orbit or landing)"
* ^property[=].type = #string

// Launch date property
* ^property[+].code = #launchDate
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-mission-cs#launchDate"
* ^property[=].description = "Launch date of mission (actual or planned)"
* ^property[=].type = #dateTime

// Mission concepts
* #ARTEMIS-I "Artemis I"
  * ^definition = "Uncrewed test flight of Orion and SLS around the Moon. Launched Nov 16, 2022. Status: completed. Target: Lunar orbit and return."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: completed | Target: Lunar orbit and return (uncrewed test) | Launch: 2022-11-16"
  * ^property[0].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar orbit and return (uncrewed test)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2022-11-16T06:47:00Z"

* #ARTEMIS-II "Artemis II"
  * ^definition = "First crewed lunar flyby mission of Artemis program. Planned ~2026. Status: planned. Target: Lunar flyby (crewed)."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Target: Lunar flyby (crewed) | Launch: ~2026"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar flyby (crewed)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2026-09-01T00:00:00Z"

* #ARTEMIS-III "Artemis III"
  * ^definition = "First crewed lunar landing of Artemis program at south pole. Planned ~2027. Status: planned. Target: Lunar south pole landing."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Target: Lunar south pole landing | Launch: ~2027"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar south pole landing"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2027-09-01T00:00:00Z"

* #ARTEMIS-IV "Artemis IV"
  * ^definition = "Lunar Gateway assembly mission with landing. Planned ~2028. Status: planned. Target: Gateway assembly + landing."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Target: Lunar Gateway assembly + landing | Launch: ~2028"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar Gateway assembly + landing"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2028-09-01T00:00:00Z"

* #ARTEMIS-V "Artemis V"
  * ^definition = "Lunar landing with new lander and Lunar Terrain Vehicle. Planned ~2030. Status: planned. Target: Lunar landing (new lander, LTV rover)."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Target: Lunar landing (new lander, LTV rover) | Launch: ~2030"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar landing (new lander, LTV rover)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2030-01-01T00:00:00Z"

// =====================================================
// VALUE SET
// =====================================================

ValueSet: ArtemisMissionVS
Id: artemis-mission-vs
Title: "Artemis Missions"
Description: "All Artemis program missions I-V"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-mission-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisMissionCS
