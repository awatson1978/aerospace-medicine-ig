---
title: Space Telemedicine
layout: default
---

### Overview

Space telemedicine enables real-time or store-and-forward clinical support when crew medical officers (CMOs) or autonomous systems require ground-specialist consultation. From early International Space Station (ISS) operations through commercial missions like Polaris Dawn and future Artemis lunar and Mars transits, telemedicine has evolved from basic voice and video to integrated remote diagnostics, device guidance, and high-bandwidth data transmission.

NASA has used telemedicine on the ISS for decades, including secure video consults and remote ultrasound guidance. In 2025 the Indian Space Research Organisation (ISRO) and the Sree Chitra Tirunal Institute for Medical Sciences and Technology (SCTIMST) signed a memorandum of understanding that, according to press reports, covers telemedicine protocols and devices for India's Gaganyaan program. Commercial providers are now testing Starlink-enabled real-time medical data exchange, while LunaNet and the Deep Space Network (DSN) will underpin lunar and deep-space connectivity.

This page defines FHIR profiles for telemedicine encounters, consult requests, data transmission, and specialized devices to support standardized, interoperable space medical operations.

### Operational Challenges

- **Communication Latency**: Near-zero in LEO; about 1.3 seconds one way to the Moon; minutes-to-tens-of-minutes one way for Mars transit
- **Bandwidth & Reliability**: Constrained by power, antenna size, and orbital geometry
- **Autonomy Requirements**: Deep-space missions demand store-and-forward, AI-assisted triage, and minimal ground dependency
- **Security & Privacy**: Protected health information (PHI) transmission across public and commercial networks
- **Regulatory Context**: FCC spectrum rules for medical telemetry (Medical Body Area Networks, MBANs; Wireless Medical Telemetry Service, WMTS) and Supplemental Coverage from Space (SCS); FAA and industry focus on performance-based medical standards through ASTM Committee F47

### Key Systems and Use Cases

**ISS Operations**
- Secure video for CMO-to-ground specialist consults
- Remote guidance for ultrasound (Butterfly iQ3 and similar handheld devices)
- Store-and-forward imaging and vital-signs transmission

**Commercial Missions (e.g., Polaris Dawn)**
- Starlink laser-based communications for real-time telemedicine, ultrasound, and vital-signs data
- Experimental near-real-time diagnostic features tested in simulation

**Artemis / Lunar Operations**
- LunaNet Interoperability Specification (LNIS) for communications, navigation, and medical data relay
- Hybrid LEO–lunar relay networks supporting high-bandwidth telemedicine

**Deep-Space / Mars Transit**
- Deep Space Network (DSN) for store-and-forward and low-bandwidth voice/data
- Future hybrid constellations (Starlink-like) for improved latency and redundancy

**ISRO Gaganyaan Program**
- 2025 ISRO–SCTIMST memorandum of understanding reported to include telemedicine, biomedical support systems, and medical device development

### FHIR Profiles and Extensions

#### Recommended Resources
- `Encounter` – extended for telemedicine modality and latency
- `ServiceRequest` / `CommunicationRequest` – specialist consultation requests
- `Communication` – clinical data, image, and video transmission
- `Device` – telemedicine-specific hardware
- `Observation` / `DiagnosticReport` – transmitted clinical findings

#### Core Profiles

- **[Telemedicine Encounter](StructureDefinition-telemedicine-encounter.html)** – Extends `Encounter` with:
  - modality, as `Encounter.type` bound to the Telemedicine Modality value set (real-time video, store-and-forward, remote-guided procedure, etc.)
  - communication latency, via the [Communication Latency](StructureDefinition-communication-latency.html) extension (a Quantity in seconds)
  - subject constrained to the [Astronaut](StructureDefinition-astronaut.html) profile
  - Network provider (Starlink, LunaNet, DSN, TDRS) and autonomy level (real-time, delayed, autonomous) are intended additions and are not yet modeled

- **[Telemedicine Consult Request](StructureDefinition-telemedicine-consult-request.html)** – Extends `ServiceRequest` for CMO-to-ground specialist requests, including urgency, suspected condition, and available onboard data

- **[Telemedicine Communication](StructureDefinition-telemedicine-communication.html)** – Extends `CommunicationRequest` for transmission of images, video, waveforms, or device telemetry with payload metadata and quality metrics

- **[Telemedicine Device](StructureDefinition-telemedicine-device.html)** – Extends `Device` for specialized hardware (remote ultrasound probes, digital stethoscopes, handheld diagnostics) with calibration, connectivity, and latency characteristics

#### Proposed Profiles (not yet defined)
- `TelemedicineCarePlan` – Links encounters, consults, and transmitted data into a cohesive care episode
- `SpaceTelemedicineSummary` – DiagnosticReport aggregating a telemedicine session

### Examples

- [Store-and-Forward Telemedicine Encounter](Encounter-Telemedicine-StoreForward-001.html) – an asynchronous consult with its latency recorded
- [Remote-Guided POCUS Request](ServiceRequest-Telemedicine-POCUS-Request-001.html) – a request for ground guidance of a point-of-care ultrasound
- [Lunar Telemedicine Terminal](Device-Telemedicine-LunarTerminal-001.html) – a surface habitat telemedicine device

### Standardized Terminologies

- [Telemedicine Modality Code System](CodeSystem-telemedicine-modality-cs.html) and [Value Set](ValueSet-telemedicine-modality-vs.html) – realtime-video, store-forward, asynchronous-text, remote-monitoring, ai-assisted-triage, remote-guided-procedure
- [Telemedicine Equipment Code System](CodeSystem-telemedicine-equipment-cs.html) and [Value Set](ValueSet-telemedicine-equipment-vs.html) – video-conferencing, remote-ultrasound, digital-stethoscope, dermatoscope, portable-xray, ecg-transmitter

#### Proposed Terminology (not yet defined)
- `SpaceCommunicationNetworkCS` – Starlink, LunaNet, DSN, TDRS, commercial-relay; the Telemedicine Encounter profile has no network element yet, so this code system would accompany a new extension
- `TelemedicineLatencyCategoryVS` – near-real-time, low-latency, high-latency, store-and-forward; the numeric latency is already carried by the Communication Latency extension

### Architectural Alignment

This content directly supports and extends existing IG sections:
- Crew Health Monitoring
- [ECLSS](eclss.html) (integration with environmental data during consults)
- [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) (remote ultrasound guidance)
- [Neurocognitive Monitoring](neurocognitive-monitoring.html) (tele-psychology and behavioral health consults)
- [Metabolic Suppression](metabolic-hibernation.html) (deep-space autonomy)
- [Radiation Exposure Tracking](radiation-tracking.html) (consults during solar-particle events)

It enables a unified Autonomous & Connected Medical Operations framework for commercial, lunar, and Mars-class missions.

### References

- FedTech Magazine. [How NASA Deploys Telehealth to Care for Astronauts](https://fedtechmagazine.com/article/2018/03/how-nasa-deploys-telehealth-care-astronauts), 2018.
- Phys.org. [Space station crew credits ultrasound machine for handling in-orbit health crisis](https://phys.org/news/2026-01-space-station-crew-credits-ultrasound.html), 2026.
- NASA Human Research Program. [https://www.nasa.gov/hrp/](https://www.nasa.gov/hrp/)
- SpaceX. [Polaris Dawn mission page](https://www.spacex.com/launches/mission/?missionId=polarisdawn), 2024.
- The New Indian Express. [ISRO signs MoU for space medicine](https://www.newindianexpress.com/states/karnataka/2025/Apr/26/isro-signs-mou-for-space-medicine), April 26, 2025 (news report on the ISRO–SCTIMST memorandum of understanding).
- NASA. [Networks Keeping NASA's Artemis II Mission Connected](https://www.nasa.gov/missions/artemis/networks-keeping-nasas-artemis-ii-mission-connected/) – LunaNet and Artemis communications.
- NASA. [Deep Space Network](https://www.nasa.gov/directorates/somd/space-communications-navigation-program/deep-space-network/) – Space Communications and Navigation (SCaN) program.
- Federal Communications Commission. [FCC Adopts Framework for Supplemental Coverage from Space](https://www.fcc.gov/document/fcc-adopts-framework-supplemental-coverage-space); [Wireless Medical Telemetry Service (WMTS)](https://www.fcc.gov/wireless/bureau-divisions/mobility-division/wireless-medical-telemetry-service-wmts).
- ASTM International. [Committee F47 on Commercial Spaceflight](https://www.astm.org/committee-f47-commercial-spaceflight.html).
- Overbey EG, et al. The Space Omics and Medical Atlas (SOMA) and international astronaut biobank. *Nature* 632:1145–1154, 2024. [https://doi.org/10.1038/s41586-024-07639-y](https://doi.org/10.1038/s41586-024-07639-y)
- Scott RT, et al. Biomonitoring and precision health in deep space supported by artificial intelligence. *Nature Machine Intelligence* 5, 2023. [https://doi.org/10.1038/s42256-023-00617-5](https://doi.org/10.1038/s42256-023-00617-5)
- SpaceNews. [Taking 'remote care' to new heights — how space can shape the future of healthcare](https://spacenews.com/taking-remote-care-to-new-heights-how-space-can-shape-the-future-of-healthcare/).
