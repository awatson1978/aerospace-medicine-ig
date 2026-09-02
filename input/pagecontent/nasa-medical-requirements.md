### Introduction

NASA's Medical Requirements Integration Documents (MRIDs) define the standardized data collection requirements for crew health assessment across all phases of spaceflight. Maintained under the JSC28913 baseline by NASA's Medical Operations division at Johnson Space Center, the MRID system ensures consistent, traceable health monitoring from preflight certification through postflight reconditioning.

Each MRID specifies what data must be collected, who it applies to, when it is required, and how the data is archived. The documents are organized into major categories: the **Medical Evaluation Documents Board (MEDB)** series covers clinical assessments performed directly on crew members, while the **Medical Requirements (MR)** series covers environmental monitoring, equipment management, and operational medical support.

The original MRID documentation is maintained in the [MRID document library](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) of NASA's Life Sciences Data Archive (LSDA), hosted on the NASA Life Sciences Portal (NLSP). The portal does not expose stable links to individual documents, so the tables below name each MRID in plain text and link instead to this guide's FHIR Questionnaire representation of it. Each questionnaire records its provenance in `meta.source`, which points back to the NLSP MRID library. Every questionnaire conforms to the [MRID Questionnaire](StructureDefinition-mrid-questionnaire.html) profile, which fixes the metadata group (MRID number, sponsor, discipline, purpose, deliverables) that all of them share.

In the tables, **L-** dates count down to launch and **R+** dates count from return; for example, L-60 days means 60 days before launch and R+3 days means three days after landing.

> We welcome feedback on how these questionnaires are modeled in FHIR. Please share suggestions or report problems by filing an [issue on GitHub](https://github.com/awatson1978/aerospace-medicine-ig/issues).
{:.stu-note}

### MEDB 1 - Physical Examinations

Physical examination requirements establish baseline health data and monitor for conditions that could compromise crew safety during spaceflight. These assessments are part of the annual astronaut medical examination and are required for flight certification.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 1.6 | [Resting ECG](Questionnaire-MEDB16RestingECGQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |
| MEDB 1.8 | [Audiometry](Questionnaire-MEDB18AudiometryQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |
| MEDB 1.9 | [Dental Examination](Questionnaire-MEDB19DentalExamQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |
| MEDB 1.10 | [Ophthalmologic Examination](Questionnaire-MEDB110OphthalmologicExamQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |
| MEDB 1.11 | [Body Composition/DEXA](Questionnaire-MEDB111BodyCompositionQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |
| MEDB 1.14 | [Body Mass Measurement](Questionnaire-MEDB114BodyMassQuestionnaire.html) | All crew | Annual exam / flight certification | Annual; preflight |

### MEDB 2 - Laboratory

Laboratory requirements ensure crew members are screened for infectious diseases and have baseline clinical values documented before flight. Several of these requirements apply specifically to long-duration missions (30 days or more), where the closed spacecraft environment increases infection risk and limits medical intervention options.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 2.1 | [Routine Laboratory Panel](Questionnaire-MEDB21RoutineLabPanelQuestionnaire.html) | All crew (≥30 day flights) | Flight readiness - preflight baseline | L-9/6 months, L-60 to L-10 days; R+0 to R+3 days |
| MEDB 2.2 | [MRSA Screening](Questionnaire-MEDB22MRSAScreeningQuestionnaire.html) | All flight crew | All flights - infection prevention | L-60 to L-30 days; retest L-10 if positive |
| MEDB 2.3 | [Tuberculosis Testing](Questionnaire-MEDB23TBTestingQuestionnaire.html) | All flight crew | All flights - annual screening | Annual examination |
| MEDB 2.4 | [H. pylori Screening](Questionnaire-MEDB24HpyloriScreeningQuestionnaire.html) | Long-duration crew (≥30 days) | Long-duration missions - GI health | L-180 to L-90 days |

### MEDB 3 - Radiation

Radiation monitoring is a continuous occupational health requirement for all ISS crew members. NASA maintains crew radiation exposures "as low as reasonably achievable" (ALARA) and documents exposure for lifetime risk assessment. The Space Radiation Analysis Group (SRAG) manages radiation monitoring data through the AREAS (Astronaut Radiation Exposure Assessment System) archive.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 3.1 | [Radiation Monitoring / Crew Personal Dosimetry](Questionnaire-MEDB31RadiationMonitoringQuestionnaire.html) | ISS crew (primary and backup) | Every ISS increment - occupational monitoring | Training L-19 months; preflight hardware processing; in-flight continuous; R+0 postflight |

### MEDB 5 - Fitness

Exercise physiology requirements track cardiovascular and musculoskeletal fitness to monitor for spaceflight-related deconditioning. Preflight testing establishes baselines; postflight testing documents recovery. In-flight exercise prescriptions serve as the primary countermeasure against bone and muscle loss during long-duration missions.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 5.1 | [Aerobic Fitness Assessment](Questionnaire-MEDB51AerobicFitnessQuestionnaire.html) | Long-duration crew (≥30 days) | Flight readiness - cardiovascular baseline | L-180 to L-60 days; R+5 to R+7, R+30 days |
| MEDB 5.2 | [Strength Assessment](Questionnaire-MEDB52StrengthAssessmentQuestionnaire.html) | Long-duration crew (≥30 days) | Flight readiness - musculoskeletal baseline | L-180 to L-60 days; R+5 to R+7, R+30 days |
| MEDB 5.3 | [Exercise Prescription](Questionnaire-MEDB53ExercisePrescriptionQuestionnaire.html) | Long-duration crew | In-flight countermeasure - fitness maintenance | In-flight continuous; weekly adherence tracking |

### MEDB 6 - Extravehicular Activity (EVA)

EVA medical requirements ensure crew members are medically cleared to perform spacewalks. These assessments are mission-critical: EVA crew must be certified well in advance and cleared again immediately before each EVA. The prebreathe protocol prevents decompression sickness (DCS) during the transition from cabin pressure to suit pressure.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 6.1 | [EVA Medical Requirements](Questionnaire-MEDB61EVAMedicalRequirementsQuestionnaire.html) | EVA crew members only | EVA approval - certification and pre-EVA clearance | Certification at L-12 months; pre-EVA clearance before each EVA |

### MEDB 7 - Behavioral Health

Behavioral health requirements assess psychological readiness for spaceflight, monitor crew dynamics during missions, and coordinate family support services. These assessments are managed by the Behavioral Health and Performance (BHP) group and are particularly important for long-duration missions where isolation and confinement stress accumulate over time.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MEDB 7.1 | [Preflight Psychiatric/Psychological Status Check](Questionnaire-MEDB71PsychStatusQuestionnaire.html) | Long-duration crew (≥30 days) | Flight readiness - behavioral clearance | L-12 months / L-240 to L-180 days; L-90 to L-30 days |
| MEDB 7.4 | [Crew Dynamics Assessment](Questionnaire-MEDB74CrewDynamicsQuestionnaire.html) | All crew (≥30 days) | Crew team assessment - continuous monitoring | L-180 to L-90 days; in-flight monthly; R+30 to R+60 days |
| MEDB 7.5 | [Family Support Evaluation](Questionnaire-MEDB75FamilySupportQuestionnaire.html) | Long-duration crew | Long-duration missions - family services | L-180 to L-90 days; in-flight monthly; R+0 to R+90 days |

### MR - EVA Support

Medical Requirements supporting EVA operations include prebreathe protocols and radiation contingency procedures. These are event-driven requirements triggered by specific mission activities or emergency conditions.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MR087S | [EVA Prebreathe Protocol](Questionnaire-MR087SEVAPrebreathQuestionnaire.html) | EVA crew | EVA approval - DCS prevention | Pre-EVA (before each EVA) |
| MR092L | [Solar Particle Event Protocol](Questionnaire-MR092LSPEProtocolQuestionnaire.html) | All ISS crew during SPE events | Emergency response - radiation protection | Event-driven (in-flight only) |
| MR093L | [Radiation Contingency](Questionnaire-MR093LRadiationContingencyQuestionnaire.html) | Crew affected by contingency | Emergency response - incident documentation | Event-driven (contingency) |

### MR - Environmental Health

Environmental health monitoring ensures the spacecraft atmosphere, water supply, and surfaces remain safe for crew habitation. These requirements run continuously throughout ISS operations and are managed by the Environmental Health System group.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MR051L | [Water Quality Assessment](Questionnaire-MR051LWaterQualityQuestionnaire.html) | ISS operations - all crew | Environmental monitoring - water safety | Weekly (microbial), monthly (chemical) |
| MR022S | [Air Quality Monitoring](Questionnaire-MR022SAirQualityQuestionnaire.html) | All spacecraft (ISS) | Environmental monitoring - atmospheric safety | Continuous (major constituents); weekly/monthly sampling |
| MR054L | [Microbial Monitoring](Questionnaire-MR054LMicrobialMonitoringQuestionnaire.html) | ISS operations - all crew | Environmental monitoring - infection prevention | Air weekly; surfaces monthly |

### MR - Equipment and Operations

Operational medical requirements cover the logistics of maintaining medical capability aboard the ISS: equipment maintenance, pharmaceutical management, telemedicine infrastructure, and postflight crew reconditioning.

| MRID | Questionnaire | Applies To | Required For | Schedule |
|------|--------------|------------|-------------|----------|
| MR036L | [Medical Kit Inventory](Questionnaire-MR036LMedicalKitInventoryQuestionnaire.html) | ISS operations | Resource management - supply tracking | Regular in-flight inventory checks |
| MR026L | [Reconditioning Assessment](Questionnaire-MR026LReconditioningQuestionnaire.html) | All returning long-duration crew | Postflight recovery - return to duty | R+0 to R+3 initial; weekly progress; final varies |
| MR050L | [Pharmaceutical Management](Questionnaire-MR050LPharmaceuticalManagementQuestionnaire.html) | ISS operations - all crew | Resource management - medication safety | In-flight continuous |
| MR032L | [Telemedicine Setup](Questionnaire-MR032LTelemedicineSetupQuestionnaire.html) | All ISS crew | Mission support - remote medical capability | Preflight training; in-flight verification |
| MR008L | [Medical Hardware Maintenance](Questionnaire-MR008LMedicalHardwareMaintenanceQuestionnaire.html) | All on-orbit and ground medical equipment | Equipment management - calibration and maintenance | Continuous maintenance scheduling |

### References

- NASA Life Sciences Data Archive. MRID document library (Medical Requirements Integration Documents), NASA Life Sciences Portal. https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12
- NASA Johnson Space Center. JSC 28913, Medical Requirements Integration Document (MRID) baseline. (Document number and title as cited in the MRID library; no public URL.)
- NASA/International Space Station Program. SSP 50260, ISS Medical Operations Requirements Document (MORD). (No public URL.)
- NASA/International Space Station Program. SSP 50667, Medical Evaluation Documents, Volume B. (No public URL.)
- [NASA.Questionnaires.ndjson](NASA.Questionnaires.ndjson): downloadable MEDB and MR questionnaires in NDJSON format
