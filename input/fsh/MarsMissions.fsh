// Mars Missions CodeSystems
// Historical robotic missions and future crewed missions to Mars

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// MARS MISSIONS CODE SYSTEM
// =====================================================

CodeSystem: MarsMissionsCS
Id: mars-missions-cs
Title: "Mars Missions"
Description: "NASA and international missions to Mars (robotic and conceptual human missions)"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-missions-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Mission type property
* ^property[0].code = #missionType
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-missions-cs#missionType"
* ^property[=].description = "Type of mission (robotic, human, conceptual)"
* ^property[=].type = #code

// Launch date property
* ^property[+].code = #launchDate
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-missions-cs#launchDate"
* ^property[=].description = "Launch date of mission"
* ^property[=].type = #dateTime

// Status property
* ^property[+].code = #status
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-missions-cs#status"
* ^property[=].description = "Mission status (completed, active, planned)"
* ^property[=].type = #code

// Landing site property
* ^property[+].code = #landingSite
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/mars-missions-cs#landingSite"
* ^property[=].description = "Landing site on Mars (for landers/rovers)"
* ^property[=].type = #string

// Historical Robotic Missions
* #mariner4 "Mariner 4 (1964)"
  * ^definition = "First successful Mars flyby mission, returned 21 images of Mars surface"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1964-11-28"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed

* #mariner9 "Mariner 9 (1971)"
  * ^definition = "First spacecraft to orbit another planet (Mars), mapped surface"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1971-05-30"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed

* #viking1 "Viking 1 (1975)"
  * ^definition = "First successful Mars landing (July 1976), orbiter and lander mission"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1975-08-20"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Chryse Planitia"

* #viking2 "Viking 2 (1975)"
  * ^definition = "Second successful Mars landing (September 1976), orbiter and lander mission"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1975-09-09"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Utopia Planitia"

* #pathfinder "Mars Pathfinder (1996)"
  * ^definition = "Lander with Sojourner rover, demonstrated airbag landing technology"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1996-12-04"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Ares Vallis"

* #globalSurveyor "Mars Global Surveyor (1996)"
  * ^definition = "Orbiter that mapped Mars for 10 years with high-resolution cameras"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "1996-11-07"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed

* #spirit "Spirit Rover (MER-A, 2003)"
  * ^definition = "Mars Exploration Rover, operated 2004-2010, studied Gusev Crater"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2003-06-10"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Gusev Crater"

* #opportunity "Opportunity Rover (MER-B, 2003)"
  * ^definition = "Mars Exploration Rover, operated 2004-2018, studied Meridiani Planum"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2003-07-07"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Meridiani Planum"

* #phoenix "Phoenix (2007)"
  * ^definition = "Polar lander, confirmed water ice in regolith in 2008"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2007-08-04"
  * ^property[+].code = #status
  * ^property[=].valueCode = #completed
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Green Valley (Vastitas Borealis)"

* #curiosity "Curiosity (MSL, 2011)"
  * ^definition = "Nuclear-powered rover, landed August 2012, studying habitability in Gale Crater"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2011-11-26"
  * ^property[+].code = #status
  * ^property[=].valueCode = #active
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Gale Crater"

* #perseverance "Perseverance (Mars 2020)"
  * ^definition = "Rover collecting samples for future return, includes MOXIE oxygen experiment, landed Feb 2021"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #launchDate
  * ^property[=].valueDateTime = "2020-07-30"
  * ^property[+].code = #status
  * ^property[=].valueCode = #active
  * ^property[+].code = #landingSite
  * ^property[=].valueString = "Jezero Crater"

* #marsSampleReturn "Mars Sample Return (planned ~2030s)"
  * ^definition = "Future mission to return samples collected by Perseverance via orbiter and fetch rover"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #robotic
  * ^property[+].code = #status
  * ^property[=].valueCode = #planned

// Future Crewed Missions
* #firstCrewedMars "First Crewed Mars Mission (planned late 2030s)"
  * ^definition = "NASA Artemis-era goal to send astronauts to Mars orbit or surface"
  * ^property[0].code = #missionType
  * ^property[=].valueCode = #human
  * ^property[+].code = #status
  * ^property[=].valueCode = #planned

// =====================================================
// VALUE SET
// =====================================================

ValueSet: MarsMissionsVS
Id: mars-missions-vs
Title: "Mars Missions"
Description: "All Mars missions (robotic and human, completed and planned)"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/mars-missions-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system MarsMissionsCS
