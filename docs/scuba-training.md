# SCUBA Training and Dive Operations - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **SCUBA Training and Dive Operations**

## SCUBA Training and Dive Operations

Underwater training facilities serve as the highest-fidelity Earth-based analogs for extravehicular activity (EVA). NASA's Neutral Buoyancy Laboratory (NBL), NASA Extreme Environment Mission Operations (NEEMO) undersea missions, and similar programs immerse astronauts in environments that closely replicate the physical and operational demands of spacewalks, from life-support dependency to confined isolation [1][2][3]. This page covers the training operations, dive medicine integration, equipment systems, and performance assessment frameworks used in these programs. For clinical decompression sickness management and hyperbaric treatment protocols, see [Hyperbaric Medicine and Decompression Management](hyperbaric-medicine.md).

### Overview

The physiological and operational challenges of underwater environments closely parallel those encountered in space:

* **Confined, hostile environments**: Underwater habitats and spacecraft are closed systems where even minor equipment failures can become critical. Life support (breathing gas, pressure regulation, thermal control) is mandatory in both settings [1]. Crew members work in limited spaces, isolated from immediate external aid, which demands strict life-support and evacuation protocols.
* **Complex task performance**: Astronauts must perform intricate tasks (tool handling, assembly, repair) while burdened by bulky gear or buoyancy effects. Underwater neutrality is often adjusted to simulate weightlessness, so that manipulating large masses feels akin to microgravity operations [4]. These simulations test fine motor skills and decision-making under physical strain and altered proprioception.
* **Emergency response protocols**: Whether under water or in orbit, emergency scenarios (rapid depressurization, equipment failures, diver "out-of-air" events) require rigorously practiced procedures. In both domains, crews train for remote rescues and on-site first response, for example using onboard oxygen supplies, communicating with support teams, and executing contingency escapes.
* **Equipment dependency**: Survival depends on sophisticated life-support and mobility systems in both domains. Submersible breathing apparatus (SCUBA or mixed-gas regulators) and space suits provide breathable gas, pressure control, and thermal regulation. Facilities like the NBL maintain SCUBA and surface-supplied dive systems (air and nitrox) and house an on-site hyperbaric chamber [1][5]. Similarly, spacecraft suits and vehicles carry redundant systems for gas supply, carbon dioxide scrubbing, and overheating prevention. Both require stringent pre-dive/airlock checks and backup contingencies.
* **Pressure-related medical considerations**: Changes in ambient pressure affect the human body in comparable ways in the water and in the airlock. The clinical side of this topic, including decompression sickness (DCS), barotrauma, and recompression treatment, is covered on the [Hyperbaric Medicine](hyperbaric-medicine.md) page.

### Neutral Buoyancy Training

The Neutral Buoyancy Laboratory (NBL) and similar facilities provide the highest-fidelity analog for EVA tasks on Earth. Astronauts wear full pressure suits and conduct simulated spacewalks beneath the pool surface, with expert divers providing safety and technical support [1][4]. In these sessions, every aspect of the dive is meticulously managed and recorded.

#### Training Session Implementation

Each neutral buoyancy session is documented using the [`NeutralBuoyancySession`](StructureDefinition-neutral-buoyancy-session.md) profile, which captures:

* **Session Metadata**: Duration, maximum depth, training objectives
* **Performance Metrics**: Task completion times, movement efficiency, communication quality
* **Safety Protocols**: Emergency procedures, equipment status, environmental conditions
* **Regulatory Compliance**: Standards adherence and certification tracking

The following JSON is an illustrative training-session record conforming to the profile (a fuller instance is linked under Examples below):

```
{
  "resourceType": "Procedure",
  "meta": {
    "profile": ["https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-session"]
  },
  "status": "completed",
  "code": {
    "coding": [{
      "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/neutral-buoyancy-training-cs",
      "code": "eva-simulation",
      "display": "EVA Simulation Training"
    }]
  },
  "subject": {"reference": "Patient/ExampleAstronaut"},
  "performedDateTime": "2025-06-01T09:00:00Z",
  "location": {"reference": "Location/NASANeutralBuoyancyLaboratory"}
}

```

For EVA-specific simulations, the [`UnderwaterEVASimulation`](StructureDefinition-underwater-eva-simulation.md) profile extends the base training session with:

* **Suit Configuration**: Space suit simulator specifications
* **Tool Usage Assessment**: Effectiveness metrics for equipment manipulation
* **Crew Coordination**: Multi-astronaut task coordination evaluation
* **Emergency Response**: Assessment of emergency procedure execution

#### Training Performance Metrics

The [`NeutralBuoyancyTrainingCS`](CodeSystem-neutral-buoyancy-training-cs.md) code system defines:

* **Training Types**: EVA simulation, tool manipulation, emergency egress, crew coordination
* **Performance Metrics**: Task completion time, movement efficiency, communication clarity
* **Assessment Categories**: Equipment handling proficiency, spatial orientation, stress management

#### EVA Simulation Fidelity

Underwater training allows detailed emulation of spacewalk conditions. Trainers measure how effectively crew members manipulate tools while weightless and wearing pressurized suits. They evaluate team coordination during multi-astronaut operations (for example, mock ISS assembly or habitat construction) and monitor cognitive load and fatigue accumulation over hours of work. Communications systems (including specialized underwater full-face masks with hardwired links) are tested for clarity and reliability in the noisy environment [6]. Emergency drills (such as rapid ascent protocols or suit breach scenarios) are practiced with realism. All of these factors (task performance, teamwork, fatigue, communications integrity, emergency responsiveness) are documented so that training effectiveness can be quantified and EVA procedures refined.

### SCUBA and Diving Medicine Integration

#### Medical Clearance Framework

Diving for space analog training requires extending standard astronaut health screening to include dive-specific evaluations. The [`DiveMedicalClearance`](StructureDefinition-dive-medical-clearance.md) profile documents comprehensive medical assessments including:

**Core Medical Evaluations:**

* **Pulmonary Function**: Spirometry and lung imaging via the [`PulmonaryFunction`](StructureDefinition-pulmonary-function.md) extension
* **Cardiovascular Fitness**: Exercise tolerance and cardiac assessment through the [`CardiovascularFitness`](StructureDefinition-cardiovascular-fitness.md) extension
* **Vestibular Assessment**: Inner ear and balance function evaluation using the [`VestibularAssessment`](StructureDefinition-vestibular-assessment.md) extension
* **Contraindications Screening**: Medical conditions that preclude diving through the [`DivingContraindications`](StructureDefinition-diving-contraindications.md) extension

In addition to routine aerospace medical exams, candidates undergo protocols similar to the NOAA Diving Medical Program. For example, all potential divers must demonstrate adequate respiratory function via spirometry and lung imaging, ensuring no obstructive or restrictive disease impairs breathing under pressure [7]. **Cardiovascular fitness** is also assessed (treadmill tests, ECG, lipid profile) to certify that the diver can handle the exertion and stress of diving [5]. A thorough **neurological and vestibular exam** is critical; inner-ear disorders (such as Meniere's disease, chronic otitis, or prior ear surgery) can prevent proper pressure equalization and are disqualifying [7].

**Medical Contraindications:** The [`DivingContraindicatedConditions`](ValueSet-diving-contraindicated-conditions-vs.md) value set includes conditions such as:

* Asthma and respiratory disorders
* Cardiac arrhythmias and heart disease
* History of decompression sickness
* Claustrophobia and anxiety disorders
* Pregnancy and certain medications

Medical history reviews emphasize any previous dive-related incidents (decompression illness, arterial gas embolism, barotrauma) as potential contraindications or criteria for individualized assessment. Clearance to dive is granted only after all these factors meet conservative standards, such as absence of disqualifying conditions [5][7]. This multi-domain screening helps prevent medical emergencies during training dives.

#### Dive Profile and Exposure Tracking

Modern dive operations generate extensive digital logs that feed directly into training records using the [`DiveProfile`](StructureDefinition-dive-profile.md) and [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) profiles. These capture:

**Core Dive Parameters:**

* **Maximum Depth**: Deepest point reached during dive
* **Bottom Time**: Duration at working depth
* **Surface Interval**: Rest time between dives
* **Ascent Rate**: Rate of return to surface
* **Environmental Conditions**: Water temperature, visibility, currents

**Advanced Analytics** (via [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md)):

* **Nitrogen Loading**: Tissue saturation calculations
* **Breathing Gas Mixture**: Gas composition used
* **Decompression Obligations**: Required safety stops
* **Communication Logs**: Underwater communication records
* **Emergency Procedures**: Any emergency responses

Commercial dive computers continuously record depth and time profiles for each dive, calculate decompression requirements, and monitor nitrogen saturation in tissues. After each dive, these logs (often in standard formats) can be uploaded to training databases. Key data such as maximum depth, bottom time, ascent rate, and required decompression stops are captured. Decompression obligations are computed using established dive tables or algorithms, and actual ascent profiles are compared to planned schedules. Environmental conditions (water temperature, visibility, currents) and the breathing gas mix used (air, nitrox, trimix) are annotated. Importantly, repetitive dives over days or weeks are tracked to quantify cumulative nitrogen loading; for example, NOAA requires dive computers for multi-day operations and mandates recording of residual nitrogen [7]. This rich dive-exposure record integrates with the diver's health monitoring, enabling evaluation of cumulative decompression risk and informing safe scheduling of future dives.

### Pressure Environment Safety

#### Atmospheric Transition Monitoring

Rapid pressure changes are hazardous in both diving and spaceflight. Training programs continuously monitor pressure change rates during descent and ascent and ensure strict adherence to equalization protocols (ear clearing, mask balancing). The breathing gas composition is managed closely: divers often use nitrox (oxygen-enriched air) or mixed gases to optimize decompression, while spacecraft may adjust cabin oxygen levels for missions. Biophysically, models of nitrogen uptake and elimination are applied to predict tissue loading; these models are analogous to NASA's microgravity denitrogenation (prebreathe) protocols. In an emergency (for example, rapid ascent from a disabled submersible), divers and crews are trained in emergency decompression procedures, including oxygen breathing and immediate chamber therapy. Sensors in the facility and suits track ambient pressure and gas partial pressures in real time, alerting the team if thresholds are approached. All of these measures support safe atmospheric transitions during analog missions.

#### Equipment Integration and Safety

Diving and spacecraft life-support equipment share many design principles. The [`DivingEquipment`](StructureDefinition-diving-equipment.md) and [`UnderwaterCommunicationSystem`](StructureDefinition-underwater-communication-system.md) profiles track:

**Life Support Equipment:**

* **Breathing Systems**: SCUBA, surface-supplied, mixed-gas systems
* **Pressure Monitoring**: Depth gauges, pressure sensors, safety alarms
* **Thermal Protection**: Wetsuits, dry suits, heating systems
* **Emergency Equipment**: Bailout bottles, emergency ascent devices

**Communication Systems:**

* **Hardwired Communication**: Physical cable-based systems
* **Through-Water Communication**: Wireless underwater systems
* **Emergency Signaling**: Standard hand signals, emergency protocols
* **Range and Quality**: Communication effectiveness metrics

Breathing gas quality is closely monitored: filter cartridges and compressors are inspected to prevent contamination (nitrogen dioxide, carbon monoxide, and so on). Life-support gear is built with redundancies; for instance, space suits have backup oxygen tanks, and divers carry independent bailout bottles. Training emphasizes failure response drills: if a regulator or suit fan fails, the diver or astronaut must switch to secondary systems immediately. Diving teams follow maintenance schedules (calibrating pressure gauges, servicing valves) that mirror aerospace maintenance protocols. Emergency life-support durations are computed into mission plans: divers train to know exactly how long their bailout supply lasts at working depths, similar to how EVAs are planned around consumables. Communication systems are also stress-tested underwater: full-face masks with wired communication, used during the SEATEST and NEEMO undersea missions, show how to maintain clear audio and video links even when handling cables [6]. By treating diving gear and spacecraft systems under a unified safety doctrine, programs ensure that astronauts can apply space-proven life-support strategies in the water, and vice versa.

### Clinical Integration

#### Training Effectiveness Assessment

Quantitative evaluation is built into every dive program using the performance metrics captured in the FHIR profiles above. The "skills transfer" from underwater training to space missions is assessed by comparing performance in neutral-buoyancy or saturation dives with performance in microgravity or simulator trials. Benchmark tasks (for example, timed assembly of mock satellite components) are repeated across simulation modes to verify that underwater proficiency correlates with expected EVA performance. Medical monitoring is continuous: divers who train for weeks may undergo serial health checks to ensure continuity of medical data (for example, tracking any signs of cumulative nitrogen exposure or stress). All mission logs, dive profiles, and medical observations feed into risk models. For instance, data on crew fatigue and decompression exposures can be used to predict DCS risk for upcoming training schedules. Likewise, psychological measures (mood questionnaires, decision-making tasks) are used to quantify cognitive effects of the extreme environment. This integrated monitoring allows for dynamic risk assessments: if certain profiles (for example, repeated deep dives without adequate surface interval) are correlated with higher bubble scores, the program adjusts training protocols. The end goal is an evidence-based curriculum where individual response (fitness, stress tolerance, learning curves) informs personalized dive schedules and training loads.

#### Space Medicine Correlation

Underwater analog studies also yield physiological insights that transfer to space medicine, because immersion-induced fluid shifts, thermal load in suits, and crew psychology under stress all have close spaceflight counterparts. That discussion, with its supporting references, is on the [Hyperbaric Medicine and Decompression Management](hyperbaric-medicine.md#space-medicine-correlation) page.

### Implementation Considerations

#### Data Integration

Successfully managing underwater training requires fusing diverse data streams into a cohesive record. Dive computers export standardized log files (often in vendor or CSV formats) that can be parsed into electronic health records. Physiological monitors (biotelemetry for heart rate, temperature, oximetry) feed into mission databases in real time. Performance metrics (task timing, error counts) and environmental sensors (pool temperature, gas composition) are linked to each training session. These data should be codified with consistent units and time stamps. Medical evaluations (pre- and post-dive physical exams, imaging results, lab tests) are tracked alongside dive history. In an HL7 FHIR R4 context, this involves Observation resources for dive vitals and dive profiles, Procedure resources for dive events and clearances, Condition for any decompression illness, and Device for equipment logs.

#### Quality Assurance

Robust quality assurance is essential for safe diving operations. All hardware (suits, breathing regulators, chamber valves) is calibrated and maintained on strict schedules parallel to aerospace quality protocols. Personnel are certified to diving standards; NASA divers commonly hold NOAA or American Academy of Underwater Sciences (AAUS) certifications and attend requalification courses annually. Safety procedures are audited: checklists for dive briefings, emergency drills, and chamber operations are standardized, and training sessions are observed for compliance. Incident reporting systems capture near-misses to continually refine safety plans. Medical surveillance includes routine follow-ups for divers, monitoring for late-onset dive-related effects (such as ear trauma or subtle neurological symptoms).

### Future Directions

* **Advanced simulation technologies**: Virtual reality and haptic feedback may be integrated into underwater training (as explored in European projects such as MOONDIVE and the Austrian Space Forum's AMADEE missions) to superimpose mission visuals on divers, enhancing realism without additional physical hazard.
* **Enhanced physiological monitoring**: Wearable sensors (near-infrared spectroscopy, ECG patches) and AI-based analytics can provide richer real-time insight into diver health, allowing finer correlations between analog and spaceflight data.
* **Personalized training protocols**: Based on individual medical responses (heart rate trends, cognitive scores), dive exposures and prebreathe procedures could be tailored to optimize safety and learning for each astronaut candidate.
* **Dual-use equipment development**: New life-support hardware (closed-loop rebreathers or hybrid buoyancy-suit systems) may be designed for both deep diving and planetary EVA, streamlining research for both fields.

### FHIR Profiles and Extensions

This implementation guide provides FHIR profiles for underwater training environments that serve as space analogs. The data model supports:

* **Training Session Documentation**: Using the [`NeutralBuoyancySession`](StructureDefinition-neutral-buoyancy-session.md) profile
* **Medical Clearance Tracking**: Via the [`DiveMedicalClearance`](StructureDefinition-dive-medical-clearance.md) profile
* **Dive Profile Analytics**: Through the [`DiveProfile`](StructureDefinition-dive-profile.md) and [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) profiles
* **Equipment Integration**: Using the [`DivingEquipment`](StructureDefinition-diving-equipment.md) and [`UnderwaterCommunicationSystem`](StructureDefinition-underwater-communication-system.md) device profiles
* **Facilities**: Using the [`NeutralBuoyancyFacility`](StructureDefinition-neutral-buoyancy-facility.md) location profile
* **Regulatory Compliance**: Through the [`RegulatoryComplianceAssessment`](StructureDefinition-regulatory-compliance-assessment.md) profile

The table below groups these profiles by the kind of record each one produces.

| | | |
| :--- | :--- | :--- |
| **Training Procedures** | [`NeutralBuoyancySession`](StructureDefinition-neutral-buoyancy-session.md),[`UnderwaterEVASimulation`](StructureDefinition-underwater-eva-simulation.md) | Document training activities and performance |
| **Medical Assessments** | [`DiveMedicalClearance`](StructureDefinition-dive-medical-clearance.md) | Track medical fitness for dive operations |
| **Dive Operations** | [`DiveProfile`](StructureDefinition-dive-profile.md),[`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) | Capture operational data and dive analytics |
| **Equipment and Facilities** | [`DivingEquipment`](StructureDefinition-diving-equipment.md),[`UnderwaterCommunicationSystem`](StructureDefinition-underwater-communication-system.md),[`NeutralBuoyancyFacility`](StructureDefinition-neutral-buoyancy-facility.md) | Track devices, communication systems, and training pools |

### Examples

#### Training Session Example

The [Example Neutral Buoyancy Training Session](Procedure-ExampleNeutralBuoyancySession.md) demonstrates a typical EVA simulation session at the [NASA Neutral Buoyancy Laboratory](Location-NASANeutralBuoyancyLaboratory.md), with:

* Session date, status, and location
* Training activity coding
* The subject astronaut and performing facility

#### Dive Profile Example

The [Example Training Dive Profile](Observation-ExampleDiveProfile.md) shows dive data collection including:

* Maximum depth of 12 metres and a bottom time of 180 minutes
* Water temperature

A note on this profile: 12 m (40 ft) is the depth of the NBL pool, and NBL dives are surface-supplied rather than open-water SCUBA. On air, published no-decompression limits at 12 m are on the order of 140 to 160 minutes (140 min in recreational dive-planner tables; 163 min in the U.S. Navy Diving Manual air table) [8][9], so a 180-minute bottom time on air would exceed the limit. The NBL avoids this by supplying its support divers with oxygen-enriched air (nitrox), which lengthens the allowable bottom time at this depth [1]. The example is therefore only consistent with a nitrox breathing gas; implementers recording long shallow dives should document the gas mixture using the [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) breathing-gas component, or use a shorter bottom time when air is the gas.

#### Medical Clearance Example

The [Example Dive Medical Clearance](Procedure-ExampleDiveMedicalClearance.md) illustrates the medical clearance process with:

* A coded diving medical examination
* The clearance outcome
* The date of clearance relative to the training dive

#### Equipment Examples

The [SCUBA Diving Equipment](Device-ScubaDivingEquipment.md) and [Neutral Buoyancy Facility Equipment](Device-NeutralBuoyancyFacilityEquipment.md) devices show how breathing apparatus and pool equipment are recorded with the [`DivingEquipment`](StructureDefinition-diving-equipment.md) profile.

### Standardized Terminologies

This implementation guide defines code systems and value sets for underwater training operations. The code systems supply the local codes for activities, communication systems, and standards bodies; the value sets select the codes bound to specific profile elements.

#### Training and Equipment Codes

* **[`NeutralBuoyancyTrainingCS`](CodeSystem-neutral-buoyancy-training-cs.md)**: Training activities, performance metrics, environments
* **[`UnderwaterCommunicationCS`](CodeSystem-underwater-communication-cs.md)**: Communication systems, protocols, equipment status
* **[`RegulatoryComplianceCS`](CodeSystem-regulatory-compliance-cs.md)**: NOAA, OSHA, NASA, and international standards

#### Value Sets for Implementation

* **[`NeutralBuoyancyTrainingActivities`](ValueSet-neutral-buoyancy-training-activities-vs.md)**: Training procedures and assessments
* **[`UnderwaterTrainingProcedures`](ValueSet-underwater-training-procedures-vs.md)**: Underwater training and emergency procedures
* **[`DivingContraindicatedConditions`](ValueSet-diving-contraindicated-conditions-vs.md)**: Medical conditions that preclude diving
* **[`UnderwaterCommunicationSystems`](ValueSet-underwater-communication-systems-vs.md)**: Communication system types
* **[`RegulatoryStandards`](ValueSet-regulatory-standards-vs.md)**: Standards a dive operation is assessed against

### References

* [1] NASA Johnson Space Center. Neutral Buoyancy Laboratory. https://www.nasa.gov/johnson/neutral-buoyancy-laboratory/
* [2] Sonnenfeld G, et al. Human Adaptations to Multiday Saturation on NASA NEEMO. Frontiers in Physiology, 2021. https://pubmed.ncbi.nlm.nih.gov/33510647/
* [3] Space.com. Astronauts Test Retro Spacesuit Tech for Mock Mars Missions Under the Sea. https://www.space.com/astronauts-test-retro-spacesuit-ocean-floor.html
* [4] NASA Human Health and Performance Directorate. EVA and Environmental Physiology (Space Suits and Exploration Operations). https://www.nasa.gov/directorates/esdmd/hhp/space-suits-and-exploration-operations/
* [5] NOAA Diving Program. Diving Medical Standards and Procedures Manual, 2010. https://www.omao.noaa.gov/sites/default/files/documents/Diving%20Medical%20Standards%20and%20Procedures%20Manual%2C%202010.pdf
* [6] Divers Alert Network. From Sea to Space. Alert Diver. https://dan.org/alert-diver/article/from-sea-to-space/
* [7] NOAA Office of Marine and Aviation Operations. NOAA Diving Standards and Safety Manual, May 2023. https://omao.noaa.gov/sites/default/files/2023-05/NDSSM%20MAY%202023%20FINAL.pdf
* [8] Naval Sea Systems Command. U.S. Navy Diving Manual, Revision 7 (SS521-AG-PRO-010), Chapter 9, Air Decompression (no-decompression limits table), 2016.
* [9] Professional Association of Diving Instructors. Recreational Dive Planner (table no-decompression limits).

