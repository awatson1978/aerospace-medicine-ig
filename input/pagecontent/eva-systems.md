---
title: EVA Systems Expansion
layout: default
---

### Overview

Extravehicular Activity (EVA) systems are among the most complex and mission-critical elements of human spaceflight. The NASA Exploration Extravehicular Activity Services (xEVAS) program is procuring the next-generation spacesuits for Artemis lunar surface operations and future Mars missions from commercial providers. These suits must support extended EVAs, provide redundancy for crew safety, and integrate with lunar habitats and rovers.

This page defines FHIR profiles for xEVAS suit definitions, provisioning records, and redundancy assessments. It is a first pass at the domain: the profiles cover what a mission planner needs to know about which suits are where and whether enough of them work, not yet the physiological telemetry streamed from a suit during an EVA.

**Current Scope**
- Exploration Extravehicular Mobility Unit (xEMU) and commercial partners (e.g., the Axiom AxEMU)
- Suit provisioning logistics for multi-EVA campaigns
- Redundancy tracking for consumables, maintenance, and spare components

### FHIR Profiles and Extensions

#### Recommended Resources
- `Device` – spacesuit hardware
- `SupplyDelivery` / `Inventory` – provisioning and logistics
- `Observation` / `RiskAssessment` – redundancy and status tracking
- `Procedure` – EVA operations and maintenance

#### Core Profiles

- **[xEVAS Suit Definition](StructureDefinition-xevas-suit-definition.html)** – Standardized description of a specific xEVAS suit model with:
  - Model / configuration (xEMU, AxEMU, etc.)
  - Capabilities (mobility, life support duration, thermal control)
  - Operational parameters (maximum EVA duration, pressure, consumable capacities)
  - Current configuration, via the [Suit Operational State](StructureDefinition-suit-operational-state.html) extension

- **[EVA Suit Provisioning Record](StructureDefinition-eva-suit-provisioning-record.html)** – Tracks logistics and delivery of suits and components:
  - Delivery status, serial numbers, and configuration
  - Assigned crewmember and mission manifest
  - Chain-of-custody and planetary-protection compliance

- **[Suit Redundancy Assessment](StructureDefinition-suit-redundancy-assessment.html)** – Captures current redundancy status for EVA operations:
  - Number of operational suits vs. required spares
  - Consumables status (oxygen, battery, water, CO₂ scrubber)
  - Maintenance history and remaining life
  - Risk flags for mission-critical shortfalls

#### Proposed Profiles (not yet defined)
- `EVASuitTelemetryBundle` – Real-time or post-EVA suit performance data
- `EVAMaintenanceProcedure` – Scheduled and unscheduled maintenance actions

### Examples

- [xEVAS Lunar Suit Definition](DeviceDefinition-xEVAS-LunarSuit-Def-001.html) – a suit model configured for planetary-surface EVA
- [Artemis IV Suit Provisioning](SupplyDelivery-ArtemisIV-SuitProvisioning-001.html) – suits pre-positioned for the first crewed south-pole landing
- [ISS Suit Redundancy Assessment](Observation-SuitRedundancy-Assessment-001.html) – primary and backup suit status with consumables remaining

### Standardized Terminologies

- [EVA Suit State Code System](CodeSystem-eva-suit-state-cs.html) and [Value Set](ValueSet-eva-suit-state-vs.html) – microgravity-config, planetary-surface-config, iva-rescue-config, pressurization-test, stowed
- [Suit Provisioning Status Code System](CodeSystem-suit-provisioning-status-cs.html) and [Value Set](ValueSet-suit-provisioning-status-vs.html) – pre-positioned, in-transit, deployed-primary, deployed-backup, maintenance-required, end-of-life
- [EVA Suit Inventory Metric Code System](CodeSystem-eva-suit-inventory-metric-cs.html) – primary-suit-status, backup-suit-status, consumables-remaining, next-maintenance-due

#### Proposed Terminology (not yet defined)
- `XEVASSuitModelCS` – suit models (xemu, axemu, commercial-variant); the example instances currently carry the model in `DeviceDefinition.deviceName`
- `EVAConsumableTypeVS` – consumable classes (oxygen, battery, cooling-water, co2-scrubber, lithium-hydroxide)
- `SuitRedundancyStatusVS` – overall redundancy verdict (fully-redundant, marginal, critical-shortfall)

### Architectural Alignment

This content integrates with:
- Crew Health Monitoring (EVA physiological data)
- [Space Telemedicine](space-telemedicine.html) (real-time suit telemetry consults)
- [Crew Evacuation and Emergency Response](crew-rescue.html) (EVA abort scenarios)
- [Planetary Protection](planetary-protection.html) (suit decontamination)
- [ECLSS](eclss.html) (suit life-support interface)

### References

- National Aeronautics and Space Administration. *NASA Exploration Spacesuits (xEVAS).* [https://www.nasa.gov/humans-in-space/astronauts/nasa-exploration-spacesuits/](https://www.nasa.gov/humans-in-space/astronauts/nasa-exploration-spacesuits/)
- National Aeronautics and Space Administration Office of Inspector General. *NASA's Acquisition of Next-Generation Spacesuit Services.* 2026. [https://oig.nasa.gov/audits/nasas-acquisition-of-next-generation-spacesuit-services/](https://oig.nasa.gov/audits/nasas-acquisition-of-next-generation-spacesuit-services/)
- Harwood E. *Prioritization Strategies for Adapting EVA Spacesuit Architectures: Moon to Mars.* Master's thesis, Massachusetts Institute of Technology, 2026. [https://bpb-us-e1.wpmucdn.com/sites.mit.edu/dist/e/1448/files/2026/05/harwood26a.pdf](https://bpb-us-e1.wpmucdn.com/sites.mit.edu/dist/e/1448/files/2026/05/harwood26a.pdf)
- National Aeronautics and Space Administration. *EVA Reference Documents.* NASA Johnson Space Center. [https://www.nasa.gov/humans-in-space/extravehicular-activity-reference-documents/](https://www.nasa.gov/humans-in-space/extravehicular-activity-reference-documents/)
- National Aeronautics and Space Administration Office of Inspector General. *NASA's Management of ISS Extravehicular Activity Spacesuits.* [https://oig.nasa.gov/office-of-inspector-general-oig/audit-reports/nasas-management-of-iss-extravehicular-activity-spacesuits/](https://oig.nasa.gov/office-of-inspector-general-oig/audit-reports/nasas-management-of-iss-extravehicular-activity-spacesuits/)
- National Aeronautics and Space Administration. *Human Integration Design Handbook (HIDH).* NASA/SP-2010-3407. [https://www.nasa.gov/human-integration-design-handbook/](https://www.nasa.gov/human-integration-design-handbook/)
- Axiom Space. *Axiom Space spacesuits (AxEMU).* [https://www.axiomspace.com/news/axiom-space-spacesuits](https://www.axiomspace.com/news/axiom-space-spacesuits)
- ILC Dover. *Spacesuits.* [https://ilcdoverastrospace.com/aerospace/spacesuits/](https://ilcdoverastrospace.com/aerospace/spacesuits/)
- American Scientist. "The Past and Future Space Suit." [https://www.americanscientist.org/article/the-past-and-future-space-suit](https://www.americanscientist.org/article/the-past-and-future-space-suit)
- Aerospace America. "Tomorrow's Spacesuits." [https://aerospaceamerica.aiaa.org/features/tomorrows-spacesuits/](https://aerospaceamerica.aiaa.org/features/tomorrows-spacesuits/)
- Spectrum News 13. "From Apollo to Artemis: How Axiom Space's New Suits Will Handle the Harsh Moon Dust." July 17, 2023. [https://mynews13.com/fl/orlando/space/2023/07/17/from-apollo-to-artemis-how-axiom-space-s-new-suits-will-handle-the-harsh-moon-dust](https://mynews13.com/fl/orlando/space/2023/07/17/from-apollo-to-artemis-how-axiom-space-s-new-suits-will-handle-the-harsh-moon-dust)
- Futurism. "Problem: SpaceX & Boeing Suits Not Compatible for Rescue." [https://futurism.com/stranded-astronauts-spacex-boeing-spacesuits-incompatible](https://futurism.com/stranded-astronauts-spacex-boeing-spacesuits-incompatible)
- National Aeronautics and Space Administration. "Eye Checks, Pain Studies, and Spacesuit Checks Wrap Up Workweek." *ISS Blog*, January 10, 2020. [https://blogs.nasa.gov/spacestation/2020/01/10/eye-checks-pain-studies-and-spacesuit-checks-wrap-up-workweek/](https://blogs.nasa.gov/spacestation/2020/01/10/eye-checks-pain-studies-and-spacesuit-checks-wrap-up-workweek/)
- Remcom. "Wireless Modeling for Artemis Lunar Spacesuits and Vehicles." *Military Aerospace Electronics*, 2025. [https://www.militaryaerospace.com/communications/news/55319584/remcom-develops-wireless-modeling-for-artemis-lunar-spacesuits-and-vehicles](https://www.militaryaerospace.com/communications/news/55319584/remcom-develops-wireless-modeling-for-artemis-lunar-spacesuits-and-vehicles)
