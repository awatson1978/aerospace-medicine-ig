# AsMA 2026 Abstracts - v0.6.2

* [**Table of Contents**](toc.md)
* **AsMA 2026 Abstracts**

## AsMA 2026 Abstracts

### AsMA 2026 Abstracts - FHIR Mapping

The Aerospace Medical Association (AsMA) 2026 Interactive Poster Session produced approximately 120 abstracts covering spaceflight medicine research. This page summarizes how key abstracts map to FHIR artifacts in this Implementation Guide.

#### Abstract-to-Profile Mapping

| | | |
| :--- | :--- | :--- |
| 47 | Cardiac arrhythmia risk | [SpaceECGObservation](StructureDefinition-space-ecg-observation.md) |
| 49 | Ultrasound joint health | [SpaceJointHealthAssessment](StructureDefinition-space-joint-health-assessment.md) |
| 50 | N-Acetylcysteine radioprotection | [RadioprotectiveMedication](StructureDefinition-radioprotective-medication.md),[AntioxidantBiomarkerPanel](StructureDefinition-antioxidant-biomarker-panel.md) |
| 51 | Oral body temperature | [SpaceBodyTemperature](StructureDefinition-space-body-temperature.md) |
| 52 | CGM in spaceflight | [SpaceCGMDevice](StructureDefinition-space-cgm-device.md),[SpaceCGMObservation](StructureDefinition-space-cgm-observation.md) |
| 53 | Torpor and sleep | [SpaceSleepStudy](StructureDefinition-space-sleep-study.md),[CircadianRhythmAssessment](StructureDefinition-circadian-rhythm-assessment.md) |
| 54 | RBC rehydration | [SpaceBloodProduct](StructureDefinition-space-blood-product.md),[SpaceTransfusionProcedure](StructureDefinition-space-transfusion-procedure.md) |
| 57 | Austere blood banking | [SpaceBloodProduct](StructureDefinition-space-blood-product.md) |
| 68 | UWF OCT-A for SANS | [SANSAssessment](StructureDefinition-sans-assessment.md) |
| 108 | Postpartum recovery after spaceflight | [BoneDensityObservation](StructureDefinition-bone-density-observation.md) |
| 110 | BMD measurement | [BoneDensityObservation](StructureDefinition-bone-density-observation.md) |
| 111 | Space travel anaemia | [SpaceflightAnemiaPanel](StructureDefinition-spaceflight-anemia-panel.md) |
| 112 | DCS susceptibility | [DCSRiskAssessment](StructureDefinition-dcs-risk-assessment.md) |
| 113-114 | Surgical procedures, 3D printing | [SpaceSurgicalProcedure](StructureDefinition-space-surgical-procedure.md) |
| 117 | POCUS in austere environments | [SpacePOCUS](StructureDefinition-space-pocus.md) |
| 120 | Artemis II health stack | [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.md),[ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.md) |

#### Clinical Domain Coverage

The abstracts span the following clinical domains, each with dedicated FHIR profiles:

* **Motion Sickness** - SMS/TRMS diagnosis, antiemetic medications, adverse events, care plans
* **Temperature Monitoring** - Oral body temperature with circadian context
* **Continuous Glucose Monitoring** - CGM device, observations, summary reports
* **Sleep and Circadian Rhythms** - Sleep architecture, actigraphy, circadian assessment
* **Transfusion Medicine** - Blood products, transfusion procedures, specimen collection
* **Radioprotective Countermeasures** - Antioxidant medications and biomarker panels
* **Cardiac Monitoring** - ECG observations with arrhythmia classification
* **Ocular Health** - SANS assessment with OCT-A parameters
* **Musculoskeletal** - Bone density and joint health assessment
* **Hematology** - Spaceflight anemia panel
* **Austere Procedures** - POCUS and surgical procedures
* **EVA Risk** - Decompression sickness risk assessment

#### Shared Infrastructure

All profiles leverage shared extensions for mission context:

* [MissionContext](StructureDefinition-mission-context.md) - Links to mission encounter
* [GravityContext](StructureDefinition-gravity-context.md) - Gravitational environment
* [MissionPhase](StructureDefinition-mission-phase.md) - Mission phase timing
* [FlightDay](StructureDefinition-flight-day.md) - Flight day number
* [EvidenceSource](StructureDefinition-evidence-source.md) - Research evidence links

### References

[47] Patel, Keval, Felix Krainski, Michael Bungo, and Benjamin Levine. "Cardiac Arrhythmia Risk in Astronauts during Spaceflight: The NASA Integrated Cardiovascular Study." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[49] Sapkota, Smarika, Richard Meehan, Eric Hoffman, James Crooks, and Elizabeth Regan. "Ultrasound Assessments of Lower Extremity Joint Health after 18 Days Onboard the International Space Station." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[50] Cargill, Michael, Leigh Speicher, and John Cebak. "N-Acetylcysteine in Spaceflight Health: Current Evidence and Future Directions." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[51] Cole, Thomas. "Oral Body Temperature Changes during Long Duration Spaceflight." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[52] Beger, Samuel, Jaime Mateus, and Marissa Rosenberg. "Continuous Glucose Monitoring during Human Spaceflight: A Comparison with Terrestrial Baselines." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[53] Coonjobeeharry, Mani, and Pete Hodkinson. "Sleep Preservation in Torpor for Space Missions." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[54] Keller, Alexandra, Judith Castellon, Lucia White, and George Pantalos. "Manually-Implemented Rehydration of Dehydrated Red Blood Cells in Reduced Gravity." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[57] Nair, Nikita, George Pantalos, and Alexandra Keller. "Ground-Based Evaluation of Dehydrated Red Blood Cell Bag Pressure Seal Rupture Pressures and Channel Width." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[68] Tamayo, Stephanie, Sara Mason, and Tyson Brunstetter. "Ultra-Widefield OCT-Angiography Assessment of Choroidal Intervortex Anastomoses in Astronauts: Is There Vascular Remodeling Due to Spaceflight?" Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[108] Kakkar, Nidhi. "Postpartum Recovery and Performance in Women Following Spaceflight: Current Evidence and Future Directions." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[110] Harwood, Daniel, Moriah Thompson, and Justin Yang. "Bone Mineral Density Measurement in Space: Current Portable Imaging Capabilities and Areas of Focus." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[111] Kakkar, Nidhi. "Space Travel–Associated Anaemia: Current Understanding and Implications for Human Spaceflight." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[112] Gamble, Jessica, Bonnie Posselt, Peter D. Hodkinson, Thomas G. Smith, and Richard S. Whittle. "Exploring Individual Susceptibility to Decompression Sickness during EVA: A Personalised Medicine Approach." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[113] Myerson, Ezra, Sara Rothrock, and Peter Lee. "Evaluation of Novel 3D Printed Surgical Tools for Long Term Space Missions." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[114] Golia, Saahil, Micheal Kortz, and Kaleigh Stabenau. "Mitigation and Management of Acute Appendicitis for Long-Duration Spaceflight: A Scoping Review." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[117] Lyons, Hannah. "Point-of-Care Ultrasound (POCUS) in Austere Environments and Implications for Future Space Exploration." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

[120] Haas, Christopher. "Artemis II Crew Health Systems — From Mission Design to Operations." Poster presented at the 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.

