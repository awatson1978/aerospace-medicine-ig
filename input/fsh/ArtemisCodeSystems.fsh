// Artemis Devices CodeSystem (Unified)
// Comprehensive device inventory for the Artemis program including crewed vehicles,
// EVA systems, landers, Gateway modules, LunaNet communications and navigation
// infrastructure, surface mobility, habitats, logistics, ISRU, and power systems

// =====================================================
// UNIFIED DEVICE CODE SYSTEM
// =====================================================

CodeSystem: ArtemisDevicesCS
Id: artemis-devices-cs
Title: "Artemis Devices"
Description: "Unified device inventory for the Artemis program including crewed vehicles, EVA systems, landers, Gateway modules, LunaNet communications and navigation infrastructure, surface mobility (LTV variants and rovers), habitats, logistics assets, ISRU, and power systems"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Device type property
* ^property[0].code = #deviceType
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs#deviceType"
* ^property[=].description = "Device category (spacecraft, launch-vehicle, suit, life-support, lander, habitat, propulsion, communications, navigation, medical-equipment, rover, drone, logistics, isru, power)"
* ^property[=].type = #code

// Manufacturer property
* ^property[+].code = #manufacturer
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-devices-cs#manufacturer"
* ^property[=].description = "Device manufacturer or contractor"
* ^property[=].type = #string

// --- Crewed Vehicles ---

* #orion "Orion Crew Vehicle"
  * ^definition = "Spacecraft - Crew Module and Service Module. Manufacturer: Lockheed Martin / NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #spacecraft
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Lockheed Martin / NASA"

* #sls "Space Launch System"
  * ^definition = "Heavy-Lift Launch Vehicle. Manufacturer: Boeing / NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #launch-vehicle
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Boeing / NASA"

// --- EVA Systems ---

* #exploration-eva-suit "Exploration EVA Suit"
  * ^definition = "Exploration Extravehicular Mobility Unit. Manufacturer: Axiom Space / Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #suit
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Axiom Space / Collins Aerospace"

* #plss "Portable Life Support System"
  * ^definition = "EVA Suit Life Support Backpack. Manufacturer: Collins Aerospace."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #life-support
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Collins Aerospace"

// --- Landers ---

* #human-landing-system "Human Landing System"
  * ^definition = "Lunar Lander. Manufacturer: SpaceX."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #lander
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "SpaceX"

* #clps-lander "CLPS Lander"
  * ^definition = "Commercial Lunar Payload Services Delivery Lander. Manufacturer: NASA / Commercial Providers."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #lander
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Commercial Providers"

// --- Gateway Modules ---

* #gateway-halo "Gateway HALO Module"
  * ^definition = "Habitation and Logistics Outpost Module. Manufacturer: Northrop Grumman."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Northrop Grumman"

* #gateway-ppe "Gateway PPE Module"
  * ^definition = "Power and Propulsion Element. Manufacturer: Maxar Technologies."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #propulsion
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "Maxar Technologies"

// --- Medical Equipment ---

* #medical-kit "Artemis Medical Kit"
  * ^definition = "Emergency Medical Equipment. Manufacturer: NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #medical-equipment
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

// --- LunaNet Communications and Navigation ---

* #lunanet "LunaNet Communication Architecture"
  * ^definition = "Lunar Communication and Navigation Network. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #orbital-comm-relay "Orbital Communication Relay"
  * ^definition = "Orbital Relay Satellite for Lunar Communications. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #observation-satellite "Observation Satellite"
  * ^definition = "Lunar Observation and Monitoring Satellite. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #relay-satellite-observability "Relay Satellite with Observability"
  * ^definition = "Relay Satellite with Observability Functions. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #surface-comm-nav-node "Surface Communication and Navigation Node"
  * ^definition = "Lunar Surface Communication and Navigation Infrastructure. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #deployable-surface-comm-tower "Deployable Surface Communication Tower"
  * ^definition = "Deployable Surface Communications Tower. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #high-throughput-surface-comms "High-Throughput Surface Communications Node"
  * ^definition = "High-Bandwidth Lunar Surface Communications. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #communications
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #lunar-pnt-node "Lunar PNT Node"
  * ^definition = "Positioning Navigation and Timing Infrastructure. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #navigation
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #clock-demo-node "Lunar Clock Demonstration Node"
  * ^definition = "Surface Timing and Synchronization Demonstrator. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #navigation
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #navigation-capability-node "Navigation Capability Node"
  * ^definition = "Lunar Navigation Infrastructure Element. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #navigation
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Aerial/Drone ---

* #moonfall-drone "MoonFall Drone"
  * ^definition = "Lunar Surface Aerial or Descent Support Drone. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #drone
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Surface Mobility (LTV Variants and Rovers) ---

* #ltv "Lunar Terrain Vehicle"
  * ^definition = "Lunar Surface Mobility Platform. Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #crewed-ltv "Crewed LTV"
  * ^definition = "Crewed Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #uncrewed-ltv "Uncrewed LTV"
  * ^definition = "Uncrewed Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #advanced-ltv "Advanced LTV"
  * ^definition = "Advanced Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #ltv-gen-2 "LTV Generation 2"
  * ^definition = "Second-Generation Lunar Terrain Vehicle. Manufacturer: NASA / Industry Team."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Industry Team"

* #pressurized-rover "Pressurized Rover"
  * ^definition = "Pressurized Lunar Rover. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #viper-rover "VIPER Rover"
  * ^definition = "Volatiles Investigating Polar Exploration Rover. Manufacturer: NASA."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA"

* #excavator-rover "Excavator Rover"
  * ^definition = "Lunar Surface Excavation Rover. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #site-prep-logistics-rover "Site Preparation and Logistics Rover"
  * ^definition = "Rover for Site Preparation and Logistics Tasks. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #international-partner-rover "International Partner Rover"
  * ^definition = "Partner-Provided Lunar Rover. Manufacturer: International Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "International Partners"

* #science-rover "Science Rover"
  * ^definition = "Lunar Surface Science Rover. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #rover
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Habitats ---

* #basecamp-habitat "Artemis Base Camp Surface Habitat"
  * ^definition = "Lunar Surface Living Quarters. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #surface-habitat-module "Surface Habitat Module"
  * ^definition = "Lunar Surface Habitat Infrastructure. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #habitat
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Logistics ---

* #logistics-demo-unit "Logistics Demonstration Unit"
  * ^definition = "Demonstrator for Lunar Surface Logistics. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #logistics
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #logistics-delivery-vehicle "Logistics Delivery Vehicle"
  * ^definition = "Lunar Surface or Cargo Delivery Logistics Asset. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #logistics
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #cargo-return-vehicle "Cargo Return Vehicle"
  * ^definition = "Vehicle for Returning Cargo from Lunar Surface Operations. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #logistics
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- ISRU ---

* #isru-plant "ISRU Plant"
  * ^definition = "In Situ Resource Utilization Processing System. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #isru
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

// --- Power Systems ---

* #solar-power-augmentation-unit "Solar Power Augmentation Unit"
  * ^definition = "Solar Power Augmentation Infrastructure. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #solar-battery-rfc-power-unit "Solar Battery RFC Power Unit"
  * ^definition = "Solar Battery and Regenerative Fuel Cell Power System. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #rtg-power-unit "RTG Power Unit"
  * ^definition = "Radioisotope Thermoelectric Generator Power System. Manufacturer: NASA / DOE / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

* #rhu-thermal-survival-unit "RHU Thermal Survival Unit"
  * ^definition = "Radioisotope Heater Unit for Lunar Night Survival. Manufacturer: NASA / DOE / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

* #fission-surface-power-unit "Fission Surface Power Unit"
  * ^definition = "Lunar Surface Fission Power System. Manufacturer: NASA / DOE / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / DOE / Partners"

* #power-infrastructure-node "Power Infrastructure Node"
  * ^definition = "Surface Electrical Power Infrastructure. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"

* #power-distribution-node "Power Distribution Node"
  * ^definition = "Surface Power Distribution System. Manufacturer: NASA / Partners."
  * ^property[0].code = #deviceType
  * ^property[=].valueCode = #power
  * ^property[+].code = #manufacturer
  * ^property[=].valueString = "NASA / Partners"
