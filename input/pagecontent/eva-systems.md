---
title: EVA Systems Expansion (Work in Progress)
layout: default
---

# EVA Systems Expansion (Work in Progress)

## Overview
Extravehicular Activity (EVA) systems are among the most complex and mission-critical elements of human spaceflight. The NASA xEVAS (Exploration Extravehicular Activity System) program is developing the next-generation spacesuits for Artemis lunar surface operations and future Mars missions. These suits must support extended EVAs, provide redundancy for crew safety, and integrate with lunar habitats and rovers.

This page is an **initial draft** that defines FHIR profiles for xEVAS suit definitions, provisioning records, and redundancy assessments. It will be refined once the full NASA OIG IG-26-006 (xEVAS audit) and Harwood MIT thesis (2026) are incorporated.

**Current Scope**
- xEMU (Exploration Extravehicular Mobility Unit) and commercial partners (e.g., Axiom AxEMU)
- Suit provisioning logistics for multi-EVA campaigns
- Redundancy tracking for consumables, maintenance, and spare components

## FHIR Implementation Guidance (Draft)

### Recommended Resources
- `Device` – spacesuit hardware
- `SupplyDelivery` / `Inventory` – provisioning and logistics
- `Observation` / `RiskAssessment` – redundancy and status tracking
- `Procedure` – EVA operations and maintenance

### New Profiles (suggested – Work in Progress)
**Core Profiles**
- **[`XEVASSuitDefinition`](StructureDefinition-xevas-suit-definition.html)** – Standardized description of a specific xEVAS suit model with:
  - Model / configuration (xEMU, AxEMU, etc.)
  - Capabilities (mobility, life support duration, thermal control)
  - Operational parameters (maximum EVA duration, pressure, consumable capacities)

- **[`EVASuitProvisioningRecord`](StructureDefinition-eva-suit-provisioning-record.html)** – Tracks logistics and delivery of suits and components:
  - Delivery status, serial numbers, and configuration
  - Assigned crewmember and mission manifest
  - Chain-of-custody and planetary-protection compliance

- **[`SuitRedundancyAssessment`](StructureDefinition-suit-redundancy-assessment.html)** – Captures current redundancy status for EVA operations:
  - Number of operational suits vs. required spares
  - Consumables status (oxygen, battery, water, CO₂ scrubber)
  - Maintenance history and remaining life
  - Risk flags for mission-critical shortfalls

**Supporting Profiles (suggested)**
- `EVASuitTelemetryBundle` – Real-time or post-EVA suit performance data
- `EVAMaintenanceProcedure` – Scheduled and unscheduled maintenance actions

### Candidate CodeSystems & ValueSets
- `XEVASSuitModelCS` – (xemu, axemu, commercial-variant, etc.)
- `EVAConsumableTypeVS` – (oxygen, battery, cooling-water, co2-scrubber, lithium-hydroxide)
- `SuitRedundancyStatusVS` – (fully-redundant, marginal, critical-shortfall)

## Architectural Alignment
This content will integrate with:
- Crew Health Monitoring (EVA physiological data)
- Space Telemedicine (real-time suit telemetry consults)
- Crew Evacuation and Emergency Response (EVA abort scenarios)
- Planetary Protection (suit decontamination)
- ECLSS (suit life-support interface)

**Note:** Once the 2026 OIG audit and Harwood thesis are available, we will expand the redundancy assessment logic, provisioning workflows, and any specific xEVAS audit findings.

## Next Steps
- Incorporate detailed findings from NASA OIG IG-26-006 and Harwood MIT thesis (2026)
- Add example instances (e.g., Artemis III suit provisioning bundle)
- Link to suit telemetry profiles once defined

## References (Current)
## References

- National Aeronautics and Space Administration. *Exploration Extravehicular Activity Services (xEVAS) Program Overview.* Washington, DC: NASA Extravehicular Activity and Human Surface Mobility Program.  [https://www.nasa.gov/humans-in-space/astronauts/nasa-exploration-spacesuits/](https://www.nasa.gov/humans-in-space/astronauts/nasa-exploration-spacesuits/)

- National Aeronautics and Space Administration Office of Inspector General. *NASA’s Acquisition of Next-Generation Spacesuit Services.* Washington, DC: NASA OIG, 2026.  [https://oig.nasa.gov/audits/nasas-acquisition-of-next-generation-spacesuit-services/](https://oig.nasa.gov/audits/nasas-acquisition-of-next-generation-spacesuit-services/)  

- Harwood, Emily. “Prioritization Strategies for Adapting EVA Spacesuit Architectures: Moon to Mars.” Master’s thesis, Massachusetts Institute of Technology, 2026.  [https://bpb-us-e1.wpmucdn.com/sites.mit.edu/dist/e/1448/files/2026/05/harwood26a.pdf](https://bpb-us-e1.wpmucdn.com/sites.mit.edu/dist/e/1448/files/2026/05/harwood26a.pdf)  

- National Aeronautics and Space Administration. *EVA Reference Documents.* Houston, TX: NASA Johnson Space Center.  [https://www.nasa.gov/humans-in-space/extravehicular-activity-reference-documents/](https://www.nasa.gov/humans-in-space/extravehicular-activity-reference-documents/)  

- National Aeronautics and Space Administration Office of Inspector General. *NASA’s Management of ISS Extravehicular Activity Spacesuits.* Washington, DC: NASA OIG.  [https://oig.nasa.gov/office-of-inspector-general-oig/audit-reports/nasas-management-of-iss-extravehicular-activity-spacesuits/](https://oig.nasa.gov/office-of-inspector-general-oig/audit-reports/nasas-management-of-iss-extravehicular-activity-spacesuits/)  

- Axiom Space. *Axiom Extravehicular Mobility Unit (AxEMU) Program Overview.* Houston, TX: Axiom Space.  [https://www.axiomspace.com/news/axiom-space-spacesuits](https://www.axiomspace.com/news/axiom-space-spacesuits)  

- ILC Dover. *Next-Generation Spacesuit Systems and Commercial EVA Partnerships.* Frederica, DE: ILC Dover  [https://ilcdoverastrospace.com/aerospace/spacesuits/](https://ilcdoverastrospace.com/aerospace/spacesuits/)  


- American Scientist Editorial Staff. “The Past and Future Space Suit.” *American Scientist*.  [https://www.americanscientist.org/article/the-past-and-future-space-suit](https://www.americanscientist.org/article/the-past-and-future-space-suit)  

- Aerospace America Editorial Staff. “Tomorrow’s Spacesuits.” *Aerospace America*. [https://aerospaceamerica.aiaa.org/features/tomorrows-spacesuits/](https://aerospaceamerica.aiaa.org/features/tomorrows-)  

- Spectrum News 13. “From Apollo to Artemis: How Axiom Space’s New Suits Will Handle the Harsh Moon Dust.” July 17, 2023.
[https://mynews13.com/fl/orlando/space/2023/07/17/from-apollo-to-artemis-how-axiom-space-s-new-suits-will-handle-the-harsh-moon-dust](https://mynews13.com/fl/orlando/space/2023/07/17/from-apollo-to-artemis-how-axiom-space-s-new-suits-will-handle-the-harsh-moon-dust)  

- Futurism Editorial Staff. “Problem: SpaceX & Boeing Suits Not Compatible for Rescue.” *Futurism*.
[https://futurism.com/stranded-astronauts-spacex-boeing-spacesuits-incompatible](https://futurism.com/stranded-astronauts-spacex-boeing-spacesuits-incompatible)  

- National Aeronautics and Space Administration. “Eye Checks, Pain Studies, and Spacesuit Checks Wrap Up Workweek.” *ISS Blog*, January 10, 2020.
[https://blogs.nasa.gov/spacestation/2020/01/10/eye-checks-pain-studies-and-spacesuit-checks-wrap-up-workweek/](https://blogs.nasa.gov/spacestation/2020/01/10/eye-checks-pain-studies-and-spacesuit-checks-wrap-up-workweek/)

- Remcom. “Wireless Modeling for Artemis Lunar Spacesuits and Vehicles.” *Military Aerospace Electronics*, 2025.
[https://www.militaryaerospace.com/communications/news/55319584/remcom-develops-wireless-modeling-for-artemis-lunar-spacesuits-and-vehicles](https://www.militaryaerospace.com/communications/news/55319584/remcom-develops-wireless-modeling-for-artemis-lunar-spacesuits-and-vehicles)  

- National Aeronautics and Space Administration. *Human Integration Design Handbook (HIDH).* NASA/SP-2010-3407. Washington, DC: NASA. [https://www.nasa.gov/human-integration-design-handbook/](https://www.nasa.gov/human-integration-design-handbook/)  