// Crewed Mars Mission Plans CodeSystem
// Proposed and conceptual human mission architectures to Mars

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CREWED MARS MISSIONS CODE SYSTEM
// =====================================================

CodeSystem: CrewedMarsMissionsCS
Id: crewed-mars-missions-cs
Title: "Human Mars Mission Plans"
Description: "Proposed or conceptual human mission architectures to Mars (Mars Direct, NASA DRMs, SpaceX, etc.)"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Proposer property
* ^property[0].code = #proposer
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#proposer"
* ^property[=].description = "Organization or individual proposing the architecture"
* ^property[=].type = #string

// Year property
* ^property[+].code = #year
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#year"
* ^property[=].description = "Year of proposal or major update"
* ^property[=].type = #integer

// Crew size property
* ^property[+].code = #crewSize
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#crewSize"
* ^property[=].description = "Nominal crew size"
* ^property[=].type = #integer

// Surface stay property
* ^property[+].code = #surfaceStayDays
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/crewed-mars-missions-cs#surfaceStayDays"
* ^property[=].description = "Planned surface stay duration in days"
* ^property[=].type = #integer

// Mission concepts
* #marsDirect "Mars Direct (Zubrin 1990)"
  * ^definition = "Two-launch architecture with ISRU propellant production on Mars, direct Earth-Mars transit, 18-month surface stay, artificial gravity tether, crew of 4"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "Robert Zubrin / Mars Society"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 1990
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 4
  * ^property[+].code = #surfaceStayDays
  * ^property[=].valueInteger = 550

* #nasaDRM1 "NASA Design Reference Mission 1.0 (1993)"
  * ^definition = "NASA's first Mars Semi-Direct adaptation, split missions with ISRU but added Mars Orbit Rendezvous with MAV"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "NASA"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 1993
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 4

* #nasaDRM3 "NASA Design Reference Mission 3.0 (1998)"
  * ^definition = "NASA DRM evolution with increased crew size (6) and hardware redundancy, Semi-Direct architecture"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "NASA"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 1998
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 6

* #nasaDRA5 "NASA Design Reference Architecture 5.0 (2009)"
  * ^definition = "Conjunction-class mission with ~3 launches, nuclear thermal rockets for cargo, fission surface power (~25 kW), long surface stays"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "NASA"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2009
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 6
  * ^property[+].code = #surfaceStayDays
  * ^property[=].valueInteger = 500

* #austereMars "NASA Austere Human Missions to Mars (2009)"
  * ^definition = "Cost-reduced DRA 5.0 variant with simplified technology, 4 crew, reduced infrastructure"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "NASA"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2009
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 4

* #journeyToMars "NASA Journey to Mars (2015)"
  * ^definition = "Moon-first strategy (Artemis), then Mars in 2030s, incremental capability buildup, Gateway staging"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "NASA"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2015

* #spacexStarship "SpaceX Starship Mars Plan (2016-present)"
  * ^definition = "Commercial plan using fully reusable Starship, orbital refueling (10-14 tankers), ISRU for return, target ~2029-2031"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "SpaceX / Elon Musk"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2016
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 12
  * ^property[+].code = #surfaceStayDays
  * ^property[=].valueInteger = 180

* #marsOne "Mars One (2012-2019)"
  * ^definition = "Private one-way colonization concept, planned 2023 launch, project defunct 2019"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "Mars One / Bas Lansdorp"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2012
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 4

* #inspirationMars "Inspiration Mars (2013)"
  * ^definition = "Proposed crewed Mars flyby (Dennis Tito plan for 2018 launch window), not surface landing"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "Dennis Tito / Inspiration Mars Foundation"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2013
  * ^property[+].code = #crewSize
  * ^property[=].valueInteger = 2

* #projectOlympus "Project Olympus / Athena (2025)"
  * ^definition = "Jared Isaacman plan for accelerated NASA-commercial Mars efforts, uncrewed demo by 2026, nuclear-electric propulsion priority"
  * ^property[0].code = #proposer
  * ^property[=].valueString = "Jared Isaacman"
  * ^property[+].code = #year
  * ^property[=].valueInteger = 2025

// =====================================================
// VALUE SET
// =====================================================

ValueSet: CrewedMarsMissionsVS
Id: crewed-mars-missions-vs
Title: "Human Mars Mission Plans"
Description: "Proposed and conceptual human mission architectures to Mars"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/crewed-mars-missions-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system CrewedMarsMissionsCS
