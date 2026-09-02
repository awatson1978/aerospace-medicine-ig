# Hyperbaric Medicine - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Hyperbaric Medicine**

## Hyperbaric Medicine

Hyperbaric medicine addresses the clinical challenges of pressure transitions encountered in both diving operations and spaceflight. Decompression sickness (DCS), barotrauma, and the physiological effects of altered ambient pressure are shared concerns across these domains. NASA prevents DCS during EVA by having crew breathe 100% oxygen before a spacewalk to purge nitrogen ahead of the suit's lower-pressure environment [1], while divers follow staged decompression schedules and gas-switch protocols to avoid the same condition. This page covers clinical assessment, hyperbaric treatment protocols, and decompression management frameworks. For underwater training operations, dive profiles, and equipment systems, see [SCUBA Training and Dive Operations](scuba-training.md).

### Overview

Pressure-related medical considerations affect both divers and astronauts in comparable ways. Increased ambient pressure (immersion) increases tissue nitrogen load, while transitioning to lower pressures (surfacing or suit depressurization) risks inert gas bubbles and decompression sickness. Understanding these shared mechanisms is essential for:

* **Prevention**: Prebreathe protocols, staged decompression schedules, and gas-switch strategies reduce DCS risk across both domains
* **Diagnosis**: Rapid identification and classification of pressure-related conditions enables timely treatment
* **Treatment**: Standardized hyperbaric treatment tables provide evidence-based protocols for recompression therapy
* **Research**: Controlled hyperbaric environments allow validation of equipment and physiological models applicable to spaceflight

### Compression and Decompression Medicine

#### Hyperbaric Treatment Capabilities

Underwater training centers often include on-site hyperbaric chambers that serve both as safety assets and research platforms. The [`HyperbaricChamber`](StructureDefinition-hyperbaric-chamber.md) location profile and [`HyperbaricTreatment`](StructureDefinition-hyperbaric-treatment.md) procedure profile document:

**Chamber Specifications:**

* **Chamber Type**: Monoplace, multiplace, portable configurations
* **Maximum Pressure**: Operating pressure capabilities
* **Treatment Capabilities**: DCS treatment, wound healing, research applications
* **Safety Systems**: Monitoring equipment, emergency protocols

**Treatment Protocols:** The [`EnhancedHyperbaricTreatment`](StructureDefinition-enhanced-hyperbaric-treatment.md) profile captures:

* **Treatment Tables**: Specific protocols (U.S. Navy Treatment Table 6, Table 5, and others)
* **Pressure Profiles**: Maximum pressure and duration
* **Gas Administration**: Oxygen concentration and air breaks
* **Patient Monitoring**: Continuous physiological monitoring
* **Complication Management**: Monitoring for oxygen toxicity and other adverse effects

These chambers can be multiplace (housing multiple people) or monoplace. Treatment protocols for any decompression sickness or other dive injuries follow established hyperbaric tables (U.S. Navy or NOAA recompression tables), which are documented and tracked in the training records. Physicians and chamber operators use standardized logbooks to record chamber pressure, gas mixtures, and schedule steps. Physiological monitoring under pressure is maintained for anyone undergoing compression: vital signs (heart rate, oxygen saturation) are tracked, and oxygen exposures are carefully controlled. Protocols for oxygen toxicity surveillance are strictly enforced: personnel are trained to watch for early central nervous system oxygen toxicity symptoms using mnemonics such as VENTID-C (vision, ears, nausea, twitching, irritability, dizziness, convulsions) and to apply air breaks as needed [2]. Chamber operations include redundancies in breathing systems and emergency air sources, analogous to spacecraft life support. Thus, hyperbaric facilities not only treat DCS but also allow controlled exposure studies, validating equipment and procedures for high-pressure environments.

#### Decompression Sickness Management

Decompression sickness risk is a key concern shared by divers and astronauts. The [`DecompressionSickness`](StructureDefinition-decompression-sickness.md) profile extends the space medicine condition profile to capture:

**DCS Documentation:**

* **Severity Classification**: Type I (musculoskeletal) versus Type II (neurological)
* **Onset Timeline**: Relationship to dive profile
* **Symptoms**: Detailed symptom tracking and progression
* **Treatment Response**: Hyperbaric therapy effectiveness

**Associated Procedures:**

* **[`DecompressionProtocol`](StructureDefinition-decompression-protocol.md)**: Standardized decompression procedures
* **[`BarotraumaAssessment`](StructureDefinition-barotrauma-assessment.md)**: Assessment of pressure-related injuries

Comprehensive DCS management begins with rapid symptom identification (joint pain, neurological signs) and classification of severity. If DCS is suspected, the affected individual is promptly transferred to hyperbaric treatment. Treatment response is closely monitored: symptoms are recorded before, during, and after recompression therapy, ensuring that the protocol (for example, U.S. Navy Treatment Table 6) is followed and adjusted as needed. After treatment, **outcome assessment** documents resolution or any residual deficits. Detailed medical notes and follow-up evaluations inform the astronaut's return-to-training timeline. Training programs also analyze DCS incidents to improve prevention: gas switch schedules, depth and time limits, and pre-dive oxygen prebreathe are reviewed in light of any "near miss" or decompression case. This iterative profiling of DCS events and responses supports evidence-based refinements to both dive practices and spaceflight prebreathe protocols.

### Clinical Integration

#### Space Medicine Correlation

Studying crew members in underwater analogs yields valuable insights into human physiology that overlap with space medicine. For example, immersion-induced fluid shifts (centralization of blood volume due to buoyancy) share features with microgravity fluid redistribution. Research has shown that immersion reduces peripheral fluid extravasation and increases central blood volume, much as fluid moves headward in space [3]. Thermal regulation is another common challenge: wearing pressurized suits or wetsuits in water can lead to heat stress similar to extravehicular activity overheating. Cognitive performance and crew psychology under stress are monitored (mission planners track workload, team dynamics, and stress markers during long dives). Because these analog studies occur in controlled environments, physiologic measurements (heart rate variability, oxygen consumption, sleep patterns) from underwater missions can be directly compared with spaceflight data. Patterns of deconditioning (muscle fatigue, bone stress) during repeated long dives can inform countermeasures for microgravity effects. In essence, the underwater analog acts as a surrogate laboratory where hypotheses about space physiology can be tested and refined.

### Implementation Considerations

#### Data Integration

Clinical decompression and hyperbaric treatment data must integrate seamlessly with broader aerospace medical records. In an HL7 FHIR R4 context, this involves using Condition resources for DCS and barotrauma cases, Procedure resources for hyperbaric treatments, and Observation resources for physiological monitoring during chamber sessions. Medical evaluations (pre- and post-treatment physical exams, imaging results, neurological assessments) are tracked alongside treatment history. Provider roles can also be coded precisely: the NUCC Health Care Provider Taxonomy used by FHIR's provider-taxonomy value set includes an Undersea and Hyperbaric Medicine specialty, so the treating physician's `PractitionerRole.specialty` can name the discipline directly [4].

#### Quality Assurance

Hyperbaric chamber operations demand rigorous quality assurance. All chamber hardware (valves, gauges, breathing systems) is calibrated and maintained on strict schedules parallel to aerospace quality protocols. Chamber operators are certified to hyperbaric safety standards and attend requalification courses regularly. Treatment protocols are audited against established standards (U.S. Navy, NOAA), and incident reporting systems capture any adverse events or near-misses during treatments. Medical surveillance includes routine follow-ups for treated patients, monitoring for late-onset neurological symptoms or residual deficits.

### Future Directions

* **Predictive DCS risk modeling**: Sophisticated models (possibly based on machine learning) could predict individual DCS or fatigue risk from prior dive history and physiological data, customizing prebreathe and decompression protocols for each individual.
* **Expanded hyperbaric applications**: Research continues into therapeutic uses of hyperbaric oxygen beyond DCS treatment, including wound healing, radiation injury mitigation, and potential neuroprotective applications relevant to long-duration spaceflight.

### FHIR Profiles and Extensions

This implementation guide provides FHIR profiles for hyperbaric medicine and decompression management. The data model supports:

* **Condition Documentation**: Using the [`DecompressionSickness`](StructureDefinition-decompression-sickness.md) profile for DCS cases and [`BarotraumaAssessment`](StructureDefinition-barotrauma-assessment.md) for pressure injuries
* **Treatment Protocols**: Via the [`HyperbaricTreatment`](StructureDefinition-hyperbaric-treatment.md) and [`EnhancedHyperbaricTreatment`](StructureDefinition-enhanced-hyperbaric-treatment.md) profiles
* **Facility Management**: Through the [`HyperbaricChamber`](StructureDefinition-hyperbaric-chamber.md) location profile
* **Decompression Procedures**: Using the [`DecompressionProtocol`](StructureDefinition-decompression-protocol.md) profile

The table below groups these profiles by the kind of record each one produces.

| | | |
| :--- | :--- | :--- |
| **Conditions** | [`DecompressionSickness`](StructureDefinition-decompression-sickness.md),[`BarotraumaAssessment`](StructureDefinition-barotrauma-assessment.md) | Document DCS cases and pressure-related injuries |
| **Treatments** | [`HyperbaricTreatment`](StructureDefinition-hyperbaric-treatment.md),[`EnhancedHyperbaricTreatment`](StructureDefinition-enhanced-hyperbaric-treatment.md) | Capture hyperbaric therapy protocols and outcomes |
| **Facilities** | [`HyperbaricChamber`](StructureDefinition-hyperbaric-chamber.md) | Track chamber specifications and capabilities |
| **Protocols** | [`DecompressionProtocol`](StructureDefinition-decompression-protocol.md) | Standardize decompression procedures |

### Examples

* [Example Hyperbaric Chamber](Location-ExampleHyperbaricChamber.md) and [NASA Hyperbaric Facility](Location-NASAHyperbaricFacility.md): chamber locations recorded with the [`HyperbaricChamber`](StructureDefinition-hyperbaric-chamber.md) profile, showing chamber type, maximum pressure, and treatment capabilities.
* [Hyperbaric Treatment Chamber](Location-HyperbaricChamberFacility.md): a plain Location record for a treatment facility attached to an underwater training centre.

### Standardized Terminologies

This implementation guide defines code systems and value sets for hyperbaric medicine and decompression management. The code systems supply local codes for examinations, treatments, and chamber characteristics; the value sets select the codes bound to specific profile elements.

#### Clinical Codes

* **[`DivingMedicineCS`](CodeSystem-diving-medicine-cs.md)**: Medical examinations, dive profiles, hyperbaric treatments
* **[`DecompressionProtocolCS`](CodeSystem-decompression-protocol-cs.md)**: Decompression algorithms, safety procedures, ascent protocols
* **[`HyperbaricCapabilitiesCS`](CodeSystem-hyperbaric-capabilities-cs.md)**: Treatment capabilities a chamber offers
* **[`HyperbaricChamberTypeCS`](CodeSystem-hyperbaric-chamber-type-cs.md)**: Monoplace, multiplace, and portable chamber types

#### Value Sets for Implementation

* **[`DivingMedicalExaminations`](ValueSet-diving-medical-examinations-vs.md)**: Standardized diving medical assessments
* **[`DecompressionProcedures`](ValueSet-decompression-procedures-vs.md)**: Decompression treatment and safety procedures
* **[`HyperbaricCapabilities`](ValueSet-hyperbaric-capabilities-vs.md)**: Chamber capability codes
* **[`HyperbaricChamberType`](ValueSet-hyperbaric-chamber-type-vs.md)**: Chamber type codes

### References

* [1] NASA Human Health and Performance Directorate. EVA and Environmental Physiology (Space Suits and Exploration Operations). https://www.nasa.gov/directorates/esdmd/hhp/space-suits-and-exploration-operations/
* [2] NOAA Office of Marine and Aviation Operations. NOAA Operating Standards for Hyperbaric Chambers (Recompression Chamber Operations), 2017. https://www.omao.noaa.gov/sites/default/files/documents/NOAA%20Operating%20Standards%20for%20Hyperbaric%20Chambers%20Final%2001-2017.pdf
* [3] Pendergast DR, et al. The Circulatory Effects of Increased Hydrostatic Pressure Due to Immersion and Submersion. Frontiers in Physiology, 2021. https://pmc.ncbi.nlm.nih.gov/articles/PMC8326965/
* [4] HL7 International. Value Set: Provider Taxonomy (NUCC Health Care Provider Taxonomy), FHIR continuous integration build. https://build.fhir.org/valueset-provider-taxonomy.html

