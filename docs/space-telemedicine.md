# Space Telemedicine - v0.6.0

* [**Table of Contents**](toc.md)
* **Space Telemedicine**

## Space Telemedicine

# Space Telemedicine in Aerospace Operations

## Overview

Space telemedicine enables real-time or store-and-forward clinical support when crew medical officers (CMOs) or autonomous systems require ground-specialist consultation. From early ISS operations through commercial missions like Polaris Dawn and future Artemis lunar/Mars transits, telemedicine has evolved from basic voice/video to integrated remote diagnostics, device guidance, and high-bandwidth data transmission.

NASA has used telemedicine on the ISS for decades (VSee video platform, remote ultrasound guidance). The 2025 ISRO–SCTIMST MoU explicitly advances telemedicine protocols and devices for India’s Gaganyaan program. Commercial providers are now testing Starlink-enabled real-time medical data exchange, while LunaNet and the Deep Space Network (DSN) will underpin lunar and deep-space connectivity.

This page defines FHIR profiles for telemedicine encounters, consult requests, data transmission, and specialized devices to support standardized, interoperable space medical operations.

## Operational Challenges

* **Communication Latency**: Near-zero in LEO; 1–2 seconds lunar; minutes-to-hours for Mars transit
* **Bandwidth & Reliability**: Constrained by power, antenna size, and orbital geometry
* **Autonomy Requirements**: Deep-space missions demand store-and-forward, AI-assisted triage, and minimal ground dependency
* **Security & Privacy**: Protected health information (PHI) transmission across public/commercial networks
* **Regulatory Context**: FCC spectrum rules for medical telemetry (MBANs, WMTS) and Supplemental Coverage from Space (SCS); FAA/Commercial Space Federation focus on performance-based medical standards

## Key Systems and Use Cases

**ISS Operations**

* VSee secure video for CMO-to-ground specialist consults
* Remote guidance for ultrasound (Butterfly iQ3 and similar handheld devices)
* Store-and-forward imaging and vital-signs transmission

**Commercial Missions (e.g., Polaris Dawn)**

* Starlink laser-based communications for real-time telemedicine, ultrasound, and vital-signs data
* Experimental near-real-time diagnostic features tested in simulation

**Artemis / Lunar Operations**

* LunaNet interoperability specification (LNIS) for communications, navigation, and medical data relay
* Hybrid LEO–lunar relay networks supporting high-bandwidth telemedicine

**Deep-Space / Mars Transit**

* Deep Space Network (DSN) for store-and-forward and low-bandwidth voice/data
* Future hybrid constellations (Starlink-like) for improved latency and redundancy

**ISRO Gaganyaan Program**

* 2025 ISRO–SCTIMST MoU explicitly includes telemedicine, biomedical support systems, and medical device development

## FHIR Implementation Guidance

### Recommended Resources

* `Encounter` – extended for telemedicine modality and latency
* `ServiceRequest` / `CommunicationRequest` – specialist consultation requests
* `Communication` – clinical data, image, and video transmission
* `Device` – telemedicine-specific hardware
* `Observation` / `DiagnosticReport` – transmitted clinical findings

### New Profiles (suggested)

**Core Profiles**

* **[`TelemedicineEncounter`](StructureDefinition-telemedicine-encounter.md)** – Extends `Encounter` with: 
* `modality` (video, audio, store-and-forward, remote-ultrasound)
* `communicationLatency` (Quantity in seconds or minutes)
* `networkProvider` (Starlink, LunaNet, DSN, TDRS, etc.)
* `autonomyLevel` (real-time, delayed, autonomous)
 
* **[`TelemedicineConsultRequest`](StructureDefinition-telemedicine-consult-request.md)** – Extends `ServiceRequest` for CMO-to-ground specialist requests, including urgency, suspected condition, and available onboard data
* **[`TelemedicineCommunication`](StructureDefinition-telemedicine-communication.md)** – Extends `Communication` for transmission of images, video, waveforms, or device telemetry with payload metadata and quality metrics
* **[`TelemedicineDevice`](StructureDefinition-telemedicine-device.md)** – Extends `Device` for specialized hardware (remote ultrasound probes, digital stethoscopes, handheld diagnostics) with calibration, connectivity, and latency characteristics

**Supporting Profiles (suggested)**

* `TelemedicineCarePlan` – Links encounters, consults, and transmitted data into a cohesive care episode
* `SpaceTelemedicineSummary` – DiagnosticReport aggregating a telemedicine session

### Candidate CodeSystems & ValueSets

* [`TelemedicineModalityCS`](CodeSystem-telemedicine-modality-cs.md) – (real-time-video, store-and-forward, remote-ultrasound-guidance, etc.)
* `SpaceCommunicationNetworkCS` – (Starlink, LunaNet, DSN, TDRS, commercial-relay)
* `TelemedicineLatencyCategoryVS` – (near-real-time, low-latency, high-latency, store-and-forward)

## Architectural Alignment

This content directly supports and extends existing IG sections:

* Crew Health Monitoring
* ECLSS (integration with environmental data during consults)
* Cardiovascular Countermeasures / Venous Flow (remote ultrasound guidance)
* Neurocognitive Monitoring (tele-psychology and behavioral health consults)
* Metabolic Suppression / Autonomous Medical Operations (deep-space autonomy)
* Radiation Exposure Tracking (consults during solar-particle events)

It enables a unified **Autonomous & Connected Medical Operations** framework for commercial, lunar, and Mars-class missions.

## References

## References

* National Aeronautics and Space Administration. **International Space Station Telemedicine Operations and Remote Medical Support Systems.** Houston, TX: NASA Johnson Space Center.
* National Aeronautics and Space Administration. **Remote Guidance Ultrasound Procedures for Spaceflight Medical Operations.** Houston, TX: NASA Human Research Program.
* Polaris Program. **Polaris Dawn Mission Communications and Medical Operations.** Polaris Program / SpaceX, 2024.
* Indian Space Research Organisation and Sree Chitra Tirunal Institute for Medical Sciences and Technology. **Framework Memorandum of Understanding on Space Medicine and Telemedicine Systems.** Bengaluru and Thiruvananthapuram, April 2025.
* National Aeronautics and Space Administration. **LunaNet Interoperability Specification (LNIS).** Washington, DC: NASA Space Communications and Navigation (SCaN) Program.
* National Aeronautics and Space Administration. **Deep Space Network (DSN).** Washington, DC: NASA Jet Propulsion Laboratory.
* Federal Communications Commission. **Supplemental Coverage from Space (SCS) and Medical Telemetry Spectrum Policy.** Washington, DC: Federal Communications Commission.
* ASTM International Committee F47 on Commercial Spaceflight. **Consensus Standards for Human Spaceflight Medical Capabilities and Crew Safety.** West Conshohocken, PA: ASTM International.
* Overbey, Jessica, et al. “The Space Omics and Medical Atlas (SOMA) and International Astronaut Biobank.” **Nature** 631 (2024): 416–425. [https://doi.org/10.1038/s41586-024-07639-y](https://doi.org/10.1038/s41586-024-07639-y).
* Topol, Eric J., Daniel Kraft, and colleagues. “Biomonitoring and Precision Health in Deep Space Supported by Artificial Intelligence.” **Nature Machine Intelligence** 5 (2023): 583–599. [https://doi.org/10.1038/s42256-023-00617-5](https://doi.org/10.1038/s42256-023-00617-5).

