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
Description: "Historical and planned Artemis program missions with target destinations, launch dates, and status. Reflects the post-2026 replan in which Artemis III is a crewed low-Earth orbit test flight and Artemis IV is the first crewed lunar landing."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 30

// Mission status property
* ^property[0].code = #status
* ^property[=].description = "Mission status (completed, in-progress, planned)"
* ^property[=].type = #string

// Target destination property
* ^property[+].code = #target
* ^property[=].description = "Target destination (orbit or landing)"
* ^property[=].type = #string

// Launch date property
* ^property[+].code = #launchDate
* ^property[=].description = "Launch date of mission (actual or planned)"
* ^property[=].type = #dateTime

// Mission concepts
* #ARTEMIS-I "Artemis I"
  * ^definition = "Uncrewed test flight of Orion and SLS around the Moon. Launched Nov 16, 2022. Status: completed. Target: Lunar orbit and return."
  * ^property[0].code = #status
  * ^property[=].valueString = "completed"
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar orbit and return (uncrewed test)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2022-11-16T06:47:00Z"

* #ARTEMIS-II "Artemis II"
  * ^definition = "First crewed lunar flyby mission of Artemis program. Planned ~2026. Status: planned. Target: Lunar flyby (crewed)."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar flyby (crewed)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2026-09-01T00:00:00Z"

* #ARTEMIS-III "Artemis III"
  * ^definition = "Crewed low-Earth orbit test flight preparing systems for future lunar landings. Planned ~2027. Status: planned. Target: LEO test flight (crewed)."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"
  * ^property[+].code = #target
  * ^property[=].valueString = "LEO test flight (crewed)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2027-09-01T00:00:00Z"

* #ARTEMIS-IV "Artemis IV"
  * ^definition = "First crewed lunar landing of the Artemis program, combined with Lunar Gateway assembly (following the Artemis III crewed low-Earth orbit test flight). Planned ~2028. Status: planned. Target: Gateway assembly + first crewed lunar landing."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar Gateway assembly + first crewed lunar landing"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2028-09-01T00:00:00Z"

* #ARTEMIS-V "Artemis V"
  * ^definition = "Second crewed lunar landing with a new lander and the Lunar Terrain Vehicle. Planned ~2030. Status: planned. Target: Lunar landing (new lander, LTV rover)."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"
  * ^property[+].code = #target
  * ^property[=].valueString = "Lunar landing (new lander, LTV rover)"
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2030-01-01T00:00:00Z"

* #ARTEMIS-VI "Artemis VI"
  * ^definition = "Placeholder entry for Artemis VI mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-VII "Artemis VII"
  * ^definition = "Placeholder entry for Artemis VII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-VIII "Artemis VIII"
  * ^definition = "Placeholder entry for Artemis VIII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-IX "Artemis IX"
  * ^definition = "Placeholder entry for Artemis IX mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-X "Artemis X"
  * ^definition = "Placeholder entry for Artemis X mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XI "Artemis XI"
  * ^definition = "Placeholder entry for Artemis XI mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XII "Artemis XII"
  * ^definition = "Placeholder entry for Artemis XII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XIII "Artemis XIII"
  * ^definition = "Placeholder entry for Artemis XIII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XIV "Artemis XIV"
  * ^definition = "Placeholder entry for Artemis XIV mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XV "Artemis XV"
  * ^definition = "Placeholder entry for Artemis XV mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XVI "Artemis XVI"
  * ^definition = "Placeholder entry for Artemis XVI mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XVII "Artemis XVII"
  * ^definition = "Placeholder entry for Artemis XVII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XVIII "Artemis XVIII"
  * ^definition = "Placeholder entry for Artemis XVIII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XIX "Artemis XIX"
  * ^definition = "Placeholder entry for Artemis XIX mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XX "Artemis XX"
  * ^definition = "Placeholder entry for Artemis XX mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXI "Artemis XXI"
  * ^definition = "Placeholder entry for Artemis XXI mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXII "Artemis XXII"
  * ^definition = "Placeholder entry for Artemis XXII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXIII "Artemis XXIII"
  * ^definition = "Placeholder entry for Artemis XXIII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXIV "Artemis XXIV"
  * ^definition = "Placeholder entry for Artemis XXIV mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXV "Artemis XXV"
  * ^definition = "Placeholder entry for Artemis XXV mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXVI "Artemis XXVI"
  * ^definition = "Placeholder entry for Artemis XXVI mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXVII "Artemis XXVII"
  * ^definition = "Placeholder entry for Artemis XXVII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXVIII "Artemis XXVIII"
  * ^definition = "Placeholder entry for Artemis XXVIII mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXIX "Artemis XXIX"
  * ^definition = "Placeholder entry for Artemis XXIX mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

* #ARTEMIS-XXX "Artemis XXX"
  * ^definition = "Placeholder entry for Artemis XXX mission used for simulation, planning, and forecasting."
  * ^property[0].code = #status
  * ^property[=].valueString = "planned"

// =====================================================
// VALUE SET
// =====================================================

ValueSet: ArtemisMissionVS
Id: artemis-mission-vs
Title: "Artemis Missions"
Description: "All Artemis program missions I-XXX"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system ArtemisMissionCS
