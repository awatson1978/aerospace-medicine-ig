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
- **`XEVASSuitDefinition`** – Standardized description of a specific xEVAS suit model with:
  - Model / configuration (xEMU, AxEMU, etc.)
  - Capabilities (mobility, life support duration, thermal control)
  - Operational parameters (maximum EVA duration, pressure, consumable capacities)

- **`EVASuitProvisioningRecord`** – Tracks logistics and delivery of suits and components:
  - Delivery status, serial numbers, and configuration
  - Assigned crewmember and mission manifest
  - Chain-of-custody and planetary-protection compliance

- **`SuitRedundancyAssessment`** – Captures current redundancy status for EVA operations:
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
- NASA xEVAS Program Overview (Artemis EVA Systems)
- NASA Office of Inspector General reports on spacesuit development
- Harwood MIT thesis on xEVAS redundancy and provisioning (2026 – pending full incorporation)
