// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: SpaceLocation
Parent: Location
Title: "xGeo Locations"
Description: "STUB - Locations in outerspace, past the Karman line, such as a space ship or space habitat."

Profile: SpaceVehicle
Parent: Location
Title: "Space Vehicle"
Description: "STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc)"

Instance: LocationInternationalSpaceStation
InstanceOf: SpaceLocation
Title: "Location - ISS"
Description: "International Space Station - football field sized orbital space station in low earth orbit (LEO)"
* name = "Location - ISS"

Instance: LocationLunarGateway
InstanceOf: SpaceLocation
Title: "Location - Gateway"
Description: "Lunar Gateway - outpost and transfer station in lunar orbit.  (Pending)"
* name = "Location - Gateway"

Instance: LocationArtemisSpaceCamp
InstanceOf: SpaceLocation
Title: "Location - Artemis Space Camp"
Description: "Artemis space camp (Pending)"
* name = "Location - Artemis Space Camp"

Instance: LocationLunarVillage
InstanceOf: SpaceLocation
Title: "Location - Lunar Village"
Description: "EU Lunar Village (Pending)"
* name = "Location - Lunar Village"

Instance: LocationMirSpaceStation
InstanceOf: SpaceLocation
Title: "Location - Mir"
Description: "Mir Space Station (Decomissioned)"
* name = "Location - Mir"

Instance: LocationSpaceLabSpaceStation
InstanceOf: SpaceLocation
Title: "Location - Space Lab"
Description: "Space Lab (Decomissioned)"
* name = "Location - Space Lab"

Instance: LocationTaingong
InstanceOf: SpaceLocation
Title: "Location - Palace in the Sky"
Description: "Palace in the Sky (Taingong)"
* name = "Location - Palace in the Sky"


Instance: LocationIcuBed
InstanceOf: Location
Title: "Location - ICU Bed"
Description: "Intensive Care Unit - Bed"
* name = "Location - ICU Bed"


Instance: LocationIcuWard
InstanceOf: Location
Title: "Location - ICU Ward"
Description: "Intensive Care Unit - Ward"
* name = "Location - ICU Ward"


Instance: LocationSoyez
InstanceOf: Location
Title: "Location - Soyez Capsule"
Description: "Soyez capsule, part of the Korolev Design Bureau lunar landing flight system."
* name = "Location - Soyez Capsule"



Instance: LocationDragon
InstanceOf: Location
Title: "Location - Dragon Capsule"
Description: "Dragon capsule, part of the SpaceX Crew Dragon flight system."
* name = "Location - Dragon Capsule"


Instance: LocationBiosphere2
InstanceOf: Location
Title: "Location - Biosphere2"
Description: "Biosphere 2 ecology dome at University of Arizona"
* name = "Location - Biosphere2"


Instance: LocationLunarBuggy
InstanceOf: Location
Title: "Location - LunarBuggy"
Description: "Lunar buggy for the Artemis mission (GM / Lockheed Martin)"
* name = "Location - LunarBuggy"

Instance: LocationCyberTruck
InstanceOf: Location
Title: "Location - Cyber Truck"
Description: "Tesla cyber truck"
* name = "Location - Cyber Truck"

Instance: LocationAirlock1
InstanceOf: Location
Title: "Location - Airlock1"
Description: "Airlock 1"
* name = "Location - Airlock1"

Instance: LocationSpaceGarage
InstanceOf: Location
Title: "Location - SpaceGarage1"
Description: "Space Garage"
* name = "Location - SpaceGarage1"

Instance: LocationLunarTent1
InstanceOf: Location
Title: "Location - Lunar Tent 1"
Description: "Inflatable lunar tent with controlled atmosphere."
* name = "Location - Lunar Tent 1"


Instance: LocationCrater0
InstanceOf: Location
Title: "Location - Crater"
Description: "Lunar crater with no known scientific or industrial uses."
* name = "Location - Crater"


Instance: LocationCrater1
InstanceOf: Location
Title: "Location - Ice Crater"
Description: "Lunar crater containing ice"
* name = "Location - Ice Crater"

Instance: LocationCrater2
InstanceOf: Location
Title: "Location - Telescope Crater"
Description: "Lunar crater suitable for a space telescope."
* name = "Location - Telescope Crater"

Instance: LocationCrater3
InstanceOf: Location
Title: "Location - Habitat Crater"
Description: "Lunar micro-crater suitable for habitat construction."
* name = "Location - Habitat Crater"

Instance: LocationOrbitalReefSpaceStation
InstanceOf: SpaceLocation
Title: "Location - Orbital Reef"
Description: "Orbital Reef Space Station"
* name = "Location - Orbital Reef"

Instance: LegangePoint2
InstanceOf: SpaceLocation
Title: "Location - Legrange Point 2"
Description: "Legrange Point 2"
* name = "Location - Legrange Point 2"

Instance: KennedySpaceCenter
InstanceOf: SpaceLocation
Title: "Location - Kennedy Space Center"
Description: "Kennedy Space Center, Florida"
* name = "Location - Kennedy Space Center"

Instance: LabToOrbit
InstanceOf: SpaceLocation
Title: "Location - Lab To Orbit"
Description: "Lab To Orbit - Colorado"
* name = "Location - Lab To Orbit"


// Comprehensive Location Profiles for Aerospace Medicine Implementation Guide
// Addresses location reference inconsistencies and provides complete facility coverage

// =====================================================
// TRAINING FACILITY LOCATIONS
// =====================================================

// Neutral Buoyancy and Underwater Training Facilities
Instance: NASANeutralBuoyancyLaboratory
InstanceOf: NeutralBuoyancyFacility
Title: "NASA Neutral Buoyancy Laboratory"
Description: "NASA's Neutral Buoyancy Laboratory at Johnson Space Center, Houston, Texas"
* name = "NASA Neutral Buoyancy Laboratory (NBL)"
* description = "202 x 102 x 40 feet deep training pool for EVA simulation"
* address.line = "2101 NASA Parkway"
* address.city = "Houston"
* address.state = "TX"
* address.postalCode = "77058"
* address.country = "US"

Instance: EuropeanAstronautCentreNBL
InstanceOf: NeutralBuoyancyFacility  
Title: "European Astronaut Centre NBL"
Description: "ESA's neutral buoyancy facility in Cologne, Germany"
* name = "European Astronaut Centre NBL"
* description = "Columbus Laboratory training facility with underwater EVA simulation"
* address.city = "Cologne"
* address.country = "DE"

Instance: YuriGagarinCosmonautTrainingCenter
InstanceOf: NeutralBuoyancyFacility
Title: "Yuri Gagarin Cosmonaut Training Center"
Description: "Russian cosmonaut training facility with underwater training capabilities"
* name = "Yuri Gagarin Cosmonaut Training Center"
* description = "Star City underwater training complex"
* address.city = "Star City"
* address.country = "RU"

Instance: CSADavidFloridaLaboratory
InstanceOf: NeutralBuoyancyFacility
Title: "CSA David Florida Laboratory"
Description: "Canadian Space Agency testing facility"
* name = "David Florida Laboratory"
* description = "Canadian space systems testing and training facility"
* address.city = "Ottawa"
* address.state = "ON"
* address.country = "CA"

// Hyperbaric Medicine Facilities
Instance: BrooksAerospaceMedicine
InstanceOf: Location
Title: "Brooks School of Aerospace Medicine"
Description: "USAF School of Aerospace Medicine hyperbaric facility"
* name = "Brooks School of Aerospace Medicine"
* description = "Military aerospace medicine training and hyperbaric treatment center"
* address.city = "San Antonio"
* address.state = "TX"
* address.country = "US"

Instance: NavalMedicalResearchUnit
InstanceOf: Location
Title: "Naval Medical Research Unit"
Description: "US Navy diving medicine and hyperbaric research facility"
* name = "Naval Medical Research Unit Dayton"
* description = "Navy diving medicine research and hyperbaric treatment"
* address.city = "Dayton"
* address.state = "OH"
* address.country = "US"

Instance: UniversityOfPennsylvaniaHyperbaric
InstanceOf: Location
Title: "University of Pennsylvania Hyperbaric Center"
Description: "Academic hyperbaric medicine and research center"
* name = "University of Pennsylvania Hyperbaric Center"
* description = "Academic medical center with hyperbaric chambers"
* address.city = "Philadelphia"
* address.state = "PA"
* address.country = "US"

// =====================================================
// UNDERWATER ANALOG TRAINING LOCATIONS
// =====================================================

Instance: AquariusUnderwaterLaboratory
InstanceOf: Location
Title: "Aquarius Underwater Laboratory"
Description: "NOAA's Aquarius underwater research station used for NEEMO missions"
* name = "Aquarius Underwater Laboratory"
* description = "Underwater habitat 62 feet deep off Key Largo for saturation diving training"
* address.city = "Key Largo"
* address.state = "FL"
* address.country = "US"

Instance: Biosphere2UnderseaHabitat
InstanceOf: Location
Title: "Biosphere 2 Undersea Habitat"
Description: "University of Arizona Biosphere 2 analog training facility"
* name = "Biosphere 2 Analog Research Facility"
* description = "Closed ecological system and analog training environment"
* address.city = "Oracle"
* address.state = "AZ"
* address.country = "US"

Instance: CHESAUnderseaLaboratory
InstanceOf: Location
Title: "CHESA Undersea Laboratory"
Description: "Commercial underwater training facility"
* name = "Commercial Hyperbaric Emergency Services Association (CHESA)"
* description = "Commercial diving medicine and emergency response training"
* address.city = "Morgan City"
* address.state = "LA"
* address.country = "US"

// =====================================================
// SPACECRAFT AND ORBITAL LOCATIONS
// =====================================================

Instance: InternationalSpaceStationCupola
InstanceOf: SpaceLocation
Title: "ISS Cupola Module"
Description: "International Space Station Cupola observation module"
* name = "ISS Cupola"
* description = "Seven-windowed observatory module for Earth observation and spacecraft operations"

Instance: InternationalSpaceStationUnity
InstanceOf: SpaceLocation
Title: "ISS Unity Node"
Description: "International Space Station Unity connecting node"
* name = "ISS Unity Node"
* description = "Central connecting module with life support and crew quarters"

Instance: InternationalSpaceStationDestiny
InstanceOf: SpaceLocation
Title: "ISS Destiny Laboratory"
Description: "International Space Station US laboratory module"
* name = "ISS Destiny Laboratory"
* description = "Primary US research laboratory module"

Instance: InternationalSpaceStationColumbus
InstanceOf: SpaceLocation
Title: "ISS Columbus Laboratory"
Description: "International Space Station European laboratory module"
* name = "ISS Columbus Laboratory"
* description = "European Space Agency research laboratory module"

Instance: InternationalSpaceStationKibo
InstanceOf: SpaceLocation
Title: "ISS Kibo Laboratory"
Description: "International Space Station Japanese laboratory module"
* name = "ISS Kibo Laboratory Complex"
* description = "Japanese Experiment Module with external platform"

Instance: InternationalSpaceStationZvezda
InstanceOf: SpaceLocation
Title: "ISS Zvezda Service Module"
Description: "International Space Station Russian service module with enhanced shielding"
* name = "ISS Zvezda Service Module"
* description = "Russian service module providing life support and crew quarters"

// Commercial Spacecraft
Instance: CrewDragonEndeavour
InstanceOf: SpaceVehicle
Title: "Crew Dragon Endeavour"
Description: "SpaceX Crew Dragon spacecraft Endeavour"
* name = "Crew Dragon Endeavour"
* description = "SpaceX commercial crew vehicle for ISS transportation"

Instance: CrewDragonResilience
InstanceOf: SpaceVehicle
Title: "Crew Dragon Resilience"
Description: "SpaceX Crew Dragon spacecraft Resilience"
* name = "Crew Dragon Resilience"
* description = "SpaceX commercial crew vehicle for long-duration missions"

Instance: SoyuzMS
InstanceOf: SpaceVehicle
Title: "Soyuz MS Spacecraft"
Description: "Russian Soyuz MS crew vehicle"
* name = "Soyuz MS"
* description = "Russian three-person crew vehicle for ISS access"

Instance: StarlinerCalypso
InstanceOf: SpaceVehicle
Title: "Boeing Starliner Calypso"
Description: "Boeing CST-100 Starliner spacecraft"
* name = "Boeing Starliner Calypso"
* description = "Boeing commercial crew vehicle for ISS missions"

// =====================================================
// FUTURE SPACE DESTINATIONS
// =====================================================

Instance: LunarGatewayHALO
InstanceOf: SpaceLocation
Title: "Lunar Gateway HALO Module"
Description: "Lunar Gateway Habitation and Logistics Outpost"
* name = "Gateway HALO (Habitation and Logistics Outpost)"
* description = "Primary crew quarters and life support for Lunar Gateway station"

Instance: LunarGatewayPPE
InstanceOf: SpaceLocation
Title: "Lunar Gateway Power and Propulsion Element"
Description: "Lunar Gateway Power and Propulsion Element"
* name = "Gateway PPE (Power and Propulsion Element)"
* description = "Solar electric propulsion and power generation for Gateway"

Instance: ArtemisBaseCampHabitat
InstanceOf: SpaceLocation
Title: "Artemis Base Camp Habitat"
Description: "Artemis lunar surface habitat module"
* name = "Artemis Base Camp Habitat"
* description = "Pressurized lunar surface habitat for extended stays"

Instance: LunarSouthPoleBases
InstanceOf: SpaceLocation
Title: "Lunar South Pole Base"
Description: "Permanent lunar base near the South Pole"
* name = "Lunar South Pole Research Station"
* description = "Permanent research facility with access to water ice deposits"

Instance: ShackletonCraterBase
InstanceOf: SpaceLocation
Title: "Shackleton Crater Base"
Description: "Research station at Shackleton Crater rim"
* name = "Shackleton Crater Research Station"
* description = "Research facility for lunar ice mining and astronomy"

// Mars Mission Locations
Instance: MarsTransitVehicle
InstanceOf: SpaceVehicle
Title: "Mars Transit Vehicle"
Description: "Deep space transport for Mars missions"
* name = "Mars Transit Vehicle"
* description = "Long-duration spacecraft for interplanetary travel"

Instance: MarsAscentVehicle
InstanceOf: SpaceVehicle
Title: "Mars Ascent Vehicle"
Description: "Mars surface to orbit transport"
* name = "Mars Ascent Vehicle"
* description = "Single-stage vehicle for Mars surface departure"

Instance: MarsBaseAlpha
InstanceOf: SpaceLocation
Title: "Mars Base Alpha"
Description: "First permanent Mars surface base"
* name = "Mars Base Alpha"
* description = "Primary human settlement on Mars surface"

// =====================================================
// LAGRANGE POINT LOCATIONS
// =====================================================

Instance: JamesWebbSpaceTelescope
InstanceOf: SpaceLocation
Title: "James Webb Space Telescope Location"
Description: "James Webb Space Telescope at Sun-Earth L2"
* name = "James Webb Space Telescope (L2)"
* description = "Deep space observatory at Lagrange Point 2"

Instance: SunEarthL1Station
InstanceOf: SpaceLocation
Title: "Sun-Earth L1 Observatory"
Description: "Space weather monitoring station at L1"
* name = "Sun-Earth L1 Observatory"
* description = "Solar observation and space weather early warning station"

Instance: EarthMoonL4L5Stations
InstanceOf: SpaceLocation
Title: "Earth-Moon L4/L5 Stations"
Description: "Space habitats at Earth-Moon Lagrange points"
* name = "Earth-Moon Lagrange Point Stations"
* description = "O'Neill cylinder space habitats at stable Lagrange points"

// =====================================================
// TRAINING AND SIMULATION FACILITIES
// =====================================================

// Aviation Training Facilities
Instance: EdwardsAirForceBase
InstanceOf: Location
Title: "Edwards Air Force Base"
Description: "USAF Test Pilot School and aerospace medicine research"
* name = "Edwards Air Force Base"
* description = "Flight test center with aerospace medicine research capabilities"
* address.city = "Edwards"
* address.state = "CA"
* address.country = "US"

Instance: PatuxentRiverNavalAirStation
InstanceOf: Location
Title: "Patuxent River Naval Air Station"
Description: "US Navy Test Pilot School"
* name = "Naval Air Station Patuxent River"
* description = "Navy test pilot training with altitude chambers"
* address.city = "Patuxent River"
* address.state = "MD"
* address.country = "US"

// Altitude and Environmental Training
Instance: BrooksAltitudeChamber
InstanceOf: Location
Title: "Brooks Altitude Chamber"
Description: "High-altitude environmental training facility"
* name = "Brooks Altitude Chamber Complex"
* description = "Hypobaric chambers for altitude and pressure training"
* address.city = "San Antonio"
* address.state = "TX"
* address.country = "US"

Instance: WrightPattersonAerospaceResearch
InstanceOf: Location
Title: "Wright-Patterson Aerospace Research Laboratory"
Description: "USAF aerospace medicine research facility"
* name = "Wright-Patterson AFB Aerospace Research Laboratory"
* description = "Advanced aerospace medicine research and training"
* address.city = "Dayton"
* address.state = "OH"
* address.country = "US"

// Centrifuge Training Facilities
Instance: NASAAmesResearchCenter
InstanceOf: Location
Title: "NASA Ames Research Center"
Description: "NASA Ames centrifuge and spatial disorientation research"
* name = "NASA Ames Research Center"
* description = "20G centrifuge and spatial disorientation research facility"
* address.city = "Mountain View"
* address.state = "CA"
* address.country = "US"

Instance: ESACentrfugeCologne
InstanceOf: Location
Title: "ESA Human Centrifuge"
Description: "European Space Agency centrifuge facility"
* name = "ESA Human Centrifuge"
* description = "8m radius centrifuge for astronaut training and research"
* address.city = "Cologne"
* address.country = "DE"

Instance: NASCOMRussianCentrifuge
InstanceOf: Location
Title: "TsPK Centrifuge Complex"
Description: "Russian cosmonaut centrifuge training facility"
* name = "TsPK Centrifuge Complex"
* description = "18m radius centrifuge for high-G training"
* address.city = "Star City"
* address.country = "RU"

// =====================================================
// MEDICAL AND RESEARCH FACILITIES
// =====================================================

// Space Medicine Research Centers
Instance: UTMBAerospaceResearch
InstanceOf: Location
Title: "UTMB Aerospace Medicine Research"
Description: "University of Texas Medical Branch aerospace medicine program"
* name = "UTMB Aerospace Medicine Division"
* description = "Academic aerospace medicine research and residency training"
* address.city = "Galveston"
* address.state = "TX"
* address.country = "US"

Instance: MayoAerospaceMedicine
InstanceOf: Location
Title: "Mayo Clinic Aerospace Medicine"
Description: "Mayo Clinic aerospace medicine and altitude research"
* name = "Mayo Clinic Aerospace Medicine"
* description = "Civilian aerospace medicine practice and research"
* address.city = "Rochester"
* address.state = "MN"
* address.country = "US"

Instance: KSCMedicalFacility
InstanceOf: Location
Title: "Kennedy Space Center Medical Facility"
Description: "KSC astronaut medical support facility"
* name = "Kennedy Space Center Medical Operations"
* description = "Pre-launch and post-landing medical support"
* address.city = "Cape Canaveral"
* address.state = "FL"
* address.country = "US"

// International Space Medicine Centers
Instance: DLRAerospaceMedicine
InstanceOf: Location
Title: "DLR Institute of Aerospace Medicine"
Description: "German Aerospace Center medical research institute"
* name = "DLR Institute of Aerospace Medicine"
* description = "European aerospace medicine research and astronaut medical support"
* address.city = "Cologne"
* address.country = "DE"

Instance: JAXA_SpaceBiomedicalResearch
InstanceOf: Location
Title: "JAXA Space Biomedical Research Office"
Description: "Japan Aerospace Exploration Agency medical research"
* name = "JAXA Space Biomedical Research Office"
* description = "Japanese space medicine research and astronaut medical support"
* address.city = "Tsukuba"
* address.country = "JP"

Instance: CSA_LifeSciencesResearch
InstanceOf: Location
Title: "CSA Life Sciences Research"
Description: "Canadian Space Agency life sciences research division"
* name = "Canadian Space Agency Life Sciences"
* description = "Canadian space medicine and life sciences research"
* address.city = "Saint-Hubert"
* address.state = "QC"
* address.country = "CA"

// =====================================================
// COMMERCIAL SPACE FACILITIES
// =====================================================

// SpaceX Facilities
Instance: SpaceXHawthorneFactory
InstanceOf: Location
Title: "SpaceX Hawthorne Factory"
Description: "SpaceX manufacturing and mission control facility"
* name = "SpaceX Hawthorne Facility"
* description = "Dragon spacecraft manufacturing and mission operations"
* address.city = "Hawthorne"
* address.state = "CA"
* address.country = "US"

Instance: SpaceXBocaChica
InstanceOf: Location
Title: "SpaceX Starbase"
Description: "SpaceX Starship development and launch facility"
* name = "SpaceX Starbase"
* description = "Starship and Super Heavy development facility"
* address.city = "Boca Chica"
* address.state = "TX"
* address.country = "US"

// Blue Origin Facilities
Instance: BlueOriginWestTexas
InstanceOf: Location
Title: "Blue Origin West Texas Facility"
Description: "Blue Origin suborbital flight operations"
* name = "Blue Origin West Texas"
* description = "New Shepard suborbital tourist flights and crew training"
* address.city = "Van Horn"
* address.state = "TX"
* address.country = "US"

// Virgin Galactic
Instance: VirginGalacticSpaceport
InstanceOf: Location
Title: "Spaceport America"
Description: "Virgin Galactic commercial spaceport"
* name = "Spaceport America"
* description = "Commercial suborbital spaceflight operations"
* address.city = "Truth or Consequences"
* address.state = "NM"
* address.country = "US"

// =====================================================
// LOCATION HIERARCHY AND RELATIONSHIPS
// =====================================================

// Location Management Extensions
Extension: LocationHierarchy
Id: location-hierarchy
Title: "Location Hierarchy"
Description: "Hierarchical relationship between locations (parent/child)"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only Reference(Location)

Extension: LocationCapabilities
Id: location-capabilities
Title: "Location Capabilities"
Description: "Specific capabilities and equipment available at location"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only CodeableConcept

Extension: OperationalStatus
Id: operational-status
Title: "Operational Status"
Description: "Current operational status of the facility"
* ^context[0].type = #element
* ^context[0].expression = "Location"
* value[x] only code
* valueCode from OperationalStatusVS


// =====================================================
// OPERATIONAL STATUS CODE SYSTEM
// =====================================================

CodeSystem: OperationalStatusCS
Id: operational-status-cs
Title: "Operational Status Code System"
Description: "Operational status codes for facilities and vehicles"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/operational-status-cs"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 International / Aerospace Medicine"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/aerospace"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* #active "Active and operational" "The facility or vehicle is currently active and operational"
* #maintenance "Under maintenance" "The facility or vehicle is temporarily offline for maintenance"
* #standby "Standby/ready state" "The facility or vehicle is in standby mode, ready for activation"
* #inactive "Inactive/offline" "The facility or vehicle is inactive or offline"
* #decommissioned "Permanently decommissioned" "The facility or vehicle has been permanently decommissioned"
* #construction "Under construction" "The facility or vehicle is currently under construction"
* #planning "In planning phase" "The facility or vehicle is in the planning phase"

// =====================================================
// LOCATION CAPABILITIES CODE SYSTEM
// =====================================================

CodeSystem: LocationCapabilitiesCS
Id: location-capabilities-cs
Title: "Location Capabilities Code System"
Description: "Capabilities and services available at aerospace medicine locations"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-capabilities-cs"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 International / Aerospace Medicine"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/aerospace"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* #eva-simulation "EVA Simulation Training" "Facility capable of extravehicular activity simulation training"
* #hyperbaric-treatment "Hyperbaric Treatment" "Facility with hyperbaric oxygen therapy capabilities"
* #secure-communication "Secure Communication" "Facility with secure communication systems"
* #altitude-chamber "Altitude Chamber Training" "Facility with altitude chamber for hypobaric training"
* #centrifuge-training "Centrifuge Training" "Facility with centrifuge for high-G training"
* #medical-emergency "Emergency Medical Services" "Facility with emergency medical response capabilities"
* #radiation-monitoring "Radiation Monitoring" "Facility with radiation detection and monitoring systems"
* #psychological-support "Psychological Support Services" "Facility with psychological counseling and support services"
* #rehabilitation "Medical Rehabilitation" "Facility with medical rehabilitation services"
* #research-laboratory "Research Laboratory" "Facility with research laboratory capabilities"
* #neutral-buoyancy "Neutral Buoyancy Training" "Facility with underwater neutral buoyancy training pool"
* #mission-control "Mission Control" "Facility with mission control and monitoring capabilities"
* #life-support-testing "Life Support Testing" "Facility for testing life support systems"
* #spacesuit-testing "Spacesuit Testing" "Facility for spacesuit testing and validation"

// =====================================================
// UPDATED VALUE SETS WITH PROPER SYSTEM REFERENCES
// =====================================================

ValueSet: OperationalStatusVS
Id: operational-status-vs
Title: "Operational Status Value Set"
Description: "Operational status codes for facilities and vehicles"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/operational-status-vs"
* ^experimental = false
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 International / Aerospace Medicine"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/aerospace"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* include codes from system OperationalStatusCS

ValueSet: LocationCapabilitiesVS
Id: location-capabilities-vs
Title: "Location Capabilities Value Set"
Description: "Capabilities and services available at aerospace medicine locations"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/location-capabilities-vs"
* ^experimental = false
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 International / Aerospace Medicine"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/aerospace"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* include codes from system LocationCapabilitiesCS

// =====================================================
// ALIAS DEFINITIONS (if needed in other files)
// =====================================================

// Add these aliases to files that need to reference these systems
Alias: $operational-status = http://hl7.org/fhir/uv/aerospace/CodeSystem/operational-status-cs
Alias: $location-capabilities = http://hl7.org/fhir/uv/aerospace/CodeSystem/location-capabilities-cs
// =====================================================
// LOCATION SUMMARY AND RECOMMENDATIONS
// =====================================================

/*
COMPREHENSIVE LOCATION LIST FOR AEROSPACE MEDICINE IG:

TRAINING FACILITIES (20+ locations):
- Neutral Buoyancy: NASA NBL, ESA NBL, Russian facilities
- Hyperbaric Medicine: Brooks, Navy facilities, academic centers
- Underwater Analogs: Aquarius, Biosphere 2, commercial facilities
- Altitude Training: Brooks chambers, Wright-Patterson, international
- Centrifuge Training: Ames, ESA, Russian facilities
- Flight Training: Edwards AFB, Patuxent River, test pilot schools

OPERATIONAL SPACECRAFT (15+ vehicles):
- ISS Modules: Unity, Destiny, Columbus, Kibo, Zvezda, Cupola
- Commercial Crew: Crew Dragon variants, Soyuz MS, Starliner
- Future Vehicles: Mars Transit, Lunar landers, deep space craft

SPACE DESTINATIONS (10+ locations):
- Current: International Space Station modules
- Near Future: Lunar Gateway, Artemis Base Camp
- Future: Mars bases, Lagrange point stations, deep space observatories

MEDICAL FACILITIES (15+ centers):
- NASA: JSC, KSC, Ames medical facilities
- Military: Brooks, Wright-Patterson, Navy research units
- Academic: UTMB, Mayo Clinic, international universities
- International: DLR, JAXA, CSA medical research centers

COMMERCIAL FACILITIES (10+ sites):
- SpaceX: Hawthorne, Starbase, Dragon operations
- Blue Origin: West Texas, New Glenn facilities
- Virgin Galactic: Spaceport America, tourist operations
- Future: Orbital Reef, commercial stations

REGULATORY CONSIDERATIONS:
- Each location requires specific compliance tracking
- International facilities need harmonized standards
- Commercial locations need integrated oversight
- Emergency response capabilities at all sites

HARMONIZATION RECOMMENDATIONS:
1. Standardize location identifiers across all profiles
2. Create clear hierarchy relationships (facility > module > compartment)
3. Implement capability-based location filtering
4. Establish emergency response location networks
5. Track regulatory compliance by jurisdiction
6. Enable secure communication system mapping
7. Coordinate medical equipment inventory across sites
8. Establish patient transfer protocols between facilities

This comprehensive location framework ensures that all aerospace medicine
activities can be properly geocoded and related to appropriate facilities,
supporting both operational medicine and research data collection.
*/