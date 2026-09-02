The Aerospace Medical Association (AsMA) 97th Annual Scientific Meeting (May 2026) included an interactive poster session of roughly 120 abstracts covering spaceflight medicine research. This page summarizes how key abstracts map to FHIR artifacts in this Implementation Guide. Poster numbers are those used in the session programme; the numbered references at the end of the page give the authors and titles.

### Abstract-to-Profile Mapping

The table below lists each poster, its topic, and the profile or profiles in this guide that would carry its data. Reference numbers link to the citations at the end of the page.

| Ref. | Poster | Topic | FHIR Profiles |
|------|--------|-------|---------------|
| [1] | 47 | Cardiac arrhythmia risk | [SpaceECGObservation](StructureDefinition-space-ecg-observation.html) |
| [2] | 49 | Ultrasound joint health | [SpaceJointHealthAssessment](StructureDefinition-space-joint-health-assessment.html) |
| [3] | 50 | N-Acetylcysteine radioprotection | [RadioprotectiveMedication](StructureDefinition-radioprotective-medication.html), [AntioxidantBiomarkerPanel](StructureDefinition-antioxidant-biomarker-panel.html) |
| [4] | 51 | Oral body temperature | [SpaceBodyTemperature](StructureDefinition-space-body-temperature.html) |
| [5] | 52 | CGM in spaceflight | [SpaceCGMDevice](StructureDefinition-space-cgm-device.html), [SpaceCGMObservation](StructureDefinition-space-cgm-observation.html) |
| [6] | 53 | Torpor and sleep | [SpaceSleepStudy](StructureDefinition-space-sleep-study.html), [CircadianRhythmAssessment](StructureDefinition-circadian-rhythm-assessment.html) |
| [7] | 54 | RBC rehydration | [SpaceBloodProduct](StructureDefinition-space-blood-product.html), [SpaceTransfusionProcedure](StructureDefinition-space-transfusion-procedure.html) |
| [8] | 57 | Austere blood banking | [SpaceBloodProduct](StructureDefinition-space-blood-product.html) |
| [9] | 68 | UWF OCT-A for SANS | [SANSAssessment](StructureDefinition-sans-assessment.html) |
| [10] | 108 | Postpartum recovery after spaceflight | [BoneDensityObservation](StructureDefinition-bone-density-observation.html) |
| [11] | 110 | BMD measurement | [BoneDensityObservation](StructureDefinition-bone-density-observation.html) |
| [12] | 111 | Space travel anaemia | [SpaceflightAnemiaPanel](StructureDefinition-spaceflight-anemia-panel.html) |
| [13] | 112 | DCS susceptibility | [DCSRiskAssessment](StructureDefinition-dcs-risk-assessment.html) |
| [14][15] | 113, 114 | Surgical procedures, 3D printing | [SpaceSurgicalProcedure](StructureDefinition-space-surgical-procedure.html) |
| [16] | 117 | POCUS in austere environments | [SpacePOCUS](StructureDefinition-space-pocus.html) |
| [17] | 120 | Artemis II health stack | [ARCHeRActigraphyObservation](StructureDefinition-archer-actigraphy-observation.html), [ImmuneBiomarkerPanel](StructureDefinition-immune-biomarker-panel.html) |

### Clinical Domain Coverage

The abstracts span the following clinical domains, each with dedicated FHIR profiles in this guide:

- **Motion Sickness** - SMS/TRMS diagnosis, antiemetic medications, adverse events, care plans
- **Temperature Monitoring** - Oral body temperature with circadian context
- **Continuous Glucose Monitoring** - CGM device, observations, summary reports
- **Sleep and Circadian Rhythms** - Sleep architecture, actigraphy, circadian assessment
- **Transfusion Medicine** - Blood products, transfusion procedures, specimen collection
- **Radioprotective Countermeasures** - Antioxidant medications and biomarker panels
- **Cardiac Monitoring** - ECG observations with arrhythmia classification
- **Ocular Health** - SANS assessment with OCT-A parameters
- **Musculoskeletal** - Bone density and joint health assessment
- **Hematology** - Spaceflight anemia panel
- **Austere Procedures** - POCUS and surgical procedures
- **EVA Risk** - Decompression sickness risk assessment

### Shared Infrastructure

All of these profiles use the shared extensions for mission context described on the profile pages:

- [MissionContext](StructureDefinition-mission-context.html) - Links to mission encounter
- [GravityContext](StructureDefinition-gravity-context.html) - Gravitational environment
- [MissionPhase](StructureDefinition-mission-phase.html) - Mission phase timing
- [FlightDay](StructureDefinition-flight-day.html) - Flight day number
- [EvidenceSource](StructureDefinition-evidence-source.html) - Research evidence links

### References

- [1] Patel, Keval, Felix Krainski, Michael Bungo, and Benjamin Levine. "Cardiac Arrhythmia Risk in Astronauts during Spaceflight: The NASA Integrated Cardiovascular Study." Poster 47, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [2] Sapkota, Smarika, Richard Meehan, Eric Hoffman, James Crooks, and Elizabeth Regan. "Ultrasound Assessments of Lower Extremity Joint Health after 18 Days Onboard the International Space Station." Poster 49, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [3] Cargill, Michael, Leigh Speicher, and John Cebak. "N-Acetylcysteine in Spaceflight Health: Current Evidence and Future Directions." Poster 50, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [4] Cole, Thomas. "Oral Body Temperature Changes during Long Duration Spaceflight." Poster 51, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [5] Beger, Samuel, Jaime Mateus, and Marissa Rosenberg. "Continuous Glucose Monitoring during Human Spaceflight: A Comparison with Terrestrial Baselines." Poster 52, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [6] Coonjobeeharry, Mani, and Pete Hodkinson. "Sleep Preservation in Torpor for Space Missions." Poster 53, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [7] Keller, Alexandra, Judith Castellon, Lucia White, and George Pantalos. "Manually-Implemented Rehydration of Dehydrated Red Blood Cells in Reduced Gravity." Poster 54, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [8] Nair, Nikita, George Pantalos, and Alexandra Keller. "Ground-Based Evaluation of Dehydrated Red Blood Cell Bag Pressure Seal Rupture Pressures and Channel Width." Poster 57, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [9] Tamayo, Stephanie, Sara Mason, and Tyson Brunstetter. "Ultra-Widefield OCT-Angiography Assessment of Choroidal Intervortex Anastomoses in Astronauts: Is There Vascular Remodeling Due to Spaceflight?" Poster 68, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [10] Kakkar, Nidhi. "Postpartum Recovery and Performance in Women Following Spaceflight: Current Evidence and Future Directions." Poster 108, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [11] Harwood, Daniel, Moriah Thompson, and Justin Yang. "Bone Mineral Density Measurement in Space: Current Portable Imaging Capabilities and Areas of Focus." Poster 110, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [12] Kakkar, Nidhi. "Space Travel–Associated Anaemia: Current Understanding and Implications for Human Spaceflight." Poster 111, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [13] Gamble, Jessica, Bonnie Posselt, Peter D. Hodkinson, Thomas G. Smith, and Richard S. Whittle. "Exploring Individual Susceptibility to Decompression Sickness during EVA: A Personalised Medicine Approach." Poster 112, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [14] Myerson, Ezra, Sara Rothrock, and Peter Lee. "Evaluation of Novel 3D Printed Surgical Tools for Long Term Space Missions." Poster 113, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [15] Golia, Saahil, Micheal Kortz, and Kaleigh Stabenau. "Mitigation and Management of Acute Appendicitis for Long-Duration Spaceflight: A Scoping Review." Poster 114, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [16] Lyons, Hannah. "Point-of-Care Ultrasound (POCUS) in Austere Environments and Implications for Future Space Exploration." Poster 117, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
- [17] Haas, Christopher. "Artemis II Crew Health Systems — From Mission Design to Operations." Poster 120, 97th Annual Scientific Meeting of the Aerospace Medical Association (AsMA), May 2026.
