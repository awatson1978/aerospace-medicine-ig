// Mars Devices CodeSystems
// Certified (flight-qualified) and Prototype (developmental) hardware for Mars missions

// =====================================================
// CERTIFIED DEVICES CODE SYSTEM
// =====================================================

CodeSystem: MarsCertifiedDevicesCS
Id: mars-certified-devices-cs
Title: "Mars Mission Devices - Certified"
Description: "Flight-qualified hardware and systems operational or used in Mars mission planning (ISS heritage, Orion, etc.)"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 6

// Device type property
* ^property[0].code = #deviceType
* ^property[=].description = "Device category (spacecraft, life-support, suit, medical-equipment, habitat, isru-system, power-generation, rover)"
* ^property[=].type = #string

// Manufacturer property
* ^property[+].code = #manufacturer
* ^property[=].description = "Device manufacturer"
* ^property[=].type = #string

// Device concepts
* #orion "Orion MPCV Spacecraft"
  * ^definition = "Orion Multi-Purpose Crew Vehicle for deep space transit (Artemis program), capable of Earth-Mars trajectory"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "spacecraft"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Lockheed Martin / NASA"

* #crewDragon "SpaceX Crew Dragon"
  * ^definition = "Operational crew vehicle to LEO, could support Earth orbit rendezvous for Mars missions"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "spacecraft"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "SpaceX"

* #issECLSS "ISS Environmental Control & Life Support System"
  * ^definition = "Closed-loop life support (O2 generation, CO2 removal, water recycle) from ISS as baseline for Mars habitat"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "life-support"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / International Partners"

* #emuSuit "EMU Space Suit (ISS)"
  * ^definition = "Extravehicular Mobility Unit, 4.3 psi suit for zero-G EVAs (heritage technology)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "suit"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "ILC Dover / NASA"

* #advancedMedicalLocker "Advanced Medical Locker (ISS)"
  * ^definition = "ISS Health Maintenance System including medical kit, defibrillator, ultrasound"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

* #bioMonitor "Bio-Monitor Wearable System"
  * ^definition = "CSA/NASA health monitor shirt for continuous vital sign telemetry, currently used on ISS"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Canadian Space Agency / NASA"

// =====================================================
// PROTOTYPE DEVICES CODE SYSTEM
// =====================================================

CodeSystem: MarsPrototypeDevicesCS
Id: mars-prototype-devices-cs
Title: "Mars Mission Devices - Prototype"
Description: "Developmental or conceptual hardware for Mars missions (prototypes, test articles, planned systems)"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 7

// Device type property
* ^property[0].code = #deviceType
* ^property[=].description = "Device category (spacecraft, life-support, suit, medical-equipment, habitat, isru-system, power-generation, rover)"
* ^property[=].type = #string

// Test environment property
* ^property[+].code = #testEnvironment
* ^property[=].description = "Primary test environment (ground, orbital-test, analog-mission, mars-surface)"
* ^property[=].type = #string

// Device concepts
* #starship "SpaceX Starship"
  * ^definition = "Fully reusable rocket/lander for Mars (prototype stage, orbital tests ongoing 2020s)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "spacecraft"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "orbital-test"

* #marsHabitat "Mars Surface Habitat Module"
  * ^definition = "Pressurized living quarters for Mars surface (NASA DRA 5.0 concept, no full prototype yet)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "habitat"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "analog-mission"

* #xemuMarsSuit "xEMU Mars Suit"
  * ^definition = "Next-generation planetary EVA suit under development for lunar and Mars surface EVAs"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "suit"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

* #isruPlant "Mars ISRU Propellant Plant"
  * ^definition = "Scaled-up MOXIE + Sabatier system to produce CH4/O2 on Mars (tested at prototype level, MOXIE on Perseverance for O2)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "isru-system"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "mars-surface"

* #kilopower "Kilopower Fission Reactor"
  * ^definition = "10 kW nuclear fission surface power unit (prototyped on Earth 2018, KRUSTY demo, for future Mars use)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power-generation"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

* #pressurizedRover "Pressurized Mars Rover"
  * ^definition = "Concept vehicle for long-range crew excursions (prototypes like NASA SEV exist but not Mars-certified)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

* #autonomousSurgicalUnit "Autonomous Surgical Unit"
  * ^definition = "Concept medical device for Mars (lightweight operating table, robotic assist tools, TRL<6 prototype)"
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: MarsCertifiedDevicesVS
Id: mars-certified-devices-vs
Title: "Mars Mission Devices - Certified"
Description: "Flight-qualified hardware for Mars missions"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system MarsCertifiedDevicesCS

ValueSet: MarsPrototypeDevicesVS
Id: mars-prototype-devices-vs
Title: "Mars Mission Devices - Prototype"
Description: "Developmental and test hardware for Mars missions"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system MarsPrototypeDevicesCS

ValueSet: MarsAllDevicesVS
Id: mars-all-devices-vs
Title: "All Mars Mission Devices"
Description: "Both certified and prototype Mars devices"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system MarsCertifiedDevicesCS
* include codes from system MarsPrototypeDevicesCS
