## Artemis Missions

### Overview

On November 16, 2022, at 1:47 AM EST, the Space Launch System rocket lit up the night sky over Kennedy Space Center. Riding atop this most powerful rocket ever built was Orionan uncrewed capsule bound for lunar orbit. Artemis I had begun. For 25.5 days, Orion flew farther from Earth than any spacecraft designed for humans had ever gone, testing heat shields, life support systems, and navigation in deep space. It splashed down in the Pacific Ocean on December 11, 2022, proving that the hardware worked. **But hardware is only half the story.** The Artemis program is not about sending machines to the Moonit's about sending people. And people are fragile.

Artemis II (planned for 2026) will be the first crewed lunar flyby since Apollo 17 in 1972. Artemis III (planned for 2027) aims to land the first woman and first person of color on the Moon, targeting the harsh, shadowed terrain near the lunar south polea place no human has ever set foot. Artemis IV and V will establish the Lunar Gateway space station and begin constructing an Artemis Base Camp on the surface, enabling sustained human presence beyond low-Earth orbit for the first time. These missions will test technologies, countermeasures, and medical protocols for eventual Mars missions2-3 year journeys where there is no quick abort, no resupply, and no evacuation option.

The question that keeps mission planners awake at night is not whether the rockets will work or the habitats will seal. It's whether the crew will remain healthyphysically and psychologicallyin an environment that evolution never prepared us for. **Artemis astronauts will face radiation exposure far exceeding ISS levels, bone and muscle loss in 1/6th gravity, circadian disruption from extreme lunar day-night cycles, isolation in cramped habitats, and the constant risk of equipment failure with no immediate rescue.** Every heartbeat, every milligram of cortisol, every hour of sleep, every rad of radiation dose must be tracked, correlated, and analyzed to ensure crew safety and mission success.

This module extends the HL7 Aerospace Medicine Implementation Guide into the **Artemis program domain**building on architectural principles from [Radiation Tracking](radiation-tracking.html), [Nutrition](nutrition.html), [Exercise](fitness.html), and [Mental Health](mentalhealth.html)to provide FHIR-based data modeling for lunar mission health monitoring, environmental systems, EVA operations, and mission timeline integration.

### FHIR Implementation Architecture

#### Core Concepts

Artemis missions introduce unique data modeling requirements distinct from ISS operations:

- **Mission Context**: Unlike ISS (continuous habitation with regular crew rotation), Artemis missions are discrete expeditions with defined phases: launch, translunar injection, lunar orbit, descent, surface operations, ascent, trans-Earth injection, and re-entry. All health and environmental data must be tagged with mission ID and phase.

- **Deep Space Environment**: Beyond Earth's magnetosphere, crews face galactic cosmic rays and solar particle events at doses 2-3 orders of magnitude higher than LEO. Continuous dosimetry, risk assessment, and shielding strategies are mission-critical.

- **Lunar Surface Operations**: 1/6th gravity (not microgravity), extreme temperature variations (-173�C in shadow to +127�C in sunlight), lunar dust exposure, and EVA operations in South Pole terrain with permanent shadows and high illumination ridges.

- **Distributed Infrastructure**: Gateway (lunar orbit station), Human Landing System (Starship-HLS), Orion crew vehicle, lunar surface habitats, and Lunar Terrain Vehicleeach with distinct life support, telemetry, and medical capabilities.

- **Communication Latency**: Minimal for lunar missions (~1.3 second one-way light time), but this architecture must scale to Mars missions with 3-20 minute delaysrequiring asynchronous data exchange and autonomous medical decision support.

#### Data Architecture

Artemis health data spans multiple interconnected dimensions:

- **Mission Timeline**: Launch, translunar cruise (4 days), lunar orbit insertion, Gateway docking, HLS transfer, lunar descent, surface EVAs, ascent, trans-Earth returneach phase with distinct medical protocols and risk profiles
- **Radiation Dosimetry**: Real-time dose rates, cumulative GCR exposure, SPE alerts, tissue-specific doses, career limits tracking
- **Environmental Monitoring**: Habitat cabin pressure, O�/CO� levels, temperature, dust contamination, suit telemetry during EVAs
- **Physiologic Data**: Vital signs, sleep metrics, bone density scans, cardiovascular assessments, cognitive performance tests, behavioral health surveys
- **Operational Events**: EVA schedules, habitat transfers, emergency procedures, medical interventions, equipment malfunctions
- **Location Context**: Gateway modules, HLS interior, lunar surface regions, specific landing sites with selenographic coordinates

All measurements link to **MissionContext** extensions (consistent with other IG modules) and **ArtemisMissions** CodeSystem entries (Artemis I, II, III, IV, V) to enable mission-specific filtering and cross-mission analysis.

#### Standardized Terminologies

New code systems and value sets for Artemis:

- **[ArtemisMissionCS](CodeSystem-artemis-mission-cs.html)**: Mission codes (ARTEMIS-I, ARTEMIS-II, ARTEMIS-III, ARTEMIS-IV, ARTEMIS-V) with properties for target destination, launch date, status
- **[ArtemisMissionVS](ValueSet-artemis-mission-vs.html)**: ValueSet for all Artemis program missions I-V
- **[ArtemisLandingRegionCS](CodeSystem-artemis-landing-region-cs.html)**: 13 candidate Artemis III south pole landing regions (Faustini Rim A, Peak Near Shackleton, Malapert Massif, Nobile Rim, Haworth, etc.) with approximate coordinates
- **[ArtemisLandingRegionVS](ValueSet-artemis-landing-region-vs.html)**: ValueSet binding for location profiles
- **[ArtemisCertifiedDevicesCS](CodeSystem-artemis-certified-devices-cs.html)**: Flight-qualified hardware (Orion, SLS, xEMU EVA suit, Starship-HLS, LTV rover, Gateway-HALO, BaseCampHab)
- **[ArtemisCertifiedDevicesVS](ValueSet-artemis-certified-devices-vs.html)**: ValueSet for certified Artemis devices
- **[ArtemisPrototypeDevicesCS](CodeSystem-artemis-prototype-devices-cs.html)**: Developmental/test hardware (xEMU Demo Unit, Pressurized Rover Prototype, Habitat Test Module, NextGen PLSS)
- **[ArtemisPrototypeDevicesVS](ValueSet-artemis-prototype-devices-vs.html)**: ValueSet for prototype Artemis devices
- **[ArtemisAllDevicesVS](ValueSet-artemis-all-devices-vs.html)**: ValueSet combining both certified and prototype devices

Integration with existing terminologies:
- **SNOMED CT**: Clinical conditions (radiation sickness, space adaptation syndrome), exposures ("Exposure to ionizing radiation from cosmic sources"), proceduresnoting gaps like "Extravehicular activity (procedure)" or "Lunar dust exposure"
- **LOINC**: Radiation measurements (77638-4 "Irradiation dose rate"), vital signs, atmospheric composition, environmental sensors
- **NASA HMTA**: Health and Medical Technical Authority standards for exposure limits, medical event categories, crew health requirements

### Physiologic and Environmental Considerations

The challenges of Artemis missions are not incremental improvements over ISS operationsthey are categorically different. Picture the Artemis III crew: they have just landed at Malapert Massif, a rugged highland near the lunar south pole. Outside, the temperature in shadow is -230�C. The Sun hangs low on the horizon, never rising more than a few degreesproviding near-continuous daylight for solar power but casting deep, permanent shadows where no sunlight has touched the surface in billions of years. The regolith is electrostatically charged, clinging to every surface. There is no atmosphere, no magnetosphere, no protection from cosmic radiation. The crew will spend 6.5 days here, conducting two EVAs, collecting samples, and testing technologies for future Mars missions. **Every breath they take, every step they make, every moment of sleep is monitored because there is no margin for error.**

#### Beyond the Magnetosphere

- **Galactic Cosmic Rays (GCR)**: Continuous background radiation from distant supernovaehigh-energy protons and heavy ions that penetrate spacecraft walls and human tissue, damaging DNA and increasing cancer risk
- **Solar Particle Events (SPE)**: Unpredictable bursts of radiation from solar flarescan deliver lethal doses in hours without adequate shielding (storm shelters in Gateway and HLS)
- **Dose Limits**: NASA career limits (varies by age/sex, typically 150-400 mSv for LEO missions) are exceeded far more quickly in deep spaceArtemis III crew may accumulate 20-30 mSv in 30 days
- **ALARA Principle**: "As Low As Reasonably Achievable"continuous dosimetry, shielding optimization, mission timeline adjustments to minimize exposure

#### Lunar Gravity and Musculoskeletal Effects

- **1/6th Gravity**: Not microgravity (like ISS) but also not Earthsufficient to maintain some load-bearing but insufficient to prevent bone loss and muscle atrophy over weeks to months
- **EVA Countermeasures**: Walking, hopping, sample collection in EVA suits provides some resistance exercise, but not equivalent to ARED/T2 protocols
- **Post-Mission Reconditioning**: Astronauts returning from lunar surface may have different reconditioning needs than ISS crew (partial gravity vs microgravity adaptation)

#### Lunar Dust Hazards

- **Regolith Characteristics**: Jagged, electrostatically charged, abrasive particlescling to suits, equipment, habitat surfaces
- **Inhalation Risk**: Dust tracked into habitats can cause respiratory irritation, inflammation, potential long-term lung damage (analogous to silicosis)
- **Equipment Degradation**: Dust fouls seals, jams mechanisms, scratches visorsrequiring meticulous decontamination procedures

#### EVA Challenges

- **Artemis III Plans**: Minimum two EVAs, ~6.5 days surface time, south pole terrain (slopes, boulders, shadows)
- **xEMU Suit**: Next-generation EVA suit with improved mobility, longer life support duration (8 hours), lower operating pressure (8 psi vs 4.3 psi in Apollo)reduced prebreathe time
- **Metabolic Demands**: EVA work rates 200-400 kcal/hrhigher than treadmill exercisewith limited cooling, hydration, and waste management
- **Thermal Extremes**: Suit must protect against -230�C in shadow and +120�C in sunlight simultaneously
- **Communication**: Line-of-sight only (no atmosphere for radio bounce)Gateway relay or direct Earth link required

#### Circadian Disruption

- **Lunar Day**: 29.5 Earth days (14.75 days sunlight, 14.75 days darkness)but south pole sites chosen for near-continuous sunlight during surface missions
- **Artificial Light-Dark Cycles**: Habitat lighting must simulate Earth day-night to maintain circadian rhythmsbut external lighting cues absent or abnormal
- **Sleep Quality**: Confined spaces, operational stress, radiation concerns, suit discomfortall degrade sleep despite adequate opportunity

#### Habitat Confinement

- **Gateway HALO Module**: ~8.5 meters long, 3 meters diameterapproximately the size of a large RV for 4 crew members
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

- **Continuous Vital Signs**: Heart rate, blood pressure, SpO2, temperaturewearable sensors integrated with suit telemetry during EVAs
- **Daily Health Logs**: Self-reported sleep quality, appetite, mood, pain, fatiguestructured questionnaires (PHQ-9, GAD-7, NASA-TLX workload)
- **Radiation Dosimetry**: Active Personal Dosimeters (APDs) with real-time dose rate display, tissue equivalent proportional counters (TEPC), area monitors in habitats
- **Environmental Sensors**: Cabin pressure, O�/CO� levels, temperature, humidity, dust particle counts, microbial contamination
- **Cognitive Performance**: Weekly reaction time tests (PVT), memory tasks, spatial orientation assessmentsdetect early CNS effects from radiation or stress

#### Post-EVA Assessments

- **Immediate**: Suit telemetry review (metabolic rate, heart rate, fluid consumption, thermal regulation), post-EVA physical exam, dehydration assessment
- **24-Hour**: Sleep quality, muscle soreness, any injuries or skin irritation from suit contact, dust exposure symptoms
- **Cumulative**: EVA workload integration with overall energy expenditure, correlation with sleep deficits, stress burden

#### Risk Threshold Alerts

- **Radiation**: Dose rate >0.5 mGy/hr (SPE warning), cumulative dose approaching career limits, tissue-specific thresholds
- **Cardiovascular**: Resting HR >100 bpm, BP >140/90, arrhythmias, orthostatic intolerance
- **Sleep**: <5 hours for 3 consecutive nights, sleep efficiency <70%, excessive daytime sleepiness
- **Behavioral Health**: PHQ-9 e10 (moderate depression), GAD-7 e10 (moderate anxiety), interpersonal conflict reports, suicidal ideation (immediate psych consult)
- **Environmental**: Cabin pressure drop, O� <19.5%, CO� >0.5%, temperature extremes, dust contamination above threshold

### Data Model Architecture

#### Core FHIR Resources

- **Observation** � Radiation dose measurements, environmental sensors, vital signs, cognitive assessments, biomarkers
- **Procedure** � EVAProcedure (moonwalks), habitat transfers, emergency medical interventions, suit maintenance
- **Condition** � Diagnosed conditions (space adaptation syndrome, radiation dermatitis, decompression injury)
- **Device** � Orion, Starship-HLS, xEMU suits, Gateway modules, LTV rover, dosimeters, medical equipment
- **Location** � Gateway modules, HLS compartments, lunar landing sites (with selenographic coordinates), surface habitats
- **Encounter** � Mission phases (launch, translunar, lunar orbit, surface operations, return)
- **PlanDefinition** � Mission timelines, EVA schedules, medical protocols, contingency procedures
- **RiskAssessment** � Radiation risk models, bone loss projections, behavioral health vulnerability scores

#### Extensions

- **missionContext** (reused from other modules) � Links all resources to specific Artemis mission and phase
- **lunarCoordinates** � Selenographic latitude/longitude for Location resources
- **radiationShielding** � Shielding mass/composition for habitat or vehicle Device resources
- **evaNumber** � Sequential EVA identifier within a mission (e.g., "EVA-1", "EVA-2")

#### Profiles

- **EVAProcedure**: Procedure profile for extravehicular activities with required fields for duration, location, participants, suit device, metabolic data
- **HabitatLocation**: Location profile for lunar habitats, Gateway modules, landing sitesincludes selenographic coordinates, region code, environmental type (orbital/surface)
- **ArtemisRadiationExposure**: Observation profile extending base radiation tracking with deep space context (GCR vs SPE, shielding conditions)
- **MissionPlan**: PlanDefinition profile for Artemis mission timelines with phases, events, constraints, medical protocols

### Use Cases

### 1. Artemis II Lunar Flyby Health Monitoring

Comprehensive health surveillance during 10-day crewed lunar flybycontinuous vital signs, daily health logs, radiation dosimetry, behavioral health assessments. First human exposure to deep space radiation since Apollo.

#### 2. Artemis III EVA Operations

Two surface EVAs at Malapert Massifpre-EVA readiness assessments, continuous suit telemetry, post-EVA recovery monitoring, dust exposure tracking, cumulative workload integration.

#### 3. Radiation Exposure Management

Real-time dosimetry during translunar cruise, SPE alert response (crew relocates to storm shelter in Gateway), cumulative dose tracking against career limits, post-mission risk assessment for stochastic effects.

#### 4. Gateway Long-Duration Habitation

Multi-week stays in Gateway modulesenvironmental monitoring (air quality, temperature, noise), exercise countermeasures (adapted T2/ARED protocols), nutrition tracking (limited resupply), interpersonal dynamics assessment.

#### 5. Lunar South Pole Environmental Challenges

Surface operations in extreme thermal, radiation, and dust conditionshabitat air quality monitoring, suit decontamination effectiveness, crew sleep quality in partial gravity, circadian entrainment strategies.

#### 6. Cross-Mission Longitudinal Tracking

Individual astronauts participating in multiple Artemis missionscareer radiation dose accumulation, bone density trends, cardiovascular adaptation, psychological resilience factorsinforming crew selection for Mars missions.

### Integration with Existing Systems

#### Crew Health and Medical Systems

- Artemis data feeds into NASA's Lifetime Surveillance of Astronaut Health (LSAH) database
- Integration with terrestrial EHR systems for pre-flight and post-flight clinical care
- Real-time health dashboards for flight surgeons at Mission Control

#### Mission Operations

- Environmental alerts trigger operational responses (crew relocation, timeline adjustments, emergency procedures)
- EVA schedules synchronized with medical readiness, radiation conditions, crew fatigue levels
- Gateway resource management (O�, water, food, medical supplies) integrated with health monitoring

#### Radiation Protection

- Active dosimetry data informs trajectory optimization, shielding configurations, activity scheduling
- SPE forecasting integrated with crew shelter protocols
- Career dose tracking enforces exposure limits, disqualifies crew from future missions if thresholds exceeded

#### Research and Development

- Artemis health data validates models for Mars mission planning (bone loss rates, radiation effects, psychological stressors)
- Countermeasure effectiveness studies (exercise protocols, pharmacologic interventions, behavioral health strategies)
- Technology demonstrations (wearable sensors, autonomous diagnostics, telemedicine platforms)

### Regulatory and Standards Alignment

- **NASA-STD-3001**: NASA Human Spaceflight Standardscrew health, habitat design, EVA systems, life support
- **NASA HMTA**: Health and Medical Technical Authoritymedical certification, exposure limits, clinical protocols
- **SNOMED CT**: Clinical terminology for conditions, procedures, findingsnoting gaps for space-specific concepts
- **LOINC**: Laboratory and clinical measurementsradiation, environmental sensors, physiological parameters
- **HL7 FHIR R4**: Core standard for all resource profiles, ensuring interoperability with terrestrial healthcare systems

### Future Directions

#### Mars Mission Preparation

- Artemis serves as proving ground for Mars medical systemslonger durations, greater communication delays, more austere environments
- Longitudinal crew health trends inform crew selection, mission design, countermeasure strategies for 2-3 year Mars expeditions

#### Autonomous Medical Systems

- Machine learning models for early detection of radiation sickness, bone loss, behavioral health decline
- Decision support systems for crew medical officers (limited physician training)diagnosis, treatment protocols, emergency procedures
- Telemedicine platforms robust to communication latency, bandwidth constraints

#### Sustainable Lunar Presence

- Artemis Base Camp (2030s) requires permanent medical infrastructurediagnostic equipment, surgical capability, pharmaceutical inventory
- ISRU (In-Situ Resource Utilization) for medical supplieswater purification, oxygen generation, 3D-printed pharmaceuticals

#### International Collaboration

- Gateway partners (NASA, ESA, JAXA, CSA) require interoperable health data standards
- Commercial lunar landers (Blue Moon, Starship-HLS) must integrate with NASA medical systems
- Global space medicine research networkdata sharing, protocol harmonization, joint countermeasure development

---

**The Artemis program is not just about returning to the Moonit's about learning to live and work in deep space.** Every data point captured, every health metric trended, every environmental threshold monitored brings us closer to understanding whether humans can survive the journey to Mars. The FHIR-based architectures defined in this Implementation Guide ensure that the lessons learned from Artemiswritten in the physiology and psychology of the crews who venture beyond Earth's protective embracewill be preserved, analyzed, and applied to the next giant leap for humanity.
