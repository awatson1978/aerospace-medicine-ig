// Artemis Missions CodeSystem
// Enumerates Artemis program missions I-XXX with properties

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
  * ^definition = "Crewed low-Earth orbit test flight preparing systems for future lunar landings. Planned ~2027. Status: planned. Target: LEO test flight (crewed)."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Target: LEO test flight (crewed) | Launch: ~2027"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned
  * ^property[+].code = #target
  * ^property[=].valueString = "LEO test flight (crewed)"
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

* #ARTEMIS-VI "Artemis VI"
  * ^definition = "Placeholder entry for Artemis VI mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-VII "Artemis VII"
  * ^definition = "Placeholder entry for Artemis VII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-VIII "Artemis VIII"
  * ^definition = "Placeholder entry for Artemis VIII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-IX "Artemis IX"
  * ^definition = "Placeholder entry for Artemis IX mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-X "Artemis X"
  * ^definition = "Placeholder entry for Artemis X mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XI "Artemis XI"
  * ^definition = "Placeholder entry for Artemis XI mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XII "Artemis XII"
  * ^definition = "Placeholder entry for Artemis XII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XIII "Artemis XIII"
  * ^definition = "Placeholder entry for Artemis XIII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XIV "Artemis XIV"
  * ^definition = "Placeholder entry for Artemis XIV mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XV "Artemis XV"
  * ^definition = "Placeholder entry for Artemis XV mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XVI "Artemis XVI"
  * ^definition = "Placeholder entry for Artemis XVI mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XVII "Artemis XVII"
  * ^definition = "Placeholder entry for Artemis XVII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XVIII "Artemis XVIII"
  * ^definition = "Placeholder entry for Artemis XVIII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XIX "Artemis XIX"
  * ^definition = "Placeholder entry for Artemis XIX mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XX "Artemis XX"
  * ^definition = "Placeholder entry for Artemis XX mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXI "Artemis XXI"
  * ^definition = "Placeholder entry for Artemis XXI mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXII "Artemis XXII"
  * ^definition = "Placeholder entry for Artemis XXII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXIII "Artemis XXIII"
  * ^definition = "Placeholder entry for Artemis XXIII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXIV "Artemis XXIV"
  * ^definition = "Placeholder entry for Artemis XXIV mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXV "Artemis XXV"
  * ^definition = "Placeholder entry for Artemis XXV mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXVI "Artemis XXVI"
  * ^definition = "Placeholder entry for Artemis XXVI mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXVII "Artemis XXVII"
  * ^definition = "Placeholder entry for Artemis XXVII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXVIII "Artemis XXVIII"
  * ^definition = "Placeholder entry for Artemis XXVIII mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXIX "Artemis XXIX"
  * ^definition = "Placeholder entry for Artemis XXIX mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

* #ARTEMIS-XXX "Artemis XXX"
  * ^definition = "Placeholder entry for Artemis XXX mission used for simulation, planning, and forecasting."
  * ^designation[0].use = http://terminology.hl7.org/CodeSystem/designation-usage#definition
  * ^designation[=].value = "Status: planned | Placeholder mission entry for simulation and forecasting"
  * ^property[0].code = #status
  * ^property[=].valueCode = #planned

// =====================================================
// VALUE SET
// =====================================================

ValueSet: ArtemisMissionVS
Id: artemis-mission-vs
Title: "Artemis Missions"
Description: "All Artemis program missions I-XXX"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-mission-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisMissionCS
