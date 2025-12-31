Welcome to the HL7 FHIR Aerospace Medicine Implementation Guide (IG). This guide documents a standardized approach for modeling and exchanging health and medical data in aerospace environments using the Fast Healthcare Interoperability Resources (FHIR) specification. The goal of this IG is to bridge the gap between terrestrial healthcare informatics and the emerging needs of space medicine by enabling consistent, interoperable simulation and data exchange across mission profiles, devices, and care environments.

This guide is intended for developers, researchers, mission planners, medical device manufacturers, and clinicians who are designing, evaluating, or simulating health monitoring systems in aerospace domains—from commercial space tourism to long-duration crewed missions. It provides the data schemas, usage patterns, and practical mappings needed to support synthetic patient generation and interoperability across the continuum of spaceflight health data—from pre-launch screening to in-flight telemetry to post-mission rehabilitation.

![AstronauticalHealthRecordEcosystem](./AstronauticalHealthRecordEcosystem.jpg){:width="100%"}  

The design philosophy of this guide is grounded in a central thesis:

> A hospital ICU bed, an astronaut's spacesuit, and NASA mission control all share a common imperative: to continuously monitor, analyze, and act upon a human’s vital signs in a life-critical environment.

If this thesis holds, then the boundaries between Earth-based clinical care and spaceflight operational medicine begin to blur. The underlying data requirements of intensive care units—real-time biometric streaming, automated alerting, device interoperability, and physician oversight—are strikingly similar to those required for safeguarding astronauts in microgravity or hostile environments. Conversely, the rugged, autonomous, and adaptive systems developed for human spaceflight offer a promising model for remote, resource-constrained, and austere healthcare delivery on Earth.

This dual-use insight informs the architecture of this implementation guide. It proposes that spacesuits, spacecraft life support systems, and mission control centers should function as distributed, mobile intensive care environments. To enable this, they must speak the same language as Earth-based healthcare systems—namely, the FHIR standard that underpins modern electronic health record (EHR) systems, clinical decision support tools, and remote patient monitoring platforms.

By modeling aerospace medicine scenarios using FHIR resources, we unlock a number of benefits:

- We align space medicine data with terrestrial clinical systems, allowing seamless integration with hospital EMRs, biosurveillance platforms, and public health registries.

- We enable robust simulation of mission-specific medical events using synthetic patients, supporting validation, training, and protocol development without exposing real-world health data.

- We promote interoperability across vendors and systems—from wearable sensors in suits, to rovers and habitats, to ground-based mission support teams—by anchoring them to a shared, standards-based data model.

This guide includes scenario-specific implementations of FHIR resources such as Observation, Encounter, Procedure, Condition, Device, and MedicationAdministration, with extensions and constraints suitable for the aerospace domain. Use cases include:

- Health assessments before and after reentry

- Flight readiness evaluations and crew medical certification

- Continuous physiologic monitoring in microgravity

- Radiation exposure tracking during lunar EVAs

- Emergency response modeling in pressurized rovers or habitats

- Actuarial analysis of risk factors for the insurance industry.

Ultimately, this implementation guide is not only a tool for simulating patients in space - it is a statement about the convergence of aerospace and clinical medicine, and a call to design our next-generation health systems with both Earth and space in mind. As we prepare for commercial space tourism, lunar occupations, and human Mars missions, the infrastructure we build must be informed by the highest standards of safety, interoperability, and resilience.


## Publication Notice and Acknowledgements

### Publication and Release Notice

This Implementation Guide was originated and developed by the author during the course of independent research and professional inquiry conducted while working within U.S. Federal laboratory environments, including the Centers for Medicare & Medicaid Services (CMS) Alliance for Modernized Healthcare (AMH), the Center for Advanced Aviation System Development (CAASD), and the FAA Office of Aerospace Medicine.

The work reflects the author’s independent technical analysis, research interests, and subject-matter expertise in aerospace medicine, space health systems, and clinical interoperability, and was developed outside the scope of any specific sponsored program, contract, or commissioned deliverable.

This document was reviewed and approved for public release under established institutional public-release procedures.

Approved for Public Release; Distribution Unlimited.  
Public Release Case Number 25-1124.

©2025 The MITRE Corporation.  
©2026 Abigail Watson.  
All rights reserved by their respective owners.

### Acknowledgements

The author acknowledges valuable discussions, domain insights, and informal technical feedback from collaborators and stakeholders across the aerospace medicine, clinical research, and space health communities.

General domain awareness, conceptual framing, and use-case exploration reflected in this Implementation Guide have benefited from professional interactions with teams from Space ISAC, TrialX, HERMES, TRISH, and other NASA-affiliated researchers.  The views, specifications, and implementation guidance expressed in this document are solely those of the author and do not necessarily reflect the official views, policies, or endorsement of any organization referenced herein.

### Use of Large Language Models

Significant portions of this Implementation Guide were developed with the assistance of Large Language Models (LLMs), used as research and development tools under the direct supervision and editorial control of the author. The author takes full responsibility for the accuracy, appropriateness, and scientific rigor of all content presented herein.

**Tools Used:**
- **Claude Code** (Anthropic) — Primary assistant for FHIR resource development, CodeSystem generation, mission architecture research, and technical documentation
- **ChatGPT Deep Research** (OpenAI) — Supplemental research for source validation, cross-referencing, and domain exploration

**LLM-Assisted Activities:**
- Literature review and reference discovery (aerospace medicine, space health, mission architectures)
- Summarization of key stakeholders, equipment, locations, studies, procedures, conditions, etc. 
- Medical terminology mapping to standardized vocabularies (SNOMED CT, LOINC, RxNorm, ICD-10)
- FHIR resource modeling and profile development
- CodeSystem and ValueSet creation for aerospace-specific terminologies
- Generation of synthetic data files (NDJSON patient records, organization catalogs, device inventories)
- Technical writing support for use cases, implementation guidance, and mission scenarios
- Quality control through multi-LLM cross-checking and validation

**Methodology:**
Multiple LLMs were used in an iterative, cross-checking approach to enhance accuracy and reduce hallucination risk. When LLMs generated content (including mission descriptions, device specifications, crew rosters, or landing site coordinates), outputs were systematically validated against authoritative sources (NASA documentation, peer-reviewed literature, official mission briefings, and published standards). The author exercised editorial judgment at every stage, including prompt engineering, output evaluation, fact-checking, and final approval.

**Human Oversight:**
All clinical reasoning, medical safety considerations, FHIR conformance decisions, and implementation recommendations were reviewed and approved by the author. LLMs served as assistive tools to accelerate research, automate repetitive tasks (such as JSON file generation), and synthesize large volumes of source material—but did not autonomously author clinical guidance or make binding technical decisions.

**Transparency and Limitations:**
While LLMs significantly enhanced the efficiency and scope of this work, they are imperfect tools subject to errors, outdated training data, and occasional factual inaccuracies. Users of this Implementation Guide should independently verify mission-critical information, especially where human safety, regulatory compliance, or clinical decision-making is concerned. The author welcomes feedback and corrections to improve the accuracy and utility of this guide.