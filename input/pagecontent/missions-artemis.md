### Overview

On November 16, 2022, at 1:47 AM EST, the Space Launch System rocket lit up the night sky over Kennedy Space Center. Riding atop this most powerful rocket ever built was Orion—an uncrewed capsule bound for lunar orbit. Artemis I had begun. For 25.5 days, Orion flew farther from Earth than any spacecraft designed for humans had ever gone, testing heat shields, life support systems, and navigation in deep space. It splashed down in the Pacific Ocean on December 11, 2022, proving that the hardware worked. **But hardware is only half the story.** The Artemis program is not about sending machines to the Moon—it's about sending people. And people are fragile.

Artemis II (planned for 2026) will be the first crewed lunar flyby since Apollo 17 in 1972. Artemis III (planned for 2027) will be a crewed low-Earth orbit test flight preparing systems for future lunar landings. Artemis IV (planned for 2028) will be the first crewed lunar landing, at the south pole, and Artemis IV and V will also establish the Lunar Gateway space station and begin constructing an Artemis Base Camp on the surface, enabling sustained human presence beyond low-Earth orbit for the first time. These missions will test technologies, countermeasures, and medical protocols for eventual Mars missions—2-3 year journeys where there is no quick abort, no resupply, and no evacuation option.

The question that keeps mission planners awake at night is not whether the rockets will work or the habitats will seal. It's whether the crew will remain healthy—physically and psychologically—in an environment that evolution never prepared us for. **Artemis astronauts will face radiation exposure far exceeding ISS levels, bone and muscle loss in 1/6th gravity, circadian disruption from extreme lunar day-night cycles, isolation in cramped habitats, and the constant risk of equipment failure with no immediate rescue.** Every heartbeat, every milligram of cortisol, every hour of sleep, every rad of radiation dose must be tracked, correlated, and analyzed to ensure crew safety and mission success.

### Mission Timeline and Data Architecture

#### Mission Timeline

The images below are NASA mission maps for each flight. Note that the lunar landing mission map was drawn in 2022 for what was then Artemis III; this guide models that landing as Artemis IV.

**Artemis I** - Uncrewed test flight, November 16 - December 11, 2022  
![Artemis I Mission](artemis_i_mission_2021.jpg){:width="100%"}  

**Artemis II** - First crewed lunar flyby since Apollo 17, planned 2026  
![Artemis II Mission](artemis_ii_mission_october_2021.jpeg){:width="100%"}  

**Artemis III** - Crewed low-Earth orbit test flight, planned 2027

**Artemis IV** - First crewed lunar landing mission at the south pole, planned 2028  

**Artemis V** - Expanding Artemis Base Camp and sustained lunar presence, planned 2029  

**Artemis VI–XXX** - As of the Artemis IGNITE conference, the program anticipates 28+ lunar landings. Missions VI through XXX are placeholder entries in the CodeSystem for simulation, planning, and forecasting as mission profiles are defined.

#### Core Concepts

Artemis missions introduce unique data modeling requirements distinct from ISS operations:

- **Mission Context**: Unlike ISS (continuous habitation with regular crew rotation), Artemis missions are discrete expeditions with defined phases: launch, translunar injection, lunar orbit, descent, surface operations, ascent, trans-Earth injection, and re-entry. All health and environmental data must be tagged with mission ID and phase.

- **Deep Space Environment**: Beyond Earth's magnetosphere, crews face galactic cosmic rays and solar particle events at doses 2-3 orders of magnitude higher than LEO. Continuous dosimetry, risk assessment, and shielding strategies are mission-critical.

- **Lunar Surface Operations**: 1/6th gravity (not microgravity), extreme temperature variations (as low as about -230 °C in permanently shadowed polar craters, up to about +120 °C in equatorial daylight; LRO Diviner measurements, Paige et al. 2010), lunar dust exposure, and EVA operations in South Pole terrain with permanent shadows and high illumination ridges.

- **Distributed Infrastructure**: Gateway (lunar orbit station), Human Landing System (Starship-HLS), Orion crew vehicle, lunar surface habitats, and Lunar Terrain Vehicle—each with distinct life support, telemetry, and medical capabilities.

- **Communication Latency**: Minimal for lunar missions (~1.3 second one-way light time), but this architecture must scale to Mars missions with 3-20 minute delays—requiring asynchronous data exchange and autonomous medical decision support.

#### Data Architecture

Artemis health data spans multiple interconnected dimensions:

- **Mission Timeline**: Each Artemis mission follows a sequence of discrete phases—launch, translunar cruise (approximately 4 days), lunar orbit insertion, Gateway docking, HLS transfer, lunar descent, surface EVAs, ascent, and trans-Earth return. Every phase carries distinct medical protocols and risk profiles, so all health observations must be tagged with both mission identity and current phase to support meaningful analysis.

- **Radiation Dosimetry**: Beyond the magnetosphere, crews face continuous galactic cosmic ray exposure and the threat of unpredictable solar particle events. The data architecture captures real-time dose rates from active personal dosimeters, cumulative GCR exposure, SPE alert triggers, tissue-specific dose estimates, and career dose limit tracking—all linked to shielding context and crew location at time of measurement.

- **Environmental Monitoring**: Life support telemetry from habitats and suits forms a continuous stream of environmental data. This includes cabin pressure, O₂ and CO₂ partial pressures, temperature, humidity, and lunar dust particle counts inside habitats, as well as suit-level thermal regulation and consumables during EVAs.

- **Physiologic Data**: Crew health monitoring generates a broad spectrum of physiologic observations—continuous vital signs (heart rate, blood pressure, SpO₂, temperature), daily sleep quality metrics, periodic bone density and cardiovascular assessments, cognitive performance test results, and structured behavioral health surveys. Together these form the longitudinal health record that flight surgeons use to assess crew fitness in real time.

- **Operational Events**: Mission operations produce their own data stream that must be correlated with health observations. EVA schedules, habitat transfers between vehicles, emergency procedure activations, medical interventions, and equipment malfunctions all represent events that can directly affect crew health and must be captured as structured FHIR resources.

- **Location Context**: Artemis missions operate across multiple distinct environments—Gateway modules in lunar orbit, the HLS interior during transit and surface stays, and specific lunar surface regions with selenographic coordinates. Tagging observations with precise location context enables researchers to correlate health effects with environmental conditions at each site.

All measurements link to the [MissionContext](StructureDefinition-mission-context.html) extension (consistent with other IG modules) and to [ArtemisMissionCS](CodeSystem-artemis-mission-cs.html) entries (Artemis I through XXX) to enable mission-specific filtering and cross-mission analysis.

### Physiologic and Environmental Considerations

The challenges of Artemis missions are not incremental improvements over ISS operations—they are categorically different. Picture the Artemis IV crew: they have just landed at Malapert Massif, a rugged highland near the lunar south pole. Outside, the temperature in the nearby permanently shadowed craters is as low as -230 °C. The Sun hangs low on the horizon, never rising more than a few degrees—providing near-continuous daylight for solar power but casting deep, permanent shadows where no sunlight has touched the surface in billions of years. The regolith is electrostatically charged, clinging to every surface. There is no atmosphere, no magnetosphere, no protection from cosmic radiation. The crew will spend 6.5 days here, conducting two EVAs, collecting samples, and testing technologies for future Mars missions. **Every breath they take, every step they make, every moment of sleep is monitored because there is no margin for error.**

#### Beyond the Magnetosphere

- **Galactic Cosmic Rays (GCR)**: Continuous background radiation from distant supernovae—high-energy protons and heavy ions that penetrate spacecraft walls and human tissue, damaging DNA and increasing cancer risk
- **Solar Particle Events (SPE)**: Unpredictable bursts of radiation from solar flares—can deliver lethal doses in hours without adequate shielding (storm shelters in Gateway and HLS)
- **Dose Limits**: NASA's career limit is 600 mSv effective dose, regardless of age or sex (NASA-STD-3001 Volume 1 Revision C). That budget is consumed far more quickly in deep space: the Artemis I radiation instruments recorded roughly 27-36 mSv over a 25-day lunar mission (Nature 2024), so a month-long Artemis IV crew can expect a dose on the order of 30 mSv
- **ALARA Principle**: "As Low As Reasonably Achievable"—continuous dosimetry, shielding optimization, mission timeline adjustments to minimize exposure

#### Lunar Gravity and Musculoskeletal Effects

- **1/6th Gravity**: Not microgravity (like ISS) but also not Earth—sufficient to maintain some load-bearing but insufficient to prevent bone loss and muscle atrophy over weeks to months
- **EVA Countermeasures**: Walking, hopping, sample collection in EVA suits provides some resistance exercise, but not equivalent to ARED/T2 protocols
- **Post-Mission Reconditioning**: Astronauts returning from lunar surface may have different reconditioning needs than ISS crew (partial gravity vs microgravity adaptation)

#### Lunar Dust Hazards

- **Regolith Characteristics**: Jagged, electrostatically charged, abrasive particles—cling to suits, equipment, habitat surfaces
- **Inhalation Risk**: Dust tracked into habitats can cause respiratory irritation, inflammation, potential long-term lung damage (analogous to silicosis)
- **Equipment Degradation**: Dust fouls seals, jams mechanisms, scratches visors—requiring meticulous decontamination procedures

#### EVA Challenges

- **Artemis IV Plans**: Minimum two EVAs, about 6.5 days surface time, south pole terrain (slopes, boulders, shadows)
- **xEMU/AxEMU Suit**: Next-generation EVA suit with improved mobility and longer life support duration (8 hours). It can operate at a higher pressure than earlier suits (a variable-pressure design with a maximum of about 8.2 psi, compared with 3.75 psi for the Apollo suit and 4.3 psi for the current ISS suit). A higher suit pressure narrows the gap to cabin pressure and so shortens the oxygen prebreathe needed to prevent decompression sickness, at the cost of stiffer joints
- **Metabolic Demands**: EVA work rates on the order of 200-300 kcal/h averaged over Apollo lunar surface EVAs (Biomedical Results of Apollo, NASA SP-368)—comparable to brisk exercise—with limited cooling, hydration, and waste management
- **Thermal Extremes**: Suit must protect against about -230 °C in permanent shadow and up to about +120 °C in full sunlight, sometimes within the same EVA
- **Communication**: Line-of-sight only (no atmosphere for radio bounce)—Gateway relay or direct Earth link required

#### Circadian Disruption

- **Lunar Day**: 29.5 Earth days (14.75 days sunlight, 14.75 days darkness)—but south pole sites chosen for near-continuous sunlight during surface missions
- **Artificial Light-Dark Cycles**: Habitat lighting must simulate Earth day-night to maintain circadian rhythms—but external lighting cues absent or abnormal
- **Sleep Quality**: Confined spaces, operational stress, radiation concerns, suit discomfort—all degrade sleep despite adequate opportunity

#### Habitat Confinement

- **Gateway HALO Module**: A Cygnus-derived module on the order of 3 m in diameter—approximately the size of a large RV for 4 crew members (NASA Gateway overview)
- **Starship-HLS Interior**: More spacious (9-meter diameter, 18-meter pressurized height) but still confined during multi-day transits
- **Surface Hab (Future)**: Artemis Base Camp will provide larger living quarters, but early missions operate out of HLS
- **Psychological Factors**: Isolation, interpersonal friction, monotony, communication delays (minimal for Moon, but training for Mars)

### Monitoring Strategy

Artemis missions require **integrated, real-time health and environmental monitoring** with automated alerting, ground-loop medical consultation, and autonomous crew decision support. Unlike ISS (continuous communication, predictable environment, regular resupply), Artemis crews must be more self-sufficient.

#### Pre-Flight Baseline

- **Comprehensive Medical Evaluation**: Bone density (DEXA), cardiovascular fitness (VO2max), cognitive baseline (PVT, memory tests), psychiatric screening, radiation sensitivity biomarkers
- **Countermeasure Training**: EVA conditioning, partial gravity simulators, suit familiarization, emergency medical procedures
- **Mission-Specific Risk Assessment**: Individualized radiation limits, nutrition plans, exercise protocols, psychological support strategies

#### In-Flight Monitoring

- **Continuous Vital Signs**: Heart rate, blood pressure, SpO2, temperature—wearable sensors integrated with suit telemetry during EVAs
- **Daily Health Logs**: Self-reported sleep quality, appetite, mood, pain, fatigue—structured questionnaires (PHQ-9, GAD-7, NASA-TLX workload)
- **Radiation Dosimetry**: Active Personal Dosimeters (APDs) with real-time dose rate display, tissue equivalent proportional counters (TEPC), area monitors in habitats
- **Environmental Sensors**: Cabin pressure, O₂/CO₂ levels, temperature, humidity, dust particle counts, microbial contamination
- **Cognitive Performance**: Weekly reaction time tests (PVT), memory tasks, spatial orientation assessments—detect early CNS effects from radiation or stress

#### Post-EVA Assessments

- **Immediate**: Suit telemetry review (metabolic rate, heart rate, fluid consumption, thermal regulation), post-EVA physical exam, dehydration assessment
- **24-Hour**: Sleep quality, muscle soreness, any injuries or skin irritation from suit contact, dust exposure symptoms
- **Cumulative**: EVA workload integration with overall energy expenditure, correlation with sleep deficits, stress burden

#### Risk Threshold Alerts

- **Radiation**: A sharp rise in dose rate above the galactic cosmic ray background (SPE warning; the operational trigger values are set by flight rules), cumulative dose approaching the 600 mSv career limit, tissue-specific thresholds
- **Cardiovascular**: Resting HR >100 bpm, BP >140/90, arrhythmias, orthostatic intolerance
- **Sleep**: <5 hours for 3 consecutive nights, sleep efficiency <70%, excessive daytime sleepiness
- **Behavioral Health**: PHQ-9 ≥10 (moderate depression), GAD-7 ≥10 (moderate anxiety), interpersonal conflict reports, suicidal ideation (immediate psych consult)
- **Environmental**: Cabin pressure drop, O₂ <19.5%, CO₂ >0.5%, temperature extremes, dust contamination above threshold

### FHIR Profiles and Extensions

The Artemis data model maps the full scope of deep-space mission operations onto FHIR R4 resources. Each resource type captures a distinct facet of crew health, environmental conditions, or operational context, and all are linked through the [MissionContext](StructureDefinition-mission-context.html) extension and [ArtemisMissionCS](CodeSystem-artemis-mission-cs.html) entries so that any observation can be traced back to a specific mission, phase, and location.

#### Core FHIR Resources

- **Observation** — Radiation dose measurements, environmental sensors, vital signs, cognitive assessments, biomarkers
- **Procedure** — EVAs (moonwalks), habitat transfers, emergency medical interventions, suit maintenance
- **Condition** — Diagnosed conditions (space adaptation syndrome, radiation dermatitis, decompression injury)
- **Device** — Orion, Starship-HLS, xEMU suits, Gateway modules, LTV rover, dosimeters, medical equipment
- **Location** — Gateway modules, HLS compartments, lunar landing sites (with selenographic coordinates), surface habitats
- **Encounter** — Mission phases (launch, translunar, lunar orbit, surface operations, return)
- **PlanDefinition** — Mission timelines, EVA schedules, medical protocols, contingency procedures
- **RiskAssessment** — Radiation risk models, bone loss projections, behavioral health vulnerability scores

#### Extensions

- [MissionContext](StructureDefinition-mission-context.html) (reused from other modules) — Links all resources to a specific Artemis mission Encounter and phase
- [LunarCoordinates](StructureDefinition-lunar-coordinates.html) — Selenographic latitude/longitude for Location resources
- [RadiationShielding](StructureDefinition-radiation-shielding.html) — Shielding mass/composition for habitat or vehicle Device resources
- [EVANumber](StructureDefinition-eva-number.html) — Sequential EVA identifier within a mission (e.g., "EVA-1", "EVA-2")

#### Profiles

- [EVAProcedure](StructureDefinition-eva-procedure.html): Procedure profile for extravehicular activities with fields for duration, location, participants, suit device, and metabolic data
- [HabitatLocation](StructureDefinition-habitat-location.html): Location profile for lunar habitats, Gateway modules, and landing sites—includes selenographic coordinates, region code, and location type (orbital/surface)
- [ArtemisRadiationExposure](StructureDefinition-artemis-radiation-exposure.html): Observation profile extending base radiation tracking with deep space context (GCR vs SPE, shielding condition, tissue type)
- [MissionPlan](StructureDefinition-mission-plan.html): PlanDefinition profile for Artemis mission timelines with phases, events, constraints, and medical protocols

### Examples

The following synthetic instances walk through the modelled Artemis IV landing: a mission Encounter, the landing site and Gateway module Locations, the suit and lander Devices, two surface EVAs, a translunar cumulative dose and an EVA dose-rate measurement, and the mission plan. All dates and values are invented for demonstration.

- [Artemis IV Mission Encounter](Encounter-Artemis-IV-Mission.html) — the whole mission from launch to splashdown
- [Artemis IV Mission Plan](PlanDefinition-Artemis-IV-Mission-Plan.html) — MissionPlan with launch, translunar cruise, descent, surface EVAs, ascent, and return phases
- [Malapert Massif Landing Site](Location-Malapert-Massif-Landing-Site.html) — HabitatLocation with lunar coordinates (86°S, 0°E)
- [Lunar Gateway HALO Module](Location-Gateway-HALO-Module.html) — HabitatLocation for the orbital station
- [xEMU EVA Suit #001](Device-xEMU-Suit-001.html) and [Starship HLS for Artemis IV](Device-Starship-HLS-Artemis-IV.html) — Devices used on the surface
- [Artemis IV EVA-1](Procedure-Artemis-IV-EVA-1.html) and [Artemis IV EVA-2](Procedure-Artemis-IV-EVA-2.html) — EVAProcedure instances with EVA number and mission context
- [Artemis IV Translunar Radiation Exposure](Observation-Artemis-IV-Translunar-Radiation.html) — ArtemisRadiationExposure cumulative dose (3.2 mSv over the 4-day cruise, nominal Orion shielding)
- [Artemis IV EVA-1 Radiation Exposure](Observation-Artemis-IV-EVA1-Radiation.html) — ArtemisRadiationExposure dose rate during EVA-1 (0.15 mSv/h, minimal suit-only shielding)

### Use Cases

#### 1. Artemis II Lunar Flyby Health Monitoring

Comprehensive health surveillance during 10-day crewed lunar flyby—continuous vital signs, daily health logs, radiation dosimetry, behavioral health assessments. First human exposure to deep space radiation since Apollo.

#### 2. Artemis IV EVA Operations

Two surface EVAs at Malapert Massif—pre-EVA readiness assessments, continuous suit telemetry, post-EVA recovery monitoring, dust exposure tracking, cumulative workload integration. See the [Artemis IV EVA-1](Procedure-Artemis-IV-EVA-1.html) and [EVA-2](Procedure-Artemis-IV-EVA-2.html) examples.

#### 3. Radiation Exposure Management

Real-time dosimetry during translunar cruise, SPE alert response (crew relocates to storm shelter in Gateway), cumulative dose tracking against the 600 mSv career limit, post-mission risk assessment for stochastic effects. See the [translunar](Observation-Artemis-IV-Translunar-Radiation.html) and [EVA-1](Observation-Artemis-IV-EVA1-Radiation.html) radiation exposure examples.

#### 4. Lunar South Pole Environmental Challenges

Surface operations in extreme thermal, radiation, and dust conditions—habitat air quality monitoring, suit decontamination effectiveness, crew sleep quality in partial gravity, circadian entrainment strategies.

#### 5. Cross-Mission Longitudinal Tracking

Individual astronauts participating in multiple Artemis missions—career radiation dose accumulation, bone density trends, cardiovascular adaptation, psychological resilience factors—informing crew selection for Mars missions.

#### 6. Gateway Long-Duration Habitation

Multi-week stays in Gateway modules—environmental monitoring (air quality, temperature, noise), exercise countermeasures (adapted T2/ARED protocols), nutrition tracking (limited resupply), interpersonal dynamics assessment.

### Health Investigations

The Artemis II mission carries a suite of Human Research Program (HRP) investigations designed to characterize crew health during deep space missions. The following FHIR profiles model data from these investigations.

#### ARCHeR - Actigraphy for Circadian Health during Exploration Research

ARCHeR uses wrist-worn actigraphy to monitor rest-activity rhythms and circadian health throughout the mission. The [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html) profile captures:

- Rest-activity rhythm stability (Interdaily Stability)
- Endogenous circadian period
- Sleep-wake cycle timing and total sleep time

Data is collected continuously pre-flight, in-flight, and post-flight to assess circadian disruption during deep space transit.

#### Immune Biomarkers

Spaceflight-associated immune dysregulation is monitored through the [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html), which tracks:

- **Cytokines**: IL-6, TNF-alpha, IFN-gamma
- **T-cell subsets**: CD4/CD8 ratio
- **Innate immunity**: NK cell percentage
- **Viral reactivation**: EBV and CMV PCR
- **Mucosal immunity**: Salivary IgA
- **Stress markers**: Cortisol

Specimens are collected using the [SpaceflightSpecimen](StructureDefinition-spaceflight-specimen.html) profile, which accounts for microgravity-adapted collection methods.

#### NASA Spaceflight Standard Measures

The Standard Measures program provides a common set of assessments across all HRP investigations. The [StandardMeasuresObservation](StructureDefinition-standard-measures-observation.html) profile supports:

| Assessment | Description |
|-----------|-------------|
| Functional Task Test | Sensorimotor performance battery |
| Field Test | Timed obstacle course |
| Grip Strength | Isometric dynamometry |
| Tandem Walk | Balance assessment |
| Visual Acuity | In-flight vision testing |
| Orthostatic Test | Tilt or stand test |
| Body Composition | DXA or bioimpedance |

Each assessment is tagged with [MissionPhase](StructureDefinition-mission-phase.html) to enable pre/in/post-flight comparison.

#### AVATAR - Organ-on-Chip

The AVATAR investigation uses microphysiological systems (organ-on-chip devices) to study cellular responses to spaceflight conditions. The [AVATAROrganChip](StructureDefinition-avatar-organ-chip.html) profile models:

- **Bone Marrow Chip** - Hematopoiesis studies
- **Immune Chip** - Immune system modeling
- **Gut Chip** - Intestinal epithelium
- **Lung Chip** - Alveolar-capillary interface
- **Kidney Chip** - Renal tubular function
- **Blood-Brain Barrier Chip** - BBB integrity

#### FHIR Profiles Summary

| Profile | Resource Type | Investigation |
|---------|--------------|---------------|
| [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html) | Observation | ARCHeR |
| [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html) | Observation | Immune Biomarkers |
| [SpaceflightSpecimen](StructureDefinition-spaceflight-specimen.html) | Specimen | Multiple |
| [StandardMeasuresObservation](StructureDefinition-standard-measures-observation.html) | Observation | Standard Measures |
| [AVATAROrganChip](StructureDefinition-avatar-organ-chip.html) | Device | AVATAR |

### Integration with Existing Systems

#### Crew Health and Medical Systems

- Artemis data feeds into NASA's Lifetime Surveillance of Astronaut Health (LSAH) database
- Integration with terrestrial EHR systems for pre-flight and post-flight clinical care
- Real-time health dashboards for flight surgeons at Mission Control

#### Mission Operations

- Environmental alerts trigger operational responses (crew relocation, timeline adjustments, emergency procedures)
- EVA schedules synchronized with medical readiness, radiation conditions, crew fatigue levels
- Gateway resource management (O₂, water, food, medical supplies) integrated with health monitoring

#### Radiation Protection

- Active dosimetry data informs trajectory optimization, shielding configurations, activity scheduling
- SPE forecasting integrated with crew shelter protocols
- Career dose tracking enforces the 600 mSv career exposure limit (NASA-STD-3001 Volume 1) and informs future mission assignment

#### Research and Development

- Artemis health data validates models for Mars mission planning (bone loss rates, radiation effects, psychological stressors)
- Countermeasure effectiveness studies (exercise protocols, pharmacologic interventions, behavioral health strategies)
- Technology demonstrations (wearable sensors, autonomous diagnostics, telemedicine platforms)

### Regulatory and Standards Alignment

- **NASA-STD-3001**: NASA Space Flight Human-System Standard—crew health (Volume 1, including the 600 mSv career radiation limit), habitat design, EVA systems, life support (Volume 2)
- **NASA HMTA**: Health and Medical Technical Authority—medical certification, exposure limits, clinical protocols
- **SNOMED CT**: Clinical terminology for conditions, procedures, findings—noting gaps for space-specific concepts
- **LOINC**: Laboratory and clinical measurements—radiation, environmental sensors, physiological parameters
- **HL7 FHIR R4**: Core standard for all resource profiles, ensuring interoperability with terrestrial healthcare systems

### Future Directions

#### Mars Mission Preparation

- Artemis serves as proving ground for Mars medical systems—longer durations, greater communication delays, more austere environments
- Longitudinal crew health trends inform crew selection, mission design, countermeasure strategies for 2-3 year Mars expeditions

#### Autonomous Medical Systems

- Machine learning models for early detection of radiation sickness, bone loss, behavioral health decline
- Decision support systems for crew medical officers (limited physician training)—diagnosis, treatment protocols, emergency procedures
- Telemedicine platforms robust to communication latency, bandwidth constraints

#### Sustainable Lunar Presence

- Artemis Base Camp (2030s) requires permanent medical infrastructure—diagnostic equipment, surgical capability, pharmaceutical inventory
- ISRU (In-Situ Resource Utilization) for medical supplies—water purification, oxygen generation, 3D-printed pharmaceuticals

#### International Collaboration

- Gateway partners (NASA, ESA, JAXA, CSA) require interoperable health data standards
- Commercial lunar landers (Blue Moon, Starship-HLS) must integrate with NASA medical systems
- Global space medicine research network—data sharing, protocol harmonization, joint countermeasure development

---

**The Artemis program is not just about returning to the Moon—it's about learning to live and work in deep space.** Every data point captured, every health metric trended, every environmental threshold monitored brings us closer to understanding whether humans can survive the journey to Mars. The FHIR-based architectures defined in this Implementation Guide ensure that the lessons learned from Artemis—written in the physiology and psychology of the crews who venture beyond Earth's protective embrace—will be preserved, analyzed, and applied to the next giant leap for humanity.

### Standardized Terminologies

The Artemis module defines code systems for missions, landing regions, and hardware, plus three small code systems that the Artemis profiles use for radiation context and location typing. Each code system has a matching value set.

- [ArtemisMissionCS](CodeSystem-artemis-mission-cs.html) / [ArtemisMissionVS](ValueSet-artemis-mission-vs.html): Mission codes (ARTEMIS-I through ARTEMIS-XXX) with properties for target destination, launch date, and status
- [ArtemisLandingRegionCS](CodeSystem-artemis-landing-region-cs.html) / [ArtemisLandingRegionVS](ValueSet-artemis-landing-region-vs.html): The 13 candidate south pole landing regions NASA announced in 2022 for the first landing (Faustini Rim A, Peak Near Shackleton, Malapert Massif, Nobile Rim, Haworth, and others) with approximate coordinates
- [ArtemisCertifiedDevicesCS](CodeSystem-artemis-certified-devices-cs.html) / [ArtemisCertifiedDevicesVS](ValueSet-artemis-certified-devices-vs.html): Flight-qualified hardware (Orion, SLS, xEMU suit and PLSS, Starship HLS, CLPS landers, LTV, VIPER, Gateway HALO and PPE, Base Camp habitat, LunaNet, medical kit, RTG and RHU power units)
- [ArtemisPrototypeDevicesCS](CodeSystem-artemis-prototype-devices-cs.html) / [ArtemisPrototypeDevicesVS](ValueSet-artemis-prototype-devices-vs.html): Developmental and test hardware (xEMU demo unit, next-generation PLSS, BioMonitor wearable, autonomous medical unit, habitat test modules, pressurized rover, rover generations, communication and navigation nodes, ISRU plant, surface power units)
- [ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.html): Value set combining certified and prototype devices
- [ShieldingConditionCS](CodeSystem-shielding-condition-cs.html) / [ShieldingConditionVS](ValueSet-shielding-condition-vs.html): Qualitative shielding at the time of a radiation measurement (unshielded, minimal, nominal, enhanced, storm shelter)
- [LocationTypeCS](CodeSystem-location-type-cs.html) / [LocationTypeVS](ValueSet-location-type-vs.html): Location types for lunar and planetary records (landing site, orbital station, surface habitat, surface outpost, analog facility)
- [ArtemisRadiationMeasureCS](CodeSystem-artemis-radiation-measure-cs.html) / [ArtemisRadiationMeasureVS](ValueSet-artemis-radiation-measure-vs.html): Observation and component codes for ArtemisRadiationExposure (cumulative dose, dose rate, radiation source, shielding condition, tissue type)

The former unified `ArtemisDevicesCS` was merged into the certified and prototype device code systems above.

Integration with existing terminologies:

- **SNOMED CT**: Clinical conditions (radiation sickness, space adaptation syndrome), exposures ("Exposure to ionizing radiation from cosmic sources"), procedures—noting gaps such as "Extravehicular activity (procedure)" or "Lunar dust exposure"
- **LOINC**: Radiation measurements (77638-4 "Irradiation dose rate"), vital signs, atmospheric composition, environmental sensors
- **NASA HMTA**: Health and Medical Technical Authority standards for exposure limits, medical event categories, crew health requirements

### References

#### Artemis Program Overview

- [Artemis - NASA](https://www.nasa.gov/humans-in-space/artemis/)
- [NASA Artemis Official Hub](https://www3.nasa.gov/specials/artemis/)
- [Artemis Programs: NASA Should Document Plans (GAO Report)](https://www.gao.gov/products/gao-24-106878)
- [NASA's Return To Moon Top Priority For Acting Administrator](https://aviationweek.com/space/space-exploration/nasas-return-moon-top-priority-acting-administrator)
- ['We're really on a different trajectory': How NASA's Artemis moon missions aim to prepare us for Mars](https://www.space.com/space-exploration/artemis/were-really-on-a-different-trajectory-how-nasas-artemis-moon-missions-can-help-prepare-us-for-mars)
- [NASA safety panel recommends review of Artemis plans](https://spacenews.com/nasa-safety-panel-recommends-review-of-artemis-plans/?utm_source=linkedin&utm_medium=jetpack_social)
- [NASA's Artemis II crewed mission to the Moon shows how US space strategy has changed since Apollo – and contrasts with China's closed program](https://theconversation.com/nasas-artemis-ii-crewed-mission-to-the-moon-shows-how-us-space-strategy-has-changed-since-apollo-and-contrasts-with-chinas-closed-program-270245)

#### Gateway Lunar Space Station

- [Gateway - NASA](https://www.nasa.gov/mission/gateway/)
- [NASA's Artemis IV: Building First Lunar Space Station](https://www.nasa.gov/general/nasas-artemis-iv-building-first-lunar-space-station/)
- [NASA Marks Artemis Progress With Gateway Lunar Space Station](https://www.nasa.gov/missions/artemis/nasa-marks-artemis-progress-with-gateway-lunar-space-station/)
- [NASA Prepares Gateway Lunar Space Station for Journey to Moon](https://www.nasa.gov/missions/artemis/nasa-prepares-gateway-lunar-space-station-for-journey-to-moon/)

#### Orion Spacecraft

- [Orion Spacecraft - NASA](https://www.nasa.gov/humans-in-space/orion-spacecraft/)
- [Orion Overview - NASA](https://www.nasa.gov/humans-in-space/orion-spacecraft/orion-overview/)
- [Orion Technical Specifications (NASA Fact Sheet)](https://www.lpi.usra.edu/lunar/artemis/orion/factsheet.pdf)
- [Once unthinkable, NASA and Lockheed now consider launching Orion on other rockets](https://arstechnica.com/space/2025/10/once-unthinkable-nasa-and-lockheed-now-consider-launching-orion-on-other-rockets/)

#### Landing Sites and Surface Operations

- [NASA updates on Artemis III landing regions](https://www.nasa.gov/news-release/nasa-provides-update-on-artemis-iii-moon-landing-regions/)
- [NASA's LRO: Lunar ice deposits are widespread](https://science.nasa.gov/solar-system/moon/nasas-lro-lunar-ice-deposits-are-widespread/)
- [Evaluating potential landing sites for the Artemis III mission using a multi-criteria decision making approach](https://www.sciencedirect.com/science/article/pii/S0094576524006234)
- [NASA Opens 2026 Human Lander Challenge for Life Support Systems](https://www.nasa.gov/directorates/esdmd/artemis-campaign-development-division/human-landing-system-program/human-lander-challenge/nasa-opens-2026-human-lander-challenge-for-life-support-systems-more/)
- [NASA Selects Blue Origin to Deliver VIPER Rover to Moon's South Pole](https://www.nasa.gov/news-release/nasa-selects-blue-origin-to-deliver-viper-rover-to-moons-south-pole/)
- [NASA revives VIPER moon rover, taps Blue Origin for lunar landing](https://www.astronomy.com/space-exploration/nasa-revives-viper-moon-rover-taps-blue-origin-for-lunar-landing/)

#### Spacesuits and EVA Systems

- [Exploration Extravehicular Mobility Unit (xEMU)](https://www.nasa.gov/image-article/exploration-extravehicular-mobility-unit-xemu/)
- [Spacesuit for NASA's Artemis III Moon Surface Mission Debuts](https://www.nasa.gov/humans-in-space/spacesuit-for-nasas-artemis-iii-moon-surface-mission-debuts/)
- [Axiom Space reveals next-generation spacesuit (AxEMU)](https://www.axiomspace.com/release/axemu)
- [NASA's Management of ISS Extravehicular Activity Spacesuits](https://oig.nasa.gov/office-of-inspector-general-oig/audit-reports/nasas-management-of-iss-extravehicular-activity-spacesuits/)
- [Remcom develops wireless modeling for Artemis lunar spacesuits and vehicles](https://www.militaryaerospace.com/communications/news/55319584/remcom-develops-wireless-modeling-for-artemis-lunar-spacesuits-and-vehicles)
- [Artemis Spacesuits Have 'a Lot of Flexibility Issues,' Per Former Astronaut](https://www.extremetech.com/aerospace/artemis-spacesuits-have-a-lot-of-flexibility-issues-per-former-astronaut)

#### Radiation and Crew Health

- [NASA. NASA Space Flight Human-System Standard, Volume 1: Crew Health. NASA-STD-3001 Vol 1 Rev C, 2024](https://www.nasa.gov/wp-content/uploads/2024/03/nasa-std-3001-vol-1-rev-c.pdf)
- [Space radiation measurements during Artemis I (Nature, 2024)](https://www.nature.com/articles/s41586-024-07927-7)
- NASA. Biomedical Results of Apollo. NASA SP-368, 1975 (Apollo EVA metabolic rates).
- [Paige DA, et al. Diviner Lunar Radiometer Observations of Cold Traps in the Moon's South Polar Region. Science 330:479-482, 2010](https://doi.org/10.1126/science.1187726)
- [Artemis 2 astronauts will double as human science experiments on their trip around the moon](https://www.space.com/space-exploration/artemis/artemis-2-astronauts-will-double-as-human-science-experiments-on-their-trip-around-the-moon)
- [Purposeful Passenger: Artemis I manikin](https://www.nasa.gov/feature/purposeful-passenger-artemis-i-manikin-helps-prepare-for-moon-missions-with-crew/)
- [AFRL helps NASA test equipment for Artemis II](https://afresearchlab.com/news/afrl-helps-nasa-test-equipment-for-artemis-ii-mission/)
- [INTO THE DEEP: As humans return to the Moon, researchers are trying to understand—and thwart—the biological toll of deep-space radiation](https://www.science.org/content/article/humans-return-moon-scientists-confront-dangers-deep-space-radiation)

#### Mission Tracking and Engagement

- [NASA Seeks Volunteers to Track Artemis II Mission](https://www.nasa.gov/humans-in-space/commercial-space/nasa-seeks-volunteers-to-track-artemis-ii-mission/)

#### Communications and Tracking

- [Networks Keeping NASA's Artemis II Mission Connected](https://www.nasa.gov/missions/artemis/networks-keeping-nasas-artemis-ii-mission-connected/)
- [Lasers could allow the world to watch Artemis II astronauts travel to the moon and back](https://abcnews.go.com/Technology/lasers-world-watch-artemis-ii-astronauts-travel-moon/story?id=129781981)
- [NASA's SLS Rocket: Secondary Payloads](https://www.nasa.gov/image-article/nasas-sls-rocket-secondary-payloads/)
