// Artemis Example Instances
// Concrete examples for missions, locations, EVAs, devices, plans

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org
Alias: $obs-cat = http://terminology.hl7.org/CodeSystem/observation-category

// =====================================================
// ENCOUNTER: Artemis III Mission
// =====================================================

Instance: Artemis-IV-Mission
InstanceOf: Encounter
Title: "Artemis IV Mission Encounter"
Description: "Encounter representing the entire Artemis IV mission from launch to splashdown"
Usage: #example
* insert SyntheticExample

* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/ExampleAstronaut)
* period.start = "2027-09-01T00:00:00Z"

// =====================================================
// LOCATION: Malapert Massif Landing Site
// =====================================================

Instance: Malapert-Massif-Landing-Site
InstanceOf: HabitatLocation
Title: "Malapert Massif Landing Site"
Description: "Artemis IV landing site at Malapert Massif, lunar south pole region"
Usage: #example
* insert SyntheticExample

* name = "Artemis IV Landing Site - Malapert Massif"
* description = "High-elevation site near lunar south pole (86°S, 0°E) with near-continuous sunlight access and proximity to permanently shadowed craters. Malapert Mountain provides elevated terrain for communications and solar power."
* status = #active
* mode = #instance

* type = LocationTypeCS#landing-site "Landing Site"
* type.text = "Lunar surface landing site"

* position.latitude = -86.0
* position.longitude = 0.0
* position.altitude = 5000

* extension[lunarCoordinates].extension[latitude].valueDecimal = -86.0
* extension[lunarCoordinates].extension[longitude].valueDecimal = 0.0

// =====================================================
// LOCATION: Gateway HALO Module
// =====================================================

Instance: Gateway-HALO-Module
InstanceOf: HabitatLocation
Title: "Lunar Gateway HALO Module"
Description: "Habitation and Logistics Outpost module of Lunar Gateway in NRHO"
Usage: #example
* insert SyntheticExample

* name = "Lunar Gateway - HALO Module"
* description = "Primary habitation module of Lunar Gateway in Near-Rectilinear Halo Orbit (NRHO). Provides crew quarters, life support, and logistics for Artemis missions."
* status = #active
* mode = #instance

* type = LocationTypeCS#orbital-station "Orbital Station"
* type.text = "Lunar orbital habitat module"

* extension[radiationShielding].extension[shieldingMass].valueQuantity.value = 12.5
* extension[radiationShielding].extension[shieldingMass].valueQuantity.unit = "g/cm²"
* extension[radiationShielding].extension[shieldingMass].valueQuantity.system = $ucum
* extension[radiationShielding].extension[shieldingMass].valueQuantity.code = #g/cm2
* extension[radiationShielding].extension[shieldingComposition].valueString = "Aluminum alloy with polyethylene water walls"

// =====================================================
// DEVICE: xEMU Suit #001
// =====================================================

Instance: xEMU-Suit-001
InstanceOf: Device
Title: "xEMU EVA Suit #001"
Description: "First xEMU suit certified for Artemis IV lunar surface EVAs"
Usage: #example
* insert SyntheticExample

* deviceName.name = "xEMU Suit Serial #001"
* deviceName.type = #user-friendly-name
* type = ArtemisCertifiedDevicesCS#xemu-suit "xEMU EVA Suit"
* type.text = "Exploration Extravehicular Mobility Unit"
* manufacturer = "Axiom Space"
* status = #active

// =====================================================
// DEVICE: Starship HLS
// =====================================================

Instance: Starship-HLS-Artemis-IV
InstanceOf: Device
Title: "Starship HLS for Artemis IV"
Description: "SpaceX Starship Human Landing System variant for Artemis IV lunar landing"
Usage: #example
* insert SyntheticExample

* deviceName.name = "Starship HLS (Artemis III)"
* deviceName.type = #user-friendly-name
* type = ArtemisCertifiedDevicesCS#starship-hls "Starship Human Landing System"
* type.text = "Human Landing System"
* manufacturer = "SpaceX"
* status = #active

// =====================================================
// PROCEDURE: Artemis III EVA-1
// =====================================================

Instance: Artemis-IV-EVA-1
InstanceOf: EVAProcedure
Title: "Artemis IV EVA-1"
Description: "First lunar surface EVA of Artemis IV mission at Malapert Massif"
Usage: #example
* insert SyntheticExample

* status = #completed
* code = SpaceProcedureCS#eva "Extravehicular Activity"
* code.text = "Extravehicular Activity (EVA)"

* subject = Reference(Patient/ExampleAstronaut)
* performedPeriod.start = "2027-09-10T08:00:00Z"
* performedPeriod.end = "2027-09-10T14:30:00Z"

* location.reference = "Location/Malapert-Massif-Landing-Site"
* location.display = "Malapert Massif Landing Site"

* usedReference[0] = Reference(Device/xEMU-Suit-001)

* performer[0].actor = Reference(Patient/ExampleAstronaut)
* performer[0].actor.display = "Jane Astronaut"

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[evaNumber].valueString = "EVA-1"

// =====================================================
// PROCEDURE: Artemis III EVA-2
// =====================================================

Instance: Artemis-IV-EVA-2
InstanceOf: EVAProcedure
Title: "Artemis IV EVA-2"
Description: "Second lunar surface EVA of Artemis IV mission exploring shadowed crater"
Usage: #example
* insert SyntheticExample

* status = #completed
* code = SpaceProcedureCS#eva "Extravehicular Activity"
* code.text = "Extravehicular Activity (EVA)"

* subject = Reference(Patient/ExampleAstronaut)
* performedPeriod.start = "2027-09-12T09:00:00Z"
* performedPeriod.end = "2027-09-12T16:00:00Z"

* location.reference = "Location/Malapert-Massif-Landing-Site"
* location.display = "Malapert Massif Landing Site - Crater exploration"

* usedReference[0] = Reference(Device/xEMU-Suit-001)

* performer[0].actor = Reference(Patient/ExampleAstronaut)
* performer[0].actor.display = "Jane Astronaut"

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
* extension[evaNumber].valueString = "EVA-2"

// =====================================================
// OBSERVATION: Deep Space Radiation Exposure
// =====================================================

Instance: Artemis-IV-Translunar-Radiation
InstanceOf: ArtemisRadiationExposure
Title: "Artemis IV Translunar Radiation Exposure"
Description: "Cumulative radiation dose during 4-day translunar cruise"
Usage: #example
* insert SyntheticExample

* status = #final
* category[laboratory] = $obs-cat#laboratory

* code = ArtemisRadiationMeasureCS#cumulative-dose "Cumulative Radiation Dose"

* subject = Reference(Patient/ExampleAstronaut)
* effectivePeriod.start = "2027-09-01T10:00:00Z"
* effectivePeriod.end = "2027-09-05T10:00:00Z"

* valueQuantity.value = 3.2
* valueQuantity.unit = "mSv"
* valueQuantity.system = $ucum
* valueQuantity.code = #mSv

* component[radiationSource].code = ArtemisRadiationMeasureCS#radiation-source "Radiation Source"
* component[radiationSource].valueCodeableConcept = SpaceRadiationTypeCS#gcr "Galactic Cosmic Radiation"

* component[shieldingCondition].code = ArtemisRadiationMeasureCS#shielding-condition "Shielding Condition"
* component[shieldingCondition].valueCodeableConcept = ShieldingConditionCS#nominal-shielding "Nominal Shielding"
* component[shieldingCondition].valueCodeableConcept.text = "Orion crew module nominal aluminum shielding (~10 g/cm²)"

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)

// =====================================================
// OBSERVATION: Surface EVA Radiation Exposure
// =====================================================

Instance: Artemis-IV-EVA1-Radiation
InstanceOf: ArtemisRadiationExposure
Title: "Artemis IV EVA-1 Radiation Exposure"
Description: "Radiation dose during first lunar surface EVA (6.5 hours unshielded)"
Usage: #example
* insert SyntheticExample

* status = #final
* category[laboratory] = $obs-cat#laboratory

* code = ArtemisRadiationMeasureCS#dose-rate "Radiation Dose Rate"

* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2027-09-10T11:00:00Z"

* valueQuantity.value = 0.15
* valueQuantity.unit = "mSv/hr"
* valueQuantity.system = $ucum
* valueQuantity.code = #mSv/h

* component[radiationSource].code = ArtemisRadiationMeasureCS#radiation-source "Radiation Source"
* component[radiationSource].valueCodeableConcept = SpaceRadiationTypeCS#gcr "Galactic Cosmic Radiation"

* component[shieldingCondition].code = ArtemisRadiationMeasureCS#shielding-condition "Shielding Condition"
* component[shieldingCondition].valueCodeableConcept = ShieldingConditionCS#minimal-shielding "Minimal Shielding"
* component[shieldingCondition].valueCodeableConcept.text = "Lunar surface EVA - suit fabric only (~0.3 g/cm²)"

* partOf = Reference(Procedure/Artemis-IV-EVA-1)
* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)

// =====================================================
// PLAN DEFINITION: Artemis III Mission Plan
// =====================================================

Instance: Artemis-IV-Mission-Plan
InstanceOf: MissionPlan
Title: "Artemis IV Mission Plan"
Description: "Complete mission plan for Artemis IV including phases, timelines, and EVA schedules"
Usage: #example
* insert SyntheticExample

* status = #active
* title = "Artemis IV Mission Plan - First Crewed Lunar South Pole Landing"
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#workflow-definition "Workflow Definition"
* description = "Artemis IV mission to land crew at Malapert Massif region, conduct 2 surface EVAs over 6.5 days, and return. Objectives include lunar south pole exploration, ice sample collection, xEMU suit validation, and Starship-HLS demonstration."

* action[0].title = "Launch"
* action[0].description = "SLS launch from Kennedy Space Center with Orion crew vehicle. Target: 2027-09-01, T+0 hours."

* action[1].title = "Translunar Cruise"
* action[1].description = "4-day transit from Earth to lunar orbit with health monitoring and radiation dosimetry. Duration: T+10 hours to T+106 hours (4 days)."

* action[2].title = "Gateway Docking"
* action[2].description = "Orion docks with Lunar Gateway HALO module. Planned: T+108 hours, duration 2 hours."

* action[3].title = "HLS Transfer and Descent"
* action[3].description = "Crew transfers to Starship HLS and descends to Malapert Massif landing site. Planned: Mission day 6, duration 10 hours."

* action[4].title = "Surface Operations EVA-1"
* action[4].description = "First lunar surface EVA - site characterization and sample collection. Planned: Mission day 10, duration 6.5 hours."

* action[5].title = "Surface Operations EVA-2"
* action[5].description = "Second lunar surface EVA - shadowed crater exploration and ice sampling. Planned: Mission day 12, duration 7 hours."

* action[6].title = "Ascent and Gateway Rendezvous"
* action[6].description = "HLS ascent from lunar surface and rendezvous with Gateway. Planned: Mission day 13, duration 10 hours."

* action[7].title = "Trans-Earth Injection"
* action[7].description = "Orion departs Gateway for return to Earth. Planned: Mission day 15, duration 30 minutes (propulsive maneuver)."

* action[8].title = "Splashdown"
* action[8].description = "Orion splashdown in Pacific Ocean. Planned: Mission day 20, entry interface to splashdown 30 minutes."

* extension[missionContext].valueReference = Reference(Encounter/Artemis-IV-Mission)
