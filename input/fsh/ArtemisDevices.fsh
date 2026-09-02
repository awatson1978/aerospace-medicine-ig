// Artemis Devices CodeSystems
// Certified (flight-qualified) and Prototype (developmental/test) hardware.
// The former unified ArtemisDevicesCS inventory (44 entries) has been merged into
// these two systems: flight-proven or flight-qualified elements are in
// ArtemisCertifiedDevicesCS; concept, demonstration, and next-generation elements
// are in ArtemisPrototypeDevicesCS.

// =====================================================
// CERTIFIED DEVICES CODE SYSTEM
// =====================================================

CodeSystem: ArtemisCertifiedDevicesCS
Id: artemis-certified-devices-cs
Title: "Artemis Certified Devices"
Description: "Flight-qualified hardware and systems used in Artemis missions (Orion, SLS, xEMU, Starship-HLS, CLPS landers, Gateway modules, LTV, radioisotope power units, etc.)"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 15

// Device type property
* ^property[0].code = #deviceType
* ^property[=].description = "Device category (spacecraft, launch-vehicle, suit, life-support, lander, habitat, propulsion, communications, medical-equipment, rover, power)"
* ^property[=].type = #string

// Manufacturer property
* ^property[+].code = #manufacturer
* ^property[=].description = "Device manufacturer or contractor"
* ^property[=].type = #string

// --- Crewed vehicles ---

* #orion "Orion Crew Vehicle"
  * ^definition = "Orion Crew Module and Service Module (CM/SM) - spacecraft carrying crew to lunar orbit. Manufacturer: Lockheed Martin/NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "spacecraft"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Lockheed Martin / NASA"

* #sls "Space Launch System"
  * ^definition = "Space Launch System rocket - heavy-lift launch vehicle for Artemis missions. Manufacturer: Boeing/NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "launch-vehicle"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Boeing / NASA"

// --- EVA systems ---

* #xemu-suit "xEMU EVA Suit"
  * ^definition = "Exploration Extravehicular Mobility Unit - next-generation spacesuit for lunar surface EVAs. Manufacturer: Axiom Space/Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "suit"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Axiom Space / Collins Aerospace"

* #plss "Portable Life Support System"
  * ^definition = "PLSS backpack for xEMU suit (life support during EVA). Manufacturer: Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "life-support"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Collins Aerospace"

// --- Landers ---

* #starship-hls "Starship Human Landing System"
  * ^definition = "SpaceX Starship variant serving as the Artemis human landing system. Manufacturer: SpaceX."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "lander"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "SpaceX"

* #clps-lander "CLPS Lander"
  * ^definition = "Commercial Lunar Payload Services delivery lander for robotic payload delivery to the lunar surface. Manufacturer: NASA / Commercial Providers."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "lander"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Commercial Providers"

// --- Surface mobility ---

* #ltv "Lunar Terrain Vehicle"
  * ^definition = "Unpressurized rover for surface mobility (Artemis V and later). Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #viper-rover "VIPER Rover"
  * ^definition = "Volatiles Investigating Polar Exploration Rover - flight-built robotic rover for lunar south pole volatile prospecting. Manufacturer: NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

// --- Gateway modules and habitats ---

* #gateway-halo "Gateway HALO Module"
  * ^definition = "Habitation and Logistics Outpost module of Lunar Gateway (primary habitat). Manufacturer: Northrop Grumman."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "habitat"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Northrop Grumman"

* #gateway-ppe "Gateway PPE Module"
  * ^definition = "Power and Propulsion Element module of Lunar Gateway. Manufacturer: Maxar Technologies."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "propulsion"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Maxar Technologies"

* #basecamp-hab "Artemis Base Camp Surface Habitat"
  * ^definition = "Planned future lunar base living quarters on surface. Manufacturer: TBD."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "habitat"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "TBD"

// --- Communications ---

* #lunanet-comm "LunaNet Communication System"
  * ^definition = "Lunar communication and navigation network elements (relay satellites or surface comm devices). Manufacturer: NASA/Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Medical equipment ---

* #medical-kit "Artemis Medical Kit"
  * ^definition = "Artemis mission medical equipment set (emergency medical pack, diagnostics). Manufacturer: NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

// --- Power systems (flight-proven radioisotope units) ---

* #rtg-power-unit "RTG Power Unit"
  * ^definition = "Radioisotope Thermoelectric Generator power system. Manufacturer: NASA / DOE / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

* #rhu-thermal-survival-unit "RHU Thermal Survival Unit"
  * ^definition = "Radioisotope Heater Unit for lunar night survival. Manufacturer: NASA / DOE / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

// =====================================================
// PROTOTYPE DEVICES CODE SYSTEM
// =====================================================

CodeSystem: ArtemisPrototypeDevicesCS
Id: artemis-prototype-devices-cs
Title: "Artemis Prototype Devices"
Description: "Developmental and test hardware not yet flight-certified: demo units, ground analogs, next-generation prototypes, and planned LunaNet, surface mobility, habitat, logistics, ISRU, and surface power infrastructure elements"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 34

// Device type property
* ^property[0].code = #deviceType
* ^property[=].description = "Device category (suit, life-support, habitat, communications, navigation, medical-equipment, rover, drone, logistics, isru, power)"
* ^property[=].type = #string

// Test environment property
* ^property[+].code = #testEnvironment
* ^property[=].description = "Primary test environment (ground, iss, analog-mission)"
* ^property[=].type = #string

// Manufacturer property
* ^property[+].code = #manufacturer
* ^property[=].description = "Device manufacturer or contractor"
* ^property[=].type = #string

// --- EVA and life support ---

* #xemu-demo "xEMU Demo Unit"
  * ^definition = "Prototype EVA suit used in ground testing or ISS demonstration (not flight-certified). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "suit"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

* #nextgen-plss "Next-Generation PLSS"
  * ^definition = "Next-generation Portable Life Support System under development (for suits beyond Artemis). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "life-support"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

// --- Medical ---

* #biomonitor-wearable "BioMonitor Wearable Prototype"
  * ^definition = "Experimental biomedical monitoring device (advanced smart garment for astronauts in trial). Test env: ISS."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "iss"

* #autonomous-medical-unit "Autonomous Medical Unit Prototype"
  * ^definition = "Prototype diagnostic device or smart medical assistant being evaluated for lunar use. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "medical-equipment"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

// --- Habitats ---

* #habitat-test-module "Habitat Test Module"
  * ^definition = "Ground-based habitat prototype (e.g., 3D-printed habitat analog or Lunar/Mars yard modules). Test env: analog-mission."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "habitat"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "analog-mission"

* #surface-habitat-module "Surface Habitat Module"
  * ^definition = "Planned lunar surface habitat infrastructure element. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "habitat"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Surface mobility (LTV variants and rovers) ---

* #pressurized-rover-proto "Pressurized Rover Prototype"
  * ^definition = "Early concept lunar pressurized rover (testing life support and habitat functions on Earth). Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"

* #crewed-ltv "Crewed LTV"
  * ^definition = "Crewed Lunar Terrain Vehicle variant under development. Manufacturer: NASA / Industry Team. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #uncrewed-ltv "Uncrewed LTV"
  * ^definition = "Uncrewed (teleoperated) Lunar Terrain Vehicle variant under development. Manufacturer: NASA / Industry Team. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #advanced-ltv "Advanced LTV"
  * ^definition = "Advanced Lunar Terrain Vehicle concept. Manufacturer: NASA / Industry Team. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #ltv-gen-2 "LTV Generation 2"
  * ^definition = "Second-generation Lunar Terrain Vehicle concept. Manufacturer: NASA / Industry Team. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #excavator-rover "Excavator Rover"
  * ^definition = "Lunar surface excavation rover under development. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #site-prep-logistics-rover "Site Preparation and Logistics Rover"
  * ^definition = "Rover concept for site preparation and logistics tasks. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #international-partner-rover "International Partner Rover"
  * ^definition = "Partner-provided lunar rover under development. Manufacturer: International Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "International Partners"

* #science-rover "Science Rover"
  * ^definition = "Lunar surface science rover concept. Manufacturer: NASA / Partners. Test env: analog-mission."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "rover"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "analog-mission"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Aerial / drone ---

* #moonfall-drone "MoonFall Drone"
  * ^definition = "Lunar surface aerial or descent support drone concept. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "drone"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- LunaNet communications and navigation (planned infrastructure) ---

* #orbital-comm-relay "Orbital Communication Relay"
  * ^definition = "Orbital relay satellite for lunar communications. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #observation-satellite "Observation Satellite"
  * ^definition = "Lunar observation and monitoring satellite. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #relay-satellite-observability "Relay Satellite with Observability"
  * ^definition = "Relay satellite with observability functions. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #surface-comm-nav-node "Surface Communication and Navigation Node"
  * ^definition = "Lunar surface communication and navigation infrastructure node. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #deployable-surface-comm-tower "Deployable Surface Communication Tower"
  * ^definition = "Deployable surface communications tower. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #high-throughput-surface-comms "High-Throughput Surface Communications Node"
  * ^definition = "High-bandwidth lunar surface communications node. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "communications"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #lunar-pnt-node "Lunar PNT Node"
  * ^definition = "Positioning, navigation, and timing infrastructure node. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "navigation"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #clock-demo-node "Lunar Clock Demonstration Node"
  * ^definition = "Surface timing and synchronization demonstrator. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "navigation"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #navigation-capability-node "Navigation Capability Node"
  * ^definition = "Lunar navigation infrastructure element. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "navigation"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Logistics ---

* #logistics-demo-unit "Logistics Demonstration Unit"
  * ^definition = "Demonstrator for lunar surface logistics. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "logistics"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #logistics-delivery-vehicle "Logistics Delivery Vehicle"
  * ^definition = "Lunar surface or cargo delivery logistics asset concept. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "logistics"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #cargo-return-vehicle "Cargo Return Vehicle"
  * ^definition = "Vehicle concept for returning cargo from lunar surface operations. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "logistics"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- ISRU ---

* #isru-plant "ISRU Plant"
  * ^definition = "In Situ Resource Utilization processing system under development. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "isru"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Surface power (developmental) ---

* #solar-power-augmentation-unit "Solar Power Augmentation Unit"
  * ^definition = "Solar power augmentation infrastructure. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #solar-battery-rfc-power-unit "Solar Battery RFC Power Unit"
  * ^definition = "Solar, battery, and regenerative fuel cell power system. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #fission-surface-power-unit "Fission Surface Power Unit"
  * ^definition = "Lunar surface fission power system under development. Manufacturer: NASA / DOE / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

* #power-infrastructure-node "Power Infrastructure Node"
  * ^definition = "Surface electrical power infrastructure node. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #power-distribution-node "Power Distribution Node"
  * ^definition = "Surface power distribution system. Manufacturer: NASA / Partners. Test env: ground."
  * ^property[0].code = #deviceType
  * ^property[=].valueString = "power"
  * ^property[+].code = #testEnvironment
  * ^property[=].valueString = "ground"
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: ArtemisCertifiedDevicesVS
Id: artemis-certified-devices-vs
Title: "Artemis Certified Devices"
Description: "Flight-qualified Artemis mission hardware"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system ArtemisCertifiedDevicesCS

ValueSet: ArtemisPrototypeDevicesVS
Id: artemis-prototype-devices-vs
Title: "Artemis Prototype Devices"
Description: "Developmental and test Artemis hardware"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system ArtemisPrototypeDevicesCS

ValueSet: ArtemisAllDevicesVS
Id: artemis-all-devices-vs
Title: "All Artemis Devices"
Description: "Both certified and prototype Artemis devices (the complete Artemis device inventory)"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system ArtemisCertifiedDevicesCS
* include codes from system ArtemisPrototypeDevicesCS
