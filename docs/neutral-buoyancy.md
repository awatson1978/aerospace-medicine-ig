# Neutral Buoyancy Training - v0.5.2

* [**Table of Contents**](toc.md)
* **Neutral Buoyancy Training**

## Neutral Buoyancy Training

## Underwater Training and Decompression Medicine

Underwater training facilities serve as realistic Earth-based analogs for space missions. For example, NASA's Neutral Buoyancy Laboratory (NBL) – one of the world's largest indoor training pools – is used for mission planning, procedure development, hardware verification, and astronaut training in preparation for spacewalks¹. In parallel, NASA's NEEMO missions immerse crews in the Aquarius undersea habitat (62 feet deep off Key Largo) for 1–3 week "saturation" dives, effectively simulating long-duration spacecraft habitation and hyperbaric exposures²'³. These environments allow multinational teams (NASA, ESA, CSA, UAE and others) to practice complex tasks like assembling habitat mockups, cargo handling, and emergency drills in an isolated, high-pressure setting⁴'³. By training underwater, astronauts and support personnel confront stressors analogous to those in space – from life-support dependency to confined isolation – making these dual-use operations invaluable for both diving medicine and space medicine.

### FHIR Implementation Framework

This implementation guide provides comprehensive FHIR profiles for underwater training environments that serve as space analogs. The data model supports:

* **Training Session Documentation**: Using the [`NeutralBuoyancySession`](StructureDefinition-neutral-buoyancy-session.md) profile
* **Medical Clearance Tracking**: Via the [`DiveMedicalClearance`](StructureDefinition-dive-medical-clearance.md) profile
* **Dive Profile Analytics**: Through the [`DiveProfile`](StructureDefinition-dive-profile.md) and [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) profiles
* **Equipment Integration**: Using specialized device profiles for diving and communication equipment
* **Regulatory Compliance**: Through the [`RegulatoryComplianceAssessment`](StructureDefinition-regulatory-compliance-assessment.md) profile

#### Core Profiles Overview

The implementation includes several key profile categories:

| | | |
| :--- | :--- | :--- |
| **Training Procedures** | `NeutralBuoyancySession`,`UnderwaterEVASimulation` | Document training activities and performance |
| **Medical Assessments** | `DiveMedicalClearance`,`BarotraumaAssessment` | Track medical fitness and injuries |
| **Dive Operations** | `DiveProfile`,`DecompressionProtocol` | Capture operational data and safety protocols |
| **Emergency Response** | `DecompressionSickness`,`HyperbaricTreatment`,`UnderwaterEmergencyResponse` | Manage incidents and treatments |
| **Equipment & Facilities** | `DivingEquipment`,`HyperbaricChamber`,`UnderwaterCommunicationSystem` | Track devices and locations |

### Overview

The physiological and operational challenges of underwater environments closely parallel those encountered in space:

* **Confined, hostile environments**: Underwater habitats and spacecraft are closed systems where even minor equipment failures can become critical. Life support (breathing gas, pressure regulation, thermal control) is mandatory in both settings¹. Crew members work in limited spaces, isolated from immediate external aid, which demands strict life-support and evacuation protocols.
* **Complex task performance**: Astronauts must perform intricate tasks (tool handling, assembly, repair) while burdened by bulky gear or buoyancy effects. Underwater neutrality is often adjusted to simulate weightlessness, so that manipulating large masses feels akin to microgravity operations⁵. These simulations test fine motor skills and decision-making under physical strain and altered proprioception.
* **Emergency response protocols**: Whether under water or in orbit, emergency scenarios (e.g. rapid depressurization, equipment failures, diver "out-of-air" events) require rigorously practiced procedures. In both domains, crews train for remote rescues and on-site first response – for example, using onboard oxygen supplies, communicating with support teams, and executing contingency escapes.
* **Equipment dependency**: Survival depends on sophisticated life-support and mobility systems in both domains. Submersible breathing apparatus (SCUBA or mixed-gas regulators) and space suits provide breathable gas, pressure control, and thermal regulation. Facilities like the NBL maintain SCUBA and surface-supplied dive systems (air and nitrox) and even house an on-site hyperbaric chamber⁶. Similarly, spacecraft suits and vehicles carry redundant systems for gas supply, carbon dioxide scrubbing, and overheating prevention. Both require stringent pre-dive/airlock checks and backup contingencies.
* **Pressure-related medical considerations**: Changes in ambient pressure affect the human body in comparable ways. Increased ambient pressure (immersion) increases tissue nitrogen load, while transitioning to lower pressures (surfacing or suit depressurization) risks inert gas bubbles and decompression sickness (DCS). For instance, NASA must prevent DCS during EVA by using 100% oxygen prebreathe to purge nitrogen before the suit's lower-pressure environment⁷. Similarly, divers follow staged decompression schedules and gas-switch protocols to avoid DCS.

This dual-use approach enables NASA and other agencies to apply spaceflight medical standards to dive training and vice versa. Underwater training leverages precise monitoring and safety practices so that lessons learned about human physiology, equipment, and procedures can directly improve space mission readiness and diving program safety.

### Neutral Buoyancy Training

The Neutral Buoyancy Laboratory (NBL) and similar facilities provide the highest-fidelity analog for EVA tasks on Earth. Astronauts wear full pressure suits and conduct simulated spacewalks beneath the pool surface, with expert divers providing safety and technical support⁶'⁵. In these sessions, every aspect of the dive is meticulously managed and recorded:

#### Training Session Implementation

Each neutral buoyancy session is documented using the [`NeutralBuoyancySession`](StructureDefinition-neutral-buoyancy-session.md) profile, which captures:

* **Session Metadata**: Duration, maximum depth, training objectives
* **Performance Metrics**: Task completion times, movement efficiency, communication quality
* **Safety Protocols**: Emergency procedures, equipment status, environmental conditions
* **Regulatory Compliance**: Standards adherence and certification tracking

**Example Training Session:**

```
{
  "resourceType": "Procedure",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/aerospace/StructureDefinition/neutral-buoyancy-session"]
  },
  "status": "completed",
  "code": {
    "coding": [{
      "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/neutral-buoyancy-training-cs",
      "code": "eva-simulation",
      "display": "EVA Simulation Training"
    }]
  },
  "subject": {"reference": "Patient/CaptainJaneway"},
  "performedDateTime": "2025-06-01T09:00:00Z",
  "location": {"reference": "Location/NASANeutralBuoyancyLaboratory"}
}

```

For EVA-specific simulations, the [`UnderwaterEVASimulation`](StructureDefinition-underwater-eva-simulation.md) profile extends the base training session with:

* **Suit Configuration**: Space suit simulator specifications
* **Tool Usage Assessment**: Effectiveness metrics for equipment manipulation
* **Crew Coordination**: Multi-astronaut task coordination evaluation
* **Emergency Response**: Assessment of emergency procedure execution

See the [example training session](Procedure-ExampleNeutralBuoyancySession.md) for a complete implementation.

#### Training Performance Metrics

The standardized [`NeutralBuoyancyTrainingCS`](CodeSystem-neutral-buoyancy-training-cs.md) code system defines:

* **Training Types**: EVA simulation, tool manipulation, emergency egress, crew coordination
* **Performance Metrics**: Task completion time, movement efficiency, communication clarity
* **Assessment Categories**: Equipment handling proficiency, spatial orientation, stress management

#### EVA simulation fidelity

Underwater training allows detailed emulation of spacewalk conditions. Trainers measure how effectively crew members manipulate tools while weightless and wearing pressurized suits. They evaluate team coordination during multi-astronaut operations (e.g. mock ISS assembly or habitat construction) and monitor cognitive load and fatigue accumulation over hours of work. Communications systems (including specialized underwater full-face masks with hardwired links) are tested for clarity and reliability in the noisy environment⁸. Emergency drills (such as rapid ascent protocols or suit breach scenarios) are practiced with realism. All these factors—task performance, teamwork, fatigue, comms integrity, emergency responsiveness—are documented so that training effectiveness can be quantified and EVA procedures refined.

### SCUBA and Diving Medicine Integration

#### Medical Clearance Framework

Diving for space analog training requires extending standard astronaut health screening to include dive-specific evaluations. The [`DiveMedicalClearance`](StructureDefinition-dive-medical-clearance.md) profile documents comprehensive medical assessments including:

**Core Medical Evaluations:**

* **Pulmonary Function**: Spirometry and lung imaging via the `PulmonaryFunction` extension
* **Cardiovascular Fitness**: Exercise tolerance and cardiac assessment through `CardiovascularFitness` extension
* **Vestibular Assessment**: Inner ear and balance function evaluation using `VestibularAssessment` extension
* **Contraindications Screening**: Medical conditions that preclude diving through `DivingContraindications` extension

In addition to routine aerospace medical exams, candidates undergo protocols similar to the NOAA Diving Medical Program. For example, all potential divers must demonstrate adequate respiratory function via spirometry and lung imaging⁹, ensuring no obstructive or restrictive disease impairs breathing under pressure. **Cardiovascular fitness** is also assessed (e.g. treadmill tests, ECG, lipid profile) to certify that the diver can handle the exertion and stress of diving¹⁰. A thorough **neurological and vestibular exam** is critical; inner-ear disorders (such as Meniere's disease, chronic otitis, or prior ear surgery) can prevent proper pressure equalization and are disqualifying¹¹.

**Medical Contraindications:** The [`DivingContraindicatedConditions`](ValueSet-diving-contraindicated-conditions.md) value set includes conditions such as:

* Asthma and respiratory disorders
* Cardiac arrhythmias and heart disease
* History of decompression sickness
* Claustrophobia and anxiety disorders
* Pregnancy and certain medications

Medical history reviews emphasize any previous dive-related incidents (decompression illness, arterial gas embolism, barotrauma) as potential contraindications or criteria for individualized assessment. Clearance to dive is granted only after all these factors meet conservative standards (e.g. absence of disqualifying conditions)⁹'¹¹. This multi-domain screening helps prevent medical emergencies during training dives.

#### Dive Profile and Exposure Tracking

Modern dive operations generate extensive digital logs that feed directly into training records using the [`DiveProfile`](StructureDefinition-dive-profile.md) and [`AdvancedDiveProfile`](StructureDefinition-advanced-dive-profile.md) profiles. These capture:

**Core Dive Parameters:**

* **Maximum Depth**: Deepest point reached during dive
* **Bottom Time**: Duration at working depth
* **Surface Interval**: Rest time between dives
* **Ascent Rate**: Rate of return to surface
* **Environmental Conditions**: Water temperature, visibility, currents

**Advanced Analytics** (via `AdvancedDiveProfile`):

* **Nitrogen Loading**: Tissue saturation calculations
* **Breathing Gas Mixture**: Gas composition used
* **Decompression Obligations**: Required safety stops
* **Communication Logs**: Underwater communication records
* **Emergency Procedures**: Any emergency responses

Commercial dive computers continuously record depth and time profiles for each dive, calculate decompression requirements, and monitor nitrogen saturation in tissues. After each dive, these logs (often in standard formats) can be uploaded to training databases. Key data such as maximum depth, bottom time, ascent rate, and required decompression stops are captured. Decompression obligations are computed using established dive tables or algorithms, and actual ascent profiles are compared to planned schedules. Environmental conditions (water temperature, visibility, currents) and the breathing gas mix used (air, nitrox, trimix) are annotated. Importantly, repetitive dives over days or weeks are tracked to quantify cumulative nitrogen loading; for example, NOAA requires dive computers for multi-day operations and mandates recording of residual nitrogen¹². This rich dive-exposure record integrates with the diver's health monitoring, enabling evaluation of cumulative decompression risk and informing safe scheduling of future dives.

### Standardized Medical Terminologies

This implementation guide defines comprehensive code systems for underwater training medicine:

#### Training and Procedure Codes

* **[`NeutralBuoyancyTrainingCS`](CodeSystem-neutral-buoyancy-training-cs.md)**: Training activities, performance metrics, environments
* **[`DivingMedicineCS`](CodeSystem-diving-medicine-cs.md)**: Medical examinations, dive profiles, hyperbaric treatments
* **[`DecompressionProtocolCS`](CodeSystem-decompression-protocol-cs.md)**: Decompression algorithms, safety procedures, ascent protocols

#### Communication and Equipment

* **[`UnderwaterCommunicationCS`](CodeSystem-underwater-communication-cs.md)**: Communication systems, protocols, equipment status
* **[`RegulatoryComplianceCS`](CodeSystem-regulatory-compliance-cs.md)**: NOAA, OSHA, NASA, and international standards

#### Value Sets for Implementation

* **[`NeutralBuoyancyTrainingActivities`](ValueSet-neutral-buoyancy-training-activities.md)**: Training procedures and assessments
* **[`UnderwaterTrainingProcedures`](ValueSet-underwater-training-procedures.md)**: Underwater training and emergency procedures
* **[`DivingContraindicatedConditions`](ValueSet-diving-contraindicated-conditions.md)**: Medical conditions that preclude diving

### Compression and Decompression Medicine

#### Hyperbaric Treatment Capabilities

Underwater training centers often include on-site hyperbaric chambers that serve both as safety assets and research platforms. The [`HyperbaricChamber`](StructureDefinition-hyperbaric-chamber.md) location profile and [`HyperbaricTreatment`](StructureDefinition-hyperbaric-treatment.md) procedure profile document:

**Chamber Specifications:**

* **Chamber Type**: Monoplace, multiplace, portable configurations
* **Maximum Pressure**: Operating pressure capabilities
* **Treatment Capabilities**: DCS treatment, wound healing, research applications
* **Safety Systems**: Monitoring equipment, emergency protocols

**Treatment Protocols:** The [`EnhancedHyperbaricTreatment`](StructureDefinition-enhanced-hyperbaric-treatment.md) profile captures:

* **Treatment Tables**: Specific protocols (USN Table 6, Table 5, etc.)
* **Pressure Profiles**: Maximum pressure and duration
* **Gas Administration**: Oxygen concentration and air breaks
* **Patient Monitoring**: Continuous physiological monitoring
* **Complication Management**: Monitoring for oxygen toxicity and other adverse effects

These chambers can be multi-place (housing multiple people) or monoplace. Treatment protocols for any decompression sickness or other dive injuries follow established hyperbaric tables (e.g. U.S. Navy or NOAA recompression tables), which are documented and tracked in the training records. Physicians and chamber operators use standardized logbooks to record chamber pressure, gas mixtures, and schedule steps. Physiological monitoring under pressure is maintained for anyone undergoing compression: vital signs (heart rate, SpO₂) are tracked, and oxygen exposures are carefully controlled. Protocols for oxygen toxicity surveillance are strictly enforced: personnel are trained to watch for early CNS oxygen toxicity symptoms using mnemonics (e.g. VENTID‑C) and to apply air-breaks as needed¹³. Chamber operations include redundancies in breathing systems and emergency air sources, analogous to spacecraft life support. Thus, hyperbaric facilities not only treat DCS but also allow controlled exposure studies, validating equipment and procedures for high-pressure environments.

#### Decompression Sickness Management

Decompression sickness (DCS) risk is a key concern shared by divers and astronauts. The [`DecompressionSickness`](StructureDefinition-decompression-sickness.md) profile extends the space medicine condition profile to capture:

**DCS Documentation:**

* **Severity Classification**: Type I (musculoskeletal) vs Type II (neurological)
* **Onset Timeline**: Relationship to dive profile
* **Symptoms**: Detailed symptom tracking and progression
* **Treatment Response**: Hyperbaric therapy effectiveness

**Associated Procedures:**

* **[`DecompressionProtocol`](StructureDefinition-decompression-protocol.md)**: Standardized decompression procedures
* **[`BarotraumaAssessment`](StructureDefinition-barotrauma-assessment.md)**: Assessment of pressure-related injuries

Comprehensive DCS management begins with rapid symptom identification (joint pain, neurological signs) and classification of severity. If DCS is suspected, the affected individual is promptly transferred to hyperbaric treatment. Treatment response is closely monitored: symptoms are recorded before, during, and after recompression therapy, ensuring that the protocol (e.g. USN Table 6) is followed and adjusted as needed. After treatment, **outcome assessment** documents resolution or any residual deficits. Detailed medical notes and follow-up evaluations inform the astronaut's return-to-training timeline. Training programs also analyze DCS incidents to improve prevention: for example, gas switch schedules, depth/time limits, and pre-dive oxygen prebreathe are reviewed in light of any "near miss" or decompression case. This iterative profiling of DCS events and responses supports evidence-based refinements to both dive practices and spaceflight pre-breathing protocols.

### Pressure Environment Safety

#### Atmospheric Transition Monitoring

Rapid pressure changes are hazardous in both diving and spaceflight. Training programs continuously monitor pressure change rates during descent/ascent and ensure strict adherence to equalization protocols (e.g. ear clearing, mask balancing). The breathing gas composition is managed closely: divers often use nitrox (oxygen-enriched air) or mixed gases to optimize decompression, while spacecraft might adjust cabin O₂ levels for missions. Biophysically, models of nitrogen uptake and elimination are applied to predict tissue loading; these models are analogous to NASA's microgravity denitrogenation protocols. In an emergency (e.g. rapid ascent from a disabled submersible), divers and crews are trained in emergency decompress procedures, including rapid oxygen breathing and immediate chamber therapy. Sensors in the facility and suits track ambient pressure and gas partial pressures in real-time, alerting the team if thresholds are approached. All these measures ensure safe atmospheric transitions during analog missions.

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

Breathing gas quality is closely monitored: filter cartridges and compressors are inspected to prevent contamination (nitrogen dioxide, carbon monoxide, etc.). Life-support gear is built with redundancies – for instance, space suits have backup oxygen tanks, and divers carry independent bailout bottles. Training emphasizes failure response drills: if a regulator or suit fan fails, the diver/astronaut must switch to secondary systems immediately. Diving teams follow maintenance schedules (e.g. calibrating pressure gauges, servicing valves) that mirror aerospace maintenance protocols. Emergency life support durations are computed into mission plans: divers train to know exactly how long their bailout supply lasts at working depths, similar to how EVAs are planned around consumables. Communication systems are also stress-tested underwater: full-face masks with wired communication (used during SEATEST-7 and NEEMO) show how to maintain clear audio/video links even when handling cables⁸. By treating diving gear and spacecraft systems under a unified safety doctrine, programs ensure that astronauts can seamlessly apply space-proven life-support strategies in the water, and vice versa.

### Clinical Integration

#### Space Medicine Correlation

Studying crewmembers in underwater analogs yields valuable insights into human physiology that overlap with space medicine. For example, immersion-induced fluid shifts (centralization of blood volume due to buoyancy) share features with microgravity fluid redistribution. Research has shown that immersion reduces peripheral fluid extravasation and increases central blood volume, much like fluid moves cephalad in space¹⁴. Thermal regulation is another common challenge: wearing pressurized suits or wetsuits in water can lead to heat stress similar to extravehicular activity overheating. Cognitive performance and crew psychology under stress are monitored (mission planners track workload, team dynamics, and stress markers during long dives). Because these analog studies occur in controlled environments, physiologic measurements (heart rate variability, oxygen consumption, sleep patterns) from underwater missions can be directly compared with spaceflight data. Patterns of deconditioning (muscle fatigue, bone stress) during repeated long dives can inform countermeasures for microgravity effects. In essence, the underwater analog acts as a surrogate laboratory where hypotheses about space physiology can be tested and refined.

#### Training Effectiveness Assessment

Quantitative evaluation is built into every dive program using the performance metrics captured in our FHIR profiles. The "skills transfer" from underwater training to space missions is assessed by comparing performance in neutral-buoyancy or saturation dives with performance in microgravity or simulator trials. Benchmark tasks (e.g. timed assembly of mock satellite components) are repeated across simulation modes to verify that underwater proficiency correlates with expected EVA performance. Medical monitoring is continuous: divers who train for weeks may undergo serial health checks to ensure continuity of medical data (e.g. tracking any signs of cumulative nitrogen exposure or stress). All mission logs, dive profiles, and medical observations feed into risk models. For instance, data on crew fatigue and decompression exposures can be used to predict DCS risk for upcoming training schedules. Likewise, psychological measures (mood questionnaires, decision-making tasks) are used to quantify cognitive effects of the extreme environment. This integrated monitoring allows for dynamic risk assessments – if certain profiles (e.g. repeated deep dives without adequate surface interval) are correlated with higher bubble scores, the program will adjust training protocols. The end goal is an evidence-based curriculum where individual response (fitness, stress tolerance, learning curves) informs personalized dive schedules and training loads.

### Implementation Examples

#### Complete Training Session Example

The [`ExampleNeutralBuoyancySession`](Procedure-ExampleNeutralBuoyancySession.md) demonstrates a typical 3-hour EVA simulation session with:

* Session duration and depth parameters
* Training objectives and task completion metrics
* Safety protocol compliance
* Equipment configuration details

#### Dive Profile Example

The [`ExampleDiveProfile`](Observation-ExampleDiveProfile.md) shows comprehensive dive data collection including:

* Maximum depth of 12 meters for 180 minutes
* Water temperature and visibility conditions
* Decompression requirements and nitrogen loading
* Communication system performance

#### Medical Clearance Example

The [`ExampleDiveMedicalClearance`](Procedure-ExampleDiveMedicalClearance.md) illustrates the medical clearance process with:

* Comprehensive fitness assessments
* Contraindication screening
* Certification level and restrictions
* Follow-up requirements

### Implementation Considerations

#### Data Integration

Successfully managing underwater training requires fusing diverse data streams into a cohesive record. Dive computers export standardized log files (often in Garmin/CSV formats) that can be parsed into electronic health records. Physiological monitors (biotelemetry for heart rate, temperature, oximetry) feed into mission databases in real-time. Performance metrics (task timing, error counts) and environmental sensors (pool temperature, gas composition) are linked to each training session. These data should be codified with consistent units and time stamps. Medical evaluations (pre- and post-dive physical exams, imaging results, lab tests) are tracked alongside dive history. In an HL7 FHIR context (R4), this could involve using Observation resources for dive vitals, Procedure resources for dive events, Condition for any decompression illness, and Device for equipment logs. Notably, future FHIR versions introduce even more relevant features: for example, FHIR v6 (ballot) has a dedicated provider taxonomy entry for "Undersea and Hyperbaric Medicine" specialists¹⁵, and R5 is expected to add environmental exposure profiling. Leveraging these standards, the analog dive program can ensure interoperability of its health and training data with broader aerospace medical records.

#### Quality Assurance

Robust QA is essential for safe diving operations. All hardware (suits, breathing regulators, chamber valves) is calibrated and maintained on strict schedules parallel to aerospace quality protocols. Personnel are certified to diving standards: e.g. NASA divers often hold NOAA/AAUS certifications and attend requalification courses annually. Safety procedures are audited: checklists for dive briefings, emergency drills, and chamber operations are standardized and training sessions are observed for compliance. Incident reporting systems capture near-misses to continually refine safety plans. Medical surveillance includes routine follow-ups for divers, monitoring for late-onset dive-related effects (like ear trauma or subtle neurological symptoms). To ensure consistency across facilities, standardized training curricula and protocols are adopted (for instance, using common dive tables or preload protocols). By applying rigorous QA — analogous to spacecraft safety reviews — the underwater analog program maintains a "mission-ready" culture where both diving and spaceflight best practices reinforce each other.

### Future Directions

Underwater analog training continues to evolve with advancing technology and medical knowledge:

* **Advanced simulation technologies**: Virtual reality and haptic feedback may be integrated into underwater training (as in NASA's AMADEE/MOONDIVE projects) to superimpose mission visuals on divers, enhancing realism without additional physical hazard.
* **Enhanced physiological monitoring**: Wearable sensors (e.g. NIRS, ECG patches) and AI-based analytics can provide richer real-time insight into diver health, allowing finer correlations between analog and spaceflight data.
* **Predictive risk modeling**: Sophisticated models (possibly based on machine learning) could predict individual DCS or fatigue risk from prior dive history, customizing training regimens.
* **Personalized training protocols**: Based on individual medical responses (heart rate trends, cognitive scores), dive exposures and prebreathe procedures could be tailored to optimize safety and learning for each astronaut candidate.
* **Dual-use equipment development**: New life-support hardware (e.g. closed-loop rebreathers or hybrid buoyancy-suit systems) may be designed for both deep diving and planetary EVA, streamlining research for both fields.

In summary, leveraging underwater training and decompression medicine in a unified framework creates an evidence-based foundation for astronaut preparation. This approach not only enhances the safety and effectiveness of spacewalk and mission training, but also drives advances in diving and hyperbaric medicine that benefit the broader medical community.

### References

¹ [Neutral Buoyancy Laboratory - NASA](https://www.nasa.gov/johnson/neutral-buoyancy-laboratory/)

² [Human Adaptations to Multiday Saturation on NASA NEEMO - PubMed](https://pubmed.ncbi.nlm.nih.gov/33510647/)

³ [Astronauts Test Retro Spacesuit Tech for Mock Mars Missions Under the Sea & Space](https://www.space.com/astronauts-test-retro-spacesuit-ocean-floor.html)

⁴ [From Sea to Space - Divers Alert Network](https://dan.org/alert-diver/article/from-sea-to-space/)

⁵ [EVA and Environmental Physiology - NASA](https://www.nasa.gov/directorates/esdmd/hhp/space-suits-and-exploration-operations/)

⁶ [NOAA DIVING PROGRAM](https://www.omao.noaa.gov/sites/default/files/documents/Diving%20Medical%20Standards%20and%20Procedures%20Manual%2C%202010.pdf)

⁹ [NOAA Diving Medical Standards and Procedures Manual](https://omao.noaa.gov/sites/default/files/2023-05/NDSSM%20MAY%202023%20FINAL.pdf)

¹³ [RECOMPRESSION CHAMBER OPERATIONS](https://www.omao.noaa.gov/sites/default/files/documents/NOAA%20Operating%20Standards%20for%20Hyperbaric%20Chambers%20Final%2001-2017.pdf)

¹⁴ [The Circulatory Effects of Increased Hydrostatic Pressure Due to Immersion and Submersion - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8326965/)

¹⁵ [Valueset-provider-taxonomy - FHIR v6.0.0-ballot2](https://build.fhir.org/valueset-provider-taxonomy.html)

