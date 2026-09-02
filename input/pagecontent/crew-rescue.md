---
title: Crew Evacuation and Emergency Response
layout: default
---

### Overview

Crew evacuation and emergency response procedures are the final layer of defense when onboard systems or crew health fail. NASA procedures for the International Space Station (ISS), commercial vehicles (Dragon, Soyuz), and Artemis lunar operations emphasize rapid, standardized actions to protect the crew and enable return to Earth or movement to a safe haven.

This page defines FHIR profiles for documenting emergency conditions, evacuation procedures, risk context, and contingency plans. It supports integration of onboard telemetry, ground consultation, and post-event analysis across low-Earth-orbit (LEO), lunar, and deep-space missions.

### Operational Context

**Primary Threats** (ISS and exploration-class vehicles)
- Rapid depressurization
- Fire / smoke
- Toxic atmosphere / chemical release
- Medical emergency requiring immediate return

**Key Constraints**
- Limited time windows (minutes for depressurization/fire)
- Communication latency (near-zero in LEO → minutes/hours in lunar or Mars transit)
- Vehicle-specific egress paths (Dragon/Orion abort, Soyuz undock, lunar lander safe-haven)
- The NASA Office of Inspector General (OIG) audit of the Human Landing System program (IG-26-004, 2026) notes that early Artemis lunar landings will have no dedicated external crew-rescue capability; survival depends entirely on onboard evacuation and safe-haven protocols.

### Muster and Egress Plans

This page organizes procedures with the Warn → Gather → Work sequence used in ISS emergency response training, which mirrors the accountability-first structure of terrestrial fireground and mass-casualty protocols:

**Warn**
- Automated alarms + crew annunciation
- Immediate crew accountability (roll call via voice or digital checklist)

**Gather (Muster)**
- Crew moves to pre-designated muster point (usually the docked return vehicle or designated safe-haven module)
- Don personal protective equipment (Portable Breathing Apparatus, suits)
- Verify crew presence and vehicle integrity

**Work**
- Execute vehicle-specific checklists (seal hatches, isolate modules, prepare for undock/return)
- Transition to evacuation if the threat cannot be contained

**Egress Actions (Vehicle-Specific)**
- **Dragon / Commercial Crew**: Emergency undock and deorbit burn
- **Soyuz**: Rapid undock and ballistic reentry option
- **Orion / Artemis**: Launch abort system or lunar-orbit rendezvous with safe-haven
- **Lunar Surface**: Move to lander safe-haven or surface habitat

These plans mirror emergency medical technician (EMT) mass-casualty and firefighter rapid-intervention protocols: clear accountability, pre-assigned roles, and rehearsed egress paths.

### Communication Protocols

Standardized, concise communication is critical under stress:

- **Onboard**: Voice checklists, digital shared procedures, nonverbal signals (analogous to firefighter tap/tug protocols)
- **Ground Link**: Telemedicine consult (real-time when available) for complex decisions
- **Telemetry**: Real-time transmission of vehicle status, crew vitals, and location during muster/egress
- **Post-Event**: Structured reporting for lessons-learned and future risk refinement

### FHIR Profiles and Extensions

#### Recommended Resources
- `Condition` / `Observation` – emergency diagnosis
- `Procedure` – evacuation and abort actions
- `CarePlan` – contingency planning
- `RiskAssessment` – contextual probability framing (no actuarial computation)

#### Core Profiles

- **[Space Emergency Condition](StructureDefinition-space-emergency-condition.html)** – Standardized coding of emergency diagnosis (depressurization, fire, toxic atmosphere, medical) with severity, onset time, and affected modules/vehicles
- **[Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.html)** – Documents the specific evacuation or abort action taken (Dragon return, Soyuz undock, safe-haven relocation) including timestamps, crew roles, and outcome
- **[Emergency Risk Assessment](StructureDefinition-emergency-risk-assessment.html)** – Captures mission-phase and vehicle-specific risk context (e.g., probability categories for planning purposes) without performing statistical modeling
- **[Emergency Care Plan](StructureDefinition-emergency-care-plan.html)** – Links identified conditions to the full contingency plan, muster point, egress path, and post-evacuation medical follow-up

#### Proposed Profiles (not yet defined)
- `EmergencyMusterLog` – Crew accountability and location tracking during the Gather phase
- `EvacuationTelemetryBundle` – Composite of vitals, vehicle status, and communication logs

### Examples

The three example instances form one illustrative scenario: a rapid depressurization is recorded, the crew returns in Crew Dragon, and both are tied back to the station's standing contingency plan.

- [Rapid Depressurization Event](Condition-Emergency-RapidDepress-001.html)
- [Emergency Dragon Return](Procedure-Emergency-DragonReturn-001.html)
- [ISS Emergency Contingency Plan](CarePlan-ISS-Emergency-Plan-001.html)

### Standardized Terminologies

- [Space Emergency Type Code System](CodeSystem-space-emergency-type-cs.html) and [Value Set](ValueSet-space-emergency-type-vs.html) – rapid-depress, fire-onboard, toxic-atmosphere, medical-emergency, vehicle-malfunction, collision-debris, abort-launch, abort-entry
- [Emergency Response Code System](CodeSystem-emergency-response-cs.html) and [Value Set](ValueSet-emergency-response-vs.html) – crew-dragon-return, soyuz-return, orion-abort, safe-haven, emergency-eva, emergency-undock, crew-rescue-vehicle

#### Proposed Terminology (not yet defined)
- `MusterPointVS` – vehicle-specific safe havens and assembly points; the care plan example currently describes the safe haven in each activity's description text

### Architectural Alignment

This content directly supports and extends existing IG sections:
- Crew Health Monitoring
- [Space Telemedicine](space-telemedicine.html) (real-time ground consultation during egress)
- [ECLSS](eclss.html) (toxic atmosphere and depressurization response)
- [Cardiovascular Countermeasures](cardiovascular-countermeasures.html) (medical evacuations)
- [Radiation Exposure Tracking](radiation-tracking.html) (storm-shelter or abort decisions)
- [Metabolic Suppression](metabolic-hibernation.html) (autonomous operations during communication blackout)

It forms a bridge toward future autonomous medical operations and risk-informed planning for exploration missions.

### References

- NASA. *Emergency Equipment and Procedures* (ISS reference). [https://www.nasa.gov/reference/emergency-equipment-and-procedures/](https://www.nasa.gov/reference/emergency-equipment-and-procedures/)
- NASA Office of Inspector General. *NASA's Management of the Human Landing System Program.* Report No. IG-26-004, 2026. Published at [oig.nasa.gov](https://oig.nasa.gov/).
- Flying Magazine. [Watchdog: NASA 'Ruled Out' Crew Rescue Capability for Artemis Moon Landing](https://www.flyingmag.com/nasa-crew-rescue-artemis-moon-landing/) – press coverage of the OIG finding.
- NASA. *Human Integration Design Handbook (HIDH).* NASA/SP-2010-3407, 2010. [https://www.nasa.gov/human-integration-design-handbook/](https://www.nasa.gov/human-integration-design-handbook/)
- NASA. *Orion spacecraft* program page. [https://www.nasa.gov/orion/](https://www.nasa.gov/orion/)
- NASA. *Commercial Crew Program.* [https://www.nasa.gov/commercialcrew/](https://www.nasa.gov/commercialcrew/)
- SpaceX. *Human Spaceflight* (Crew Dragon). [https://www.spacex.com/humanspaceflight/](https://www.spacex.com/humanspaceflight/)
- Boeing. *CST-100 Starliner.* [https://www.boeing.com/space/starliner/](https://www.boeing.com/space/starliner/)
- International Association of Fire Fighters. *Fire Ground Survival Program.* [https://www.iaff.org/fire-ground-survival/](https://www.iaff.org/fire-ground-survival/)
- U.S. Fire Administration (FEMA). [https://www.usfa.fema.gov/](https://www.usfa.fema.gov/)
- Space.com. [Space rescue services needed? 2 'stranded' astronaut incidents are a 'massive wake-up call,' experts say](https://www.space.com/space-exploration/human-spaceflight/space-rescue-services-needed-2-stranded-astronaut-incidents-are-a-massive-wake-up-call-experts-say)
