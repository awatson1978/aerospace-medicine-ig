### Overview

On November 16, 1990, Robert Zubrin unveiled **Mars Direct** at the Case for Mars conference—a plan so audacious yet elegant that it reshaped how humanity thought about reaching the Red Planet. Unlike NASA's 1989 Space Exploration Initiative, whose "90-Day Study" architecture called for dozens of launches at a cost commonly quoted at around $450 billion, Mars Direct proposed just **two heavy-lift launches per mission**, leveraging **in-situ resource utilization (ISRU)** to produce propellant on Mars itself (Zubrin & Baker 1991).

The concept: Send an Earth Return Vehicle (ERV) first, equipped with a small nuclear reactor and chemical plant. Over roughly 10 months, this automated system harvests CO₂ from the Martian atmosphere, combines it with a few tonnes of hydrogen brought from Earth via the Sabatier reaction, and produces on the order of 100 tonnes of methane/oxygen propellant. Only after fuel production is confirmed does a second launch deliver four crew members in a Mars Habitat Unit. They spend **18 months on Mars**—a long-stay conjunction-class mission maximizing surface science—conducting EVAs, living in the habitat, then returning in the fueled ERV.

Mars Direct's elegance lay in **leveraging proven 1990s technology**: chemical rockets, nuclear power, cryogenic storage, robust life support—avoiding risky orbital rendezvous and on-orbit assembly. For transit, Zubrin proposed a tether to a spent stage, spinning to generate 1 g artificial gravity, mitigating bone loss and muscle atrophy. A storm shelter surrounded by water and provisions would protect the crew during solar particle events.

**The legacy lives on.** NASA's 1993 Design Reference Mission (DRM 1.0) explicitly adapted Mars Direct into "Mars Semi-Direct," keeping split missions and ISRU but adding Mars Orbit Rendezvous. NASA's Design Reference Architecture 5.0 (DRA 5.0, 2009) envisions nuclear thermal rockets, fission surface power (tens of kilowatts for ISRU), and multiple heavy launches per mission—more complex but building on Mars Direct's ISRU foundation. SpaceX's Starship Mars plan represents a modern private-sector embodiment: fully reusable rockets, orbital refueling (on the order of ten tanker flights per Mars-bound Starship), direct Earth-to-Mars trajectories, and ISRU at a scale of hundreds of tonnes of CH₄/O₂ per vehicle, which published feasibility analyses estimate would require hundreds of kilowatts of continuous surface power (see the Starship feasibility papers in the References). Project Athena (2025), championed by Jared Isaacman, proposes accelerating Mars efforts with uncrewed infrastructure missions by 2026, nuclear-electric propulsion development, and NASA-commercial partnerships.

But **rockets are only half the story.** A Mars mission is a **biomedical crucible**: roughly 2.5 years in the most hostile environment humans have attempted—six months of microgravity transit each way, 18 months on Mars in 0.38 g, communication delays of 5-20 minutes rendering real-time ground support impossible, cumulative radiation exposure on the order of 600-1,000 mSv (approaching or exceeding NASA's 600 mSv career limit), Martian dust exposure (perchlorates, lung irritation risk), and autonomous medical operations with no evacuation option. Every heartbeat, every milligram of calcium lost, every millisievert absorbed, every moment of psychological strain must be tracked, analyzed, and mitigated.

### Mission Architecture Comparison

The table below places Mars Direct alongside the three architectures that followed it. The "Commonalities" column shows how much of Zubrin's original logic (pre-deployed cargo, ISRU propellant, long surface stays) survived into later plans; the "Differences" column shows where each plan diverged.

| **Architecture** | **Key Features** | **Commonalities** | **Differences** |
|---|---|---|---|
| **Mars Direct (1990)** | 2 launches (ERV + Hab); ISRU CH₄/O₂; 18-month surface stay; artificial gravity tether; 4 crew | Baseline | — |
| **NASA DRA 5.0 (2009)** | 4-5 launches; Mars orbit rendezvous; crew of 6; nuclear thermal rockets; fission surface power; 2030s timeline | ISRU (O₂ via MOXIE tested on Perseverance); long surface stays; pre-deploy cargo | More infrastructure; slower timeline; Gateway staging vs. direct transit |
| **SpaceX Starship (2016-)** | Fully reusable 100 t vehicle; orbital refueling (on the order of ten tankers); land entire Starship; ISRU for return; 2029-2031 target | ISRU CH₄/O₂; direct flights; bold schedule | Orbital refueling required; 200-ton lander (new challenges); no artificial gravity; commercial funding |
| **Project Athena (2025)** | Uncrewed demo by 2026; nuclear-electric propulsion; NASA-commercial partnership; post-Artemis pivot to Mars | Leverages SpaceX heavy lift; ISRU & nuclear power priority | Far faster timeline; NEP technology push; NASA reorganization proposal |

### Aerospace Medicine Challenges

#### The 2.5-Year Gauntlet

**Outbound Transit (6 months, microgravity)**: Bone mineral density loss of about 1-1.5% per month in weight-bearing bones (LeBlanc et al. 2000), muscle atrophy, cardiovascular deconditioning, fluid shift leading to Spaceflight-Associated Neuro-ocular Syndrome (SANS; vision changes), immune dysregulation, circadian disruption.

**Mars Surface (18 months, 0.38 g)**: Partial gravity insufficient to prevent bone and muscle loss (long-term effects unknown); Martian dust (perchlorates, silica-like particles leading to respiratory irritation and equipment degradation); thermal extremes (about -125 °C near the winter poles to about +20 °C at the equator at midday; NASA Mars Facts); EVA workloads; habitat confinement; psychological isolation.

**Return Transit (6 months, microgravity)**: Cumulative bone loss over 12-24 months of unloading; radiation approaching career limits; crew fatigue; aging equipment.

**Total radiation**: On the order of 600-1,000 mSv over 2.5 years, versus roughly 50-200 mSv per year on the ISS. The Mars Science Laboratory's RAD instrument measured about 1.8 mSv/day dose equivalent during interplanetary cruise (Zeitlin et al. 2013) and about 0.6-0.7 mSv/day on the Martian surface (Hassler et al. 2014); a 360-day round-trip transit alone accounts for roughly 660 mSv. Beyond Earth's magnetosphere, continuous **galactic cosmic rays (GCR)**—high-energy protons and heavy ions from distant supernovae—are joined by unpredictable **solar particle events (SPEs)** that can deliver lethal doses in hours without shielding. NASA frames its exposure standard around a 3% risk of exposure-induced death from cancer; projected lifetime cancer risk for a Mars mission is of that order, with wide uncertainty bounds (Cucinotta & Durante 2006).

#### Mars Surface Operations

**Martian dust**: Jagged, electrostatically charged, containing roughly 0.5% perchlorate (ClO₄⁻) by mass at the Phoenix landing site (Hecht et al. 2009)—toxic oxidizing compounds. Clings to suits, infiltrates habitats. Inhalation leads to lung irritation (analogous to silicosis) and potential bloodstream entry. Equipment degradation (seal wear, optics scratching). EVA decontamination protocols are mission-critical.

**EVAs**: Unlike zero-g spacewalks, Mars EVAs involve walking and climbing in 0.38 g, in suits at roughly 4 psi of oxygen (with pre-breathe to avoid decompression sickness). Hundreds of EVAs over 500 sols lead to repetitive orthopedic strain (shoulder injuries are common on ISS), chronic fatigue, and cumulative dust exposure. Biomedical telemetry: heart rate, suit pressure, O₂, thermal regulation.

**Habitat life support**: 21% O₂, roughly 8-14.7 psi pressure, temperature and humidity control. O₂ generation (water electrolysis), CO₂ scrubbing (solid amine/Sabatier), trace contaminant removal, dust monitoring. Power (solar, batteries, possibly a Kilopower fission reactor) sustains life support; a power failure means rapid CO₂ buildup or hypoxia. Water recycling (urine to potable water, humidity recovery) runs closed-loop with minimal resupply.

#### Autonomous Medical Operations

**5-20 minute communication delays** mean the crew must diagnose and treat themselves. A Crew Medical Officer (CMO) leads, and all crew are trained in basic trauma response. Medical kit: portable ultrasound, handheld lab analyzers, vital signs monitors, medications (antibiotics, analgesics, sedatives), surgical instruments, defibrillator, airway management, limited blood products.

**Worst-case scenarios**: appendicitis requiring surgery in 0.38 g without a sterile operating room or anesthesiologist; kidney stones (elevated risk from bone calcium loss); traumatic injury; acute radiation sickness from a solar storm. NASA is developing AI-driven diagnostic aids and structured digital checklists.

**FHIR perspective**: Offline clinical data capture, asynchronous transmission. Every diagnosis, procedure, medication, and vital sign is logged locally and downlinked when bandwidth permits. Structured resources (Observation, Procedure, Condition, MedicationAdministration) let flight surgeons reconstruct events days later.

#### In-Situ Resource Utilization (ISRU)

**Mission-critical**: Propellant production failure strands the crew. Sabatier reaction: CO₂ + 4H₂ → CH₄ + 2H₂O; electrolysis: 2H₂O → 2H₂ + O₂. The Mars Direct ERV converts a few tonnes of Earth-supplied hydrogen into on the order of 100 tonnes of propellant (Zubrin & Baker 1991). A Starship-class return requires hundreds of tonnes of propellant and correspondingly hundreds of kilowatts of continuous power (see the Starship feasibility analyses in the References).

**Health implications**: Handling cryogenic CH₄/O₂ and high-pressure H₂ (explosion risk); ISRU failure is an existential mission risk and a severe crew psychological stressor; byproduct contamination (CO leaks) requires air quality monitoring.

**FHIR modeling**: [ISRUProductionLog](StructureDefinition-isru-production-log.html) Observations track output, reactor status, and alarms. Not directly medical, but ISRU status feeds risk assessments and crew stress monitoring.

### FHIR Implementation Architecture

#### Core Concepts

- **Mission Duration**: 2.5 years vs. 6-month ISS rotations — longitudinal health tracking, career dose limits, cumulative bone loss trends
- **Communication Latency**: 5-20 minute delays — asynchronous data exchange, offline decision support, batch transmission
- **Autonomous Medicine**: Crew-led diagnosis and treatment — structured protocols, decision trees, comprehensive local FHIR repositories
- **Mars Environment**: 0.38 g, dust, thermal and radiation extremes — new Observation profiles
- **ISRU Dependency**: Production success tied to mission viability and crew psychology — ISRU status as an operational health indicator

#### Data Architecture

- **Mission Timeline**: Launch, outbound transit (6 months), orbit insertion, descent, surface operations (18 months, hundreds of EVAs), ascent, return transit (6 months), re-entry
- **Radiation Dosimetry**: Real-time dose rates, cumulative GCR, SPE tracking, tissue-specific doses, career limits
- **Environmental Monitoring**: Cabin pressure, O₂/CO₂, temperature, dust, ISRU status
- **Physiologic Data**: Daily vitals, weekly bone density, cardiovascular, cognitive tests (PVT), behavioral surveys (PHQ-9, GAD-7)
- **Operational Events**: EVA schedules, transfers, ISRU milestones, malfunctions, interventions
- **Location Context**: Mars landing sites (areographic coordinates), habitat modules, rover excursions

All resources link to the [MissionContext](StructureDefinition-mission-context.html) extension and to the [MarsMissionsCS](CodeSystem-mars-missions-cs.html) and [CrewedMarsMissionsCS](CodeSystem-crewed-mars-missions-cs.html) code systems.

### Use Cases

#### 1. Mars Direct Mission Health Surveillance

4 crew, 18-month surface stay. Continuous vitals (transit), daily logs, radiation dosimetry with SPE alerts, post-EVA assessments (roughly 200 surface EVAs), weekly bone trending, behavioral telecounseling every two weeks. These would be the first humans to accumulate more than 600 mSv, so long-term cancer risk tracking is essential.

#### 2. SpaceX Starship Surface Operations

6-12 crew, 6-month stay (until the next return window). ISRU monitoring (hundreds of tonnes of O₂/CH₄ production), habitat environmental control (a larger crew means higher CO₂ load), EVAs deploying solar arrays, autonomous medicine for a larger crew (higher probability of a medical event), psychological dynamics in the Starship interior.

#### 3. Solar Storm Radiation Management

Dosimetry detects a sudden spike (an SPE begins). An automated alert sends the crew to the water-walled storm shelter. Continuous monitoring through the 24-48 hour event, cumulative dose compared against acute thresholds, post-event assessment (nausea, fatigue, lymphocyte drop), cancer risk recalculation, and a mission-continuation evaluation.

#### 4. Autonomous Emergency Surgery: Appendicitis

This is an illustrative scenario, not an event that has occurred. A crew member develops right-lower-quadrant pain, fever, and an elevated white cell count. Ultrasound confirms appendicitis. With a 12-minute one-way delay, the CMO consults the digital protocol while the ground sends guidance (24-minute round trip). The crew administers anesthesia (ketamine), performs an appendectomy in 0.38 g, and starts post-operative antibiotics. The Encounter captures pre-operative vitals and imaging, the Procedure (steps), Medications, post-operative wound healing, and the resolved Condition. See the [Autonomous Medical Encounter - Appendicitis Sol 189](Encounter-Emergency-Appendicitis-Sol189.html) example.

#### 5. ISRU Failure and Crew Stress

This is an illustrative scenario, not an event that has occurred. On Sol 180 a Sabatier reactor fault cuts CH₄ production by 40%. Repairs take three weeks. Anxiety spikes (GAD-7 scores rise), sleep deteriorates (wearable sensors show reduced REM), and interpersonal tension grows. The RiskAssessment is updated: if production is not restored, the options are a one-way stay or a rescue (neither realistic—an immense psychological burden). The reactor is repaired on Sol 201 and post-crisis behavioral interventions follow. The data shows ISRU status as a critical psychological stressor.

#### 6. Long-Duration Bone Loss Fracture

This is an illustrative scenario, not an event that has occurred. After 18 months on the surface (roughly 24 months of combined microgravity and partial-gravity unloading), a crew member falls during an EVA with severe ankle pain. Ultrasound suggests a fracture, confirmed by imaging. Closed reduction, splinting, pain management, and 6-8 weeks non-weight-bearing (a challenge in 0.38 g). Healing is monitored. The Condition links the fracture to bone demineralization (prior DEXA showed 15% loss), informing future countermeasure protocols.

### FHIR Profiles and Extensions

#### Core FHIR Resources

- **Observation** — Radiation, environmental, vitals, cognitive, biomarkers, bone density, blood chemistry
- **Procedure** — Mars EVAs, transfers, interventions, ISRU maintenance
- **Condition** — Space adaptation syndrome, SANS, radiation effects, decompression sickness, dust pneumoconiosis, fractures
- **Device** — Orion, Starship, habitats, xEMU, rovers, dosimeters, medical equipment, ISRU plant
- **Location** — Landing sites (areographic coordinates), habitat compartments, storm shelter
- **Encounter** — Mission phases (launch, transit, orbit, descent, surface operations, ascent, return, re-entry)
- **PlanDefinition** — Mission timelines, EVA schedules, medical protocols, countermeasures
- **RiskAssessment** — Radiation (cancer, CNS), bone fracture, behavioral vulnerability, ISRU failure impact
- **MedicationAdministration** — All medications (antibiotics, analgesics, sedatives, radiation countermeasures, bone-protective agents)
- **CarePlan** — Individual health plans (exercise, nutrition, radiation limits, behavioral support)

#### Extensions

- [MissionContext](StructureDefinition-mission-context.html) — Links a resource to a specific Mars mission Encounter and phase
- [AreographicCoordinates](StructureDefinition-areographic-coordinates.html) — Mars latitude and longitude for Location resources
- [ISRUStatus](StructureDefinition-isru-status.html) — Links to ISRU production status
- [EVANumber](StructureDefinition-eva-number.html) — Sequential EVA identifier (shared with the Artemis module)
- [CommunicationDelay](StructureDefinition-communication-delay.html) — One-way light-time lag for transmissions

#### Profiles

- [MarsEVAProcedure](StructureDefinition-mars-eva-procedure.html): Surface EVAs—duration, location, participants, suit, metabolic data, dust exposure, post-EVA health check
- [HabitatEnvironmentalObservation](StructureDefinition-habitat-environmental-observation.html): Atmospheric monitoring—O₂ %, CO₂, pressure, temperature, humidity, dust; subject is the habitat Location
- [ISRUProductionLog](StructureDefinition-isru-production-log.html): ISRU output—propellant mass (kg CH₄, O₂), reactor status, power; links to the ISRU plant Device
- [MarsCrewMemberProfile](StructureDefinition-mars-crew-member.html): Patient—radiation career dose, flight certification, bone baseline, resilience score
- [MissionTimelinePlan](StructureDefinition-mission-timeline-plan.html): PlanDefinition—phases (launch, transit, operations, return), medical protocols, EVA schedules
- [MarsRadiationRiskAssessment](StructureDefinition-mars-radiation-risk-assessment.html): Long-duration exposure—basis is cumulative dose; prediction is cancer/CNS risk
- [AutonomousMedicalEncounter](StructureDefinition-autonomous-medical-encounter.html): Crew-led events with no real-time ground support; groups Observations, Procedures, Conditions, and Medications with communication-delay context

### Examples

The following synthetic instances illustrate a Mars Direct-style mission from crew roster to emergency surgery. All dates and values are invented for demonstration.

- [Mars Direct Mission 2040](Encounter-MarsDirectMission2040.html) — Encounter spanning the whole mission
- [Mars Direct Mission Plan 2040](PlanDefinition-MarsDirectMissionPlan2040.html) — MissionTimelinePlan with phases and EVA schedule
- [Mars Crew Member - Commander Chen](Patient-MarsCrewMember1.html) and [Mission Specialist Okafor](Patient-MarsCrewMember2.html) — crew Patient records
- [Mars Surface Habitat - Jezero Crater](Location-MarsHabitat-Jezero.html) — habitat Location with areographic coordinates
- [ISRU Propellant Production Plant](Device-ISRU-Plant-Jezero-1.html) — ISRU plant Device
- [Habitat Environmental Conditions - Sol 125](Observation-HabitatEnvironment-Sol125.html) — HabitatEnvironmentalObservation
- [ISRU Production Log - Sol 210](Observation-ISRU-Production-Sol210.html) — ISRUProductionLog
- [Mars EVA - Sol 147](Procedure-MarsEVA-Sol147.html) — MarsEVAProcedure
- [Cumulative Radiation Dose - Outbound Transit](Observation-CumulativeDose-Transit.html) — CumulativeRadiationDose for the six-month transit
- [Radiation Risk Assessment - Post Outbound Transit](RiskAssessment-RadiationRisk-PostTransit.html) — MarsRadiationRiskAssessment
- [Autonomous Medical Encounter - Appendicitis Sol 189](Encounter-Emergency-Appendicitis-Sol189.html) — AutonomousMedicalEncounter for the illustrative surgery scenario

### Standardized Terminologies

The Mars module defines its own code systems for missions, landing sites, and hardware, plus two small code systems used by the profiles above. Each code system has a matching value set where one exists.

- [MarsMissionsCS](CodeSystem-mars-missions-cs.html) / [MarsMissionsVS](ValueSet-mars-missions-vs.html): Robotic missions (Mariner 4, Viking, Pathfinder, Spirit, Opportunity, Curiosity, Perseverance) plus future crewed missions
- [CrewedMarsMissionsCS](CodeSystem-crewed-mars-missions-cs.html) / [CrewedMarsMissionsVS](ValueSet-crewed-mars-missions-vs.html): Architectures (Mars Direct, DRM 3.0, DRA 5.0, Starship, Olympus)
- [MarsLandingSitesCS](CodeSystem-mars-landing-sites-cs.html) / [MarsLandingSitesVS](ValueSet-mars-landing-sites-vs.html): Candidate sites with coordinates (Jezero, Arcadia, Gale, Elysium, Hellas, Mawrth)
- [MarsCertifiedDevicesCS](CodeSystem-mars-certified-devices-cs.html) / [MarsCertifiedDevicesVS](ValueSet-mars-certified-devices-vs.html): Flight-qualified hardware (Orion, Crew Dragon, ISS ECLSS, EMU, Bio-Monitor)
- [MarsPrototypeDevicesCS](CodeSystem-mars-prototype-devices-cs.html) / [MarsPrototypeDevicesVS](ValueSet-mars-prototype-devices-vs.html): Developmental hardware (Starship, Mars Habitat, xEMU, ISRU Plant, Kilopower, rovers)
- [MarsAllDevicesVS](ValueSet-mars-all-devices-vs.html): Combined certified and prototype devices
- [AerospaceObservationCategoryCS](CodeSystem-aerospace-observation-category-cs.html): Observation categories used by the habitat and ISRU profiles (environmental, ISRU)
- [ISRUMetricsCS](CodeSystem-isru-metrics-cs.html): Component codes for ISRU production logs (propellant mass, reactor status, power)

Integration with existing terminologies:

- **SNOMED CT**: Conditions, procedures, findings—gaps include SANS, Martian dust exposure, and Mars EVA
- **LOINC**: Radiation, vitals, atmospheric composition—some Mars metrics need new codes
- **NASA HMTA** (Health and Medical Technical Authority): Exposure limits, medical event categories, crew health requirements

### Integration and Future Directions

**Integration**: Mars data feeds NASA's Lifetime Surveillance of Astronaut Health (LSAH) database for longitudinal tracking; terrestrial EHR handoff; delayed real-time dashboards for Mission Control; environmental alerts trigger operational responses; career dose tracking enforces exposure limits.

**Future**: Interplanetary standardization (asteroids, the moons of Jupiter and Saturn); AI-driven autonomous medicine (digital twins, predictive models); closed-loop life support plus medical ISRU (3D-printed pharmaceuticals, regenerative medicine); permanent-settlement medicine on Mars (obstetrics, pediatrics, community healthcare).

---

**Mars Direct was never just about rockets—it was about believing humans could adapt and thrive in the most alien environment imaginable.** The FHIR architectures in this Implementation Guide ensure every breath, heartbeat, millisievert, and moment of courage on Mars will be captured, preserved, and transformed into knowledge guiding future crews until Mars becomes humanity's second home.

### References

#### Mars Direct Mission Architecture

- [Zubrin RM, Baker DA. Mars Direct: A Simple, Robust, and Cost Effective Architecture for the Space Exploration Initiative. AIAA 91-0328, 1991](https://marspapers.org/paper/Zubrin_1991.pdf)
- [Mars Direct - The Mars Society](https://www.marssociety.org/concepts/mars-direct/)
- [Mars Society Founder Makes Case for 'Mars Direct' Path to the Red Planet](https://www.space.com/crewed-mars-direct-missions-robert-zubrin-iac-2019.html)

#### NASA Design Reference Architectures

- [Human Exploration of Mars Design Reference Architecture 5.0 (NASA SP-2009-566)](https://www.nasa.gov/wp-content/uploads/2015/09/373665main_nasa-sp-2009-566.pdf)
- [Proceedings of the Symposium on Manned Planetary Mission 1963](https://ntrs.nasa.gov/api/citations/19640017065/downloads/19640017065.pdf)
- [Manned Mars Landing Presentation To The Space Task Group (von Braun)](https://newspaceeconomy.ca/wp-content/uploads/2023/08/19690804_manned_mars_landing_presentation_to_the_space_task_group_by_dr._wernher_von_braun.pdf)
- [The Post-Apollo Space Program: Directions for the Future](https://www.nasa.gov/history/the-post-apollo-space-program-directions-for-the-future/)

#### SpaceX and Commercial Mars Missions

- [Mission Architecture Using SpaceX Starship for Mars (New Space Journal)](https://www.liebertpub.com/doi/10.1089/space.2020.0058)
- [3 months transit time to Mars using SpaceX Starship (Scientific Reports)](https://www.nature.com/articles/s41598-025-00565-7)
- [About feasibility of SpaceX's human exploration Mars mission scenario with Starship (Scientific Reports)](https://www.nature.com/articles/s41598-024-54012-0)
- [SpaceX: To The Moon and Beyond](https://www.spacex.com/updates#moon-and-beyond)

#### ISRU and Propulsion Systems

- [Sabatier System Design Study for Mars ISRU Propellant Production (NASA)](https://ntrs.nasa.gov/api/citations/20180004697/downloads/20180004697.pdf)
- [A membrane Sabatier system for water recovery and rocket propellant production (Nature)](https://www.nature.com/articles/s41467-025-63667-w)
- [National Strategy for Space Nuclear Power and Propulsion](https://www.federalregister.gov/documents/2020/12/23/2020-28457/posting-of-the-presidential-policy-directive-6-space-policy-national-strategy-for-space-nuclear)
- [NASA tests compact nuclear reactor for Mars base](https://gizmodo.com/nasa-runs-successful-first-tests-of-compact-nuclear-rea-1822233354)
- [Kilopower passes big ground test](https://www.space.com/40479-space-nuclear-reactor-kilopower-passes-big-test.html)

#### Radiation, Dust, and Crew Health

- [NASA. NASA Space Flight Human-System Standard, Volume 1: Crew Health. NASA-STD-3001 Vol 1 Rev C, 2024](https://www.nasa.gov/wp-content/uploads/2024/03/nasa-std-3001-vol-1-rev-c.pdf)
- [Zeitlin C, et al. Measurements of Energetic Particle Radiation in Transit to Mars on the Mars Science Laboratory. Science 340:1080-1084, 2013](https://doi.org/10.1126/science.1235989)
- [Hassler DM, et al. Mars' Surface Radiation Environment Measured with the Mars Science Laboratory's Curiosity Rover. Science 343:1244797, 2014](https://doi.org/10.1126/science.1244797)
- [Cucinotta FA, Durante M. Cancer risk from exposure to galactic cosmic rays: implications for space exploration. Lancet Oncology 7:431-435, 2006](https://doi.org/10.1016/S1470-2045(06)70695-7)
- [Hecht MH, et al. Detection of Perchlorate and the Soluble Chemistry of Martian Soil at the Phoenix Lander Site. Science 325:64-67, 2009](https://doi.org/10.1126/science.1172466)
- LeBlanc A, et al. Bone mineral and lean tissue loss after long duration space flight. Journal of Musculoskeletal and Neuronal Interactions 1(2):157-160, 2000.
- NASA Science. Mars: Facts (planetary temperature range). NASA Science Mission Directorate.

#### Robotics and Surface Operations

- [Cooperative robotic exploration of a planetary skylight surface and lava cave](https://www.science.org/doi/10.1126/scirobotics.adj9699)

#### NASA Research and Data

- [NASA Open Science Data Repository](https://smce.nasa.gov/open-science-data-repository-osdr/)
