---
title: Crew Evacuation and Emergency Response
layout: default
---

# Crew Evacuation and Emergency Response

## Overview
Crew evacuation and emergency response procedures are the final layer of defense when onboard systems or crew health fail. NASA procedures for the ISS, commercial vehicles (Dragon, Soyuz), and Artemis lunar operations emphasize rapid, standardized actions to protect the crew and enable return to Earth or movement to a safe haven.

This page defines FHIR profiles for documenting emergency conditions, evacuation procedures, risk context, and contingency plans. It supports seamless integration of onboard telemetry, ground consultation, and post-event analysis across LEO, lunar, and deep-space missions.

## Operational Context
**Primary Threats** (ISS and exploration-class vehicles)
- Rapid depressurization
- Fire / smoke
- Toxic atmosphere / chemical release
- Medical emergency requiring immediate return

**Key Constraints**
- Limited time windows (minutes for depressurization/fire)
- Communication latency (near-zero in LEO → minutes/hours in lunar or Mars transit)
- Vehicle-specific egress paths (Dragon/Orion abort, Soyuz undock, lunar lander safe-haven)
- NASA OIG audit (IG-26-004, 2026) notes that early Artemis lunar missions have no dedicated external crew-rescue capability — survival depends entirely on onboard evacuation and safe-haven protocols.

## Muster and Egress Plans
All procedures follow the proven **Warn → Gather → Work** framework:

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

These plans mirror EMT mass-casualty and firefighter rapid-intervention protocols: clear accountability, pre-assigned roles, and rehearsed egress paths.

## Communication Protocols
Standardized, concise communication is critical under stress:

- **Onboard**: Voice checklists, digital shared procedures, nonverbal signals (analogous to firefighter OATH or tap/tug protocols)
- **Ground Link**: Telemedicine consult (real-time when available) for complex decisions
- **Telemetry**: Real-time transmission of vehicle status, crew vitals, and location during muster/egress
- **Post-Event**: Structured reporting for lessons-learned and future risk refinement

## FHIR Implementation Guidance

### Recommended Resources
- `Condition` / `Observation` – emergency diagnosis
- `Procedure` – evacuation and abort actions
- `CarePlan` – contingency planning
- `RiskAssessment` – contextual probability framing (no actuarial computation)

### New Profiles (suggested)
**Core Profiles**
- **`SpaceEmergencyCondition`** – Standardized coding of emergency diagnosis (depressurization, fire, toxic atmosphere, medical) with severity, onset time, and affected modules/vehicles
- **`EmergencyEvacuationProcedure`** – Documents the specific evacuation or abort action taken (Dragon return, Soyuz undock, safe-haven relocation) including timestamps, crew roles, and outcome
- **`EmergencyRiskAssessment`** – Captures mission-phase and vehicle-specific risk context (e.g., probability categories for planning purposes) without performing statistical modeling
- **`EmergencyCarePlan`** – Links identified conditions to the full contingency plan, muster point, egress path, and post-evacuation medical follow-up

**Supporting Profiles (suggested)**
- `EmergencyMusterLog` – Crew accountability and location tracking during Gather phase
- `EvacuationTelemetryBundle` – Composite of vitals, vehicle status, and communication logs

### Candidate CodeSystems & ValueSets
- `SpaceEmergencyTypeCS` – (depressurization, fire, toxic-atmosphere, medical-evac)
- `EvacuationActionCS` – (dragon-undock, soyuz-return, orion-abort, lunar-safe-haven)
- `MusterPointVS` – (vehicle-specific safe havens and assembly points)

## Architectural Alignment
This content directly supports and extends existing IG sections:
- Crew Health Monitoring
- Space Telemedicine (real-time ground consultation during egress)
- ECLSS (toxic atmosphere and depressurization response)
- Cardiovascular / Venous Flow Countermeasures (medical evacuations)
- Radiation Exposure Tracking (storm-shelter or abort decisions)
- Metabolic Suppression (autonomous operations during comms blackout)

It forms a critical bridge toward future **autonomous medical operations** and precision risk-informed planning for exploration missions.

## References
- NASA ISS Emergency Procedures (Warn-Gather-Work model)
- NASA OIG Report IG-26-004: Management of the Human Landing System Contracts (2026) – crew rescue limitations
- Artemis Emergency Egress System Demonstrations (Kennedy Space Center)
- Commercial Crew Program contingency operations (Dragon / Starliner)
- EMT and firefighter rapid intervention and accountability protocols (adapted for space)

---

**Ready to go.** This version is tighter, operationally grounded, and clearly frames everything around **Crew Evacuation** while keeping the four profiles front-and-center. It subtly nods to actuarial/risk-modeling foundations without stepping into that territory.

Claude can merge it into the Astronaut Health section whenever ready. Want me to generate FSH for these profiles next, or shall we keep knocking out stubs? 🚀