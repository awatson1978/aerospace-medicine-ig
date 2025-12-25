// Artemis Devices CodeSystems
// Certified (flight-qualified) and Prototype (developmental/test) hardware

// =====================================================
// CERTIFIED DEVICES CODE SYSTEM
// =====================================================

CodeSystem: ArtemisCertifiedDevicesCS
Id: artemis-certified-devices-cs
Title: "Artemis Certified Devices"
Description: "Flight-qualified hardware and systems used in Artemis missions (Orion, xEMU, Starship-HLS, Gateway, LTV, etc.)"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Device type property
* ^property[0].code = #deviceType
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs#deviceType"
* ^property[=].description = "Device category (spacecraft, suit, vehicle, habitat, equipment)"
* ^property[=].type = #code

// Manufacturer property
* ^property[+].code = #manufacturer
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-certified-devices-cs#manufacturer"
* ^property[=].description = "Device manufacturer/contractor"
* ^property[=].type = #string

// Device concepts
* #orion "Orion Crew Vehicle"
  * ^definition = "Orion Crew Module and Service Module (CM/SM) - spacecraft carrying crew to lunar orbit. Manufacturer: Lockheed Martin/NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #spacecraft
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Lockheed Martin / NASA"

* #sls "Space Launch System"
  * ^definition = "Space Launch System rocket - heavy-lift launch vehicle for Artemis missions. Manufacturer: Boeing/NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #launch-vehicle
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Boeing / NASA"

* #xemu-suit "xEMU EVA Suit"
  * ^definition = "Exploration Extravehicular Mobility Unit - next-generation spacesuit for lunar surface EVAs. Manufacturer: Axiom Space/Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #suit
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Axiom Space / Collins Aerospace"

* #starship-hls "Starship Human Landing System"
  * ^definition = "SpaceX Starship variant serving as lunar lander for Artemis III. Manufacturer: SpaceX."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #lander
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "SpaceX"

* #ltv "Lunar Terrain Vehicle"
  * ^definition = "Unpressurized rover for surface mobility (Artemis V and later). Manufacturer: TBD."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "TBD"

* #gateway-halo "Gateway HALO Module"
  * ^definition = "Habitation and Logistics Outpost module of Lunar Gateway (primary habitat). Manufacturer: Northrop Grumman."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Northrop Grumman"

* #gateway-ppe "Gateway PPE Module"
  * ^definition = "Power and Propulsion Element module of Lunar Gateway. Manufacturer: Maxar Technologies."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #propulsion
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Maxar Technologies"

* #basecamp-hab "Artemis Base Camp Surface Habitat"
  * ^definition = "Planned future lunar base living quarters on surface. Manufacturer: TBD."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "TBD"

* #lunanet-comm "LunaNet Communication System"
  * ^definition = "Lunar communication network elements (relay satellites or surface comm devices). Manufacturer: NASA/Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #medical-kit "Artemis Medical Kit"
  * ^definition = "Artemis mission medical equipment set (emergency medical pack, diagnostics). Manufacturer: NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #medical-equipment
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

* #plss "Portable Life Support System"
  * ^definition = "PLSS backpack for xEMU suit (life support during EVA). Manufacturer: Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #life-support
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Collins Aerospace"

// =====================================================
// PROTOTYPE DEVICES CODE SYSTEM
// =====================================================

CodeSystem: ArtemisPrototypeDevicesCS
Id: artemis-prototype-devices-cs
Title: "Artemis Prototype Devices"
Description: "Developmental and test hardware not yet flight-certified (demo units, ground analogs, next-gen prototypes)"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Device type property
* ^property[0].code = #deviceType
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs#deviceType"
* ^property[=].description = "Device category (spacecraft, suit, vehicle, habitat, equipment)"
* ^property[=].type = #code

// Test environment property
* ^property[+].code = #testEnvironment
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-prototype-devices-cs#testEnvironment"
* ^property[=].description = "Primary test environment (ground, ISS, analog-mission)"
* ^property[=].type = #code

// Device concepts
* #xemu-demo "xEMU Demo Unit"
  * ^definition = "Prototype EVA suit used in ground testing or ISS demonstration (not flight-certified). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #suit
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #ground

* #pressurized-rover-proto "Pressurized Rover Prototype"
  * ^definition = "Early concept lunar pressurized rover (testing life support and habitat functions on Earth). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #ground

* #habitat-test-module "Habitat Test Module"
  * ^definition = "Ground-based habitat prototype (e.g., 3D-printed habitat analog or Lunar/Mars yard modules). Test env: analog-mission."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #analog-mission

* #nextgen-plss "Next-Generation PLSS"
  * ^definition = "Next-generation Portable Life Support System under development (for suits beyond Artemis). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #life-support
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #ground

* #biomonitor-wearable "BioMonitor Wearable Prototype"
  * ^definition = "Experimental biomedical monitoring device (advanced smart garment for astronauts in trial). Test env: ISS."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #medical-equipment
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #iss

* #autonomous-medical-unit "Autonomous Medical Unit Prototype"
  * ^definition = "Prototype diagnostic device or smart medical assistant being evaluated for lunar use. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #medical-equipment
  * ^property[+].code = #testEnvironment
  * ^property[=].valueCode = #ground

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: ArtemisCertifiedDevicesVS
Id: artemis-certified-devices-vs
Title: "Artemis Certified Devices"
Description: "Flight-qualified Artemis mission hardware"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-certified-devices-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisCertifiedDevicesCS

ValueSet: ArtemisPrototypeDevicesVS
Id: artemis-prototype-devices-vs
Title: "Artemis Prototype Devices"
Description: "Developmental and test Artemis hardware"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-prototype-devices-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisPrototypeDevicesCS

ValueSet: ArtemisAllDevicesVS
Id: artemis-all-devices-vs
Title: "All Artemis Devices"
Description: "Both certified and prototype Artemis devices"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-all-devices-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisCertifiedDevicesCS
* include codes from system ArtemisPrototypeDevicesCS
