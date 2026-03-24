# NASA Medical Requirements - v0.5.10

* [**Table of Contents**](toc.md)
* **NASA Medical Requirements**

## NASA Medical Requirements

## NASA Medical Requirements Integration Documents (MRID)

### Introduction

NASA's Medical Requirements Integration Documents (MRIDs) define the standardized data collection requirements for crew health assessment across all phases of spaceflight. Maintained under the JSC28913 baseline by NASA's Medical Operations division at Johnson Space Center, the MRID system ensures consistent, traceable health monitoring from preflight certification through postflight reconditioning.

Each MRID specifies what data must be collected, who it applies to, when it is required, and how the data is archived. The documents are organized into major categories: the **Medical Evaluation Documents Board (MEDB)** series covers clinical assessments performed directly on crew members, while the **Medical Requirements (MR)** series covers environmental monitoring, equipment management, and operational medical support.

The original MRID documentation is maintained in NASA's [Life Sciences Data Archive (LSDA)](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12). This Implementation Guide provides FHIR Questionnaire representations of each MRID to support structured data capture and interoperability.

> We welcome feedback on how these questionnaires are modeled in FHIR. Please share suggestions via[GitHub Discussions](https://github.com/awatson1978/aerospace-medicine-ig/discussions)or file an[issue](https://github.com/awatson1978/aerospace-medicine-ig/issues).

### MEDB 1 - Physical Examinations

Physical examination requirements establish baseline health data and monitor for conditions that could compromise crew safety during spaceflight. These assessments are part of the annual astronaut medical examination and are required for flight certification.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 1.6](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Resting ECG](Questionnaire-MEDB16RestingECGQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |
| [MEDB 1.8](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Audiometry](Questionnaire-MEDB18AudiometryQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |
| [MEDB 1.9](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Dental Examination](Questionnaire-MEDB19DentalExamQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |
| [MEDB 1.10](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Ophthalmologic Examination](Questionnaire-MEDB110OphthalmologicExamQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |
| [MEDB 1.11](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Body Composition/DEXA](Questionnaire-MEDB111BodyCompositionQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |
| [MEDB 1.14](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Body Mass Measurement](Questionnaire-MEDB114BodyMassQuestionnaire.md) | All crew | Annual exam / flight certification | Annual; preflight |

### MEDB 2 - Laboratory

Laboratory requirements ensure crew members are screened for infectious diseases and have baseline clinical values documented before flight. Several of these requirements apply specifically to long-duration missions (30 days or more), where the closed spacecraft environment increases infection risk and limits medical intervention options.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 2.1](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Routine Laboratory Panel](Questionnaire-MEDB21RoutineLabPanelQuestionnaire.md) | All crew (≥30 day flights) | Flight readiness - preflight baseline | L-9/6 months, L-60 to L-10 days; R+0 to R+3 days |
| [MEDB 2.2](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [MRSA Screening](Questionnaire-MEDB22MRSAScreeningQuestionnaire.md) | All flight crew | All flights - infection prevention | L-60 to L-30 days; retest L-10 if positive |
| [MEDB 2.3](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Tuberculosis Testing](Questionnaire-MEDB23TBTestingQuestionnaire.md) | All flight crew | All flights - annual screening | Annual examination |
| [MEDB 2.4](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [H. pylori Screening](Questionnaire-MEDB24HpyloriScreeningQuestionnaire.md) | Long-duration crew (≥30 days) | Long-duration missions - GI health | L-180 to L-90 days |

### MEDB 3 - Radiation

Radiation monitoring is a continuous occupational health requirement for all ISS crew members. NASA maintains crew radiation exposures "as low as reasonably achievable" (ALARA) and documents exposure for lifetime risk assessment. The Space Radiation Analysis Group (SRAG) manages radiation monitoring data through the AREAS (Astronaut Radiation Exposure Assessment System) archive.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 3.1](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Radiation Monitoring / Crew Personal Dosimetry](Questionnaire-MEDB31RadiationMonitoringQuestionnaire.md) | ISS crew (primary and backup) | Every ISS increment - occupational monitoring | Training L-19 months; preflight hardware processing; in-flight continuous; R+0 postflight |

### MEDB 5 - Fitness

Exercise physiology requirements track cardiovascular and musculoskeletal fitness to monitor for spaceflight-related deconditioning. Preflight testing establishes baselines; postflight testing documents recovery. In-flight exercise prescriptions serve as the primary countermeasure against bone and muscle loss during long-duration missions.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 5.1](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Aerobic Fitness Assessment](Questionnaire-MEDB51AerobicFitnessQuestionnaire.md) | Long-duration crew (≥30 days) | Flight readiness - cardiovascular baseline | L-180 to L-60 days; R+5 to R+7, R+30 days |
| [MEDB 5.2](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Strength Assessment](Questionnaire-MEDB52StrengthAssessmentQuestionnaire.md) | Long-duration crew (≥30 days) | Flight readiness - musculoskeletal baseline | L-180 to L-60 days; R+5 to R+7, R+30 days |
| [MEDB 5.3](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Exercise Prescription](Questionnaire-MEDB53ExercisePrescriptionQuestionnaire.md) | Long-duration crew | In-flight countermeasure - fitness maintenance | In-flight continuous; weekly adherence tracking |

### MEDB 6 - Extravehicular Activity (EVA)

EVA medical requirements ensure crew members are medically cleared to perform spacewalks. These assessments are mission-critical: EVA crew must be certified well in advance and cleared again immediately before each EVA. The prebreathe protocol prevents decompression sickness (DCS) during the transition from cabin pressure to suit pressure.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 6.1](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [EVA Medical Requirements](Questionnaire-MEDB61EVAMedicalRequirementsQuestionnaire.md) | EVA crew members only | EVA approval - certification and pre-EVA clearance | Certification at L-12 months; pre-EVA clearance before each EVA |

### MEDB 7 - Behavioral Health

Behavioral health requirements assess psychological readiness for spaceflight, monitor crew dynamics during missions, and coordinate family support services. These assessments are managed by the Behavioral Health and Performance (BHP) group and are particularly important for long-duration missions where isolation and confinement stress accumulate over time.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MEDB 7.1](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Preflight Psychiatric/Psychological Status Check](Questionnaire-MEDB71PsychStatusQuestionnaire.md) | Long-duration crew (≥30 days) | Flight readiness - behavioral clearance | L-12 months / L-240 to L-180 days; L-90 to L-30 days |
| [MEDB 7.4](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Crew Dynamics Assessment](Questionnaire-MEDB74CrewDynamicsQuestionnaire.md) | All crew (≥30 days) | Crew team assessment - continuous monitoring | L-180 to L-90 days; in-flight monthly; R+30 to R+60 days |
| [MEDB 7.5](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Family Support Evaluation](Questionnaire-MEDB75FamilySupportQuestionnaire.md) | Long-duration crew | Long-duration missions - family services | L-180 to L-90 days; in-flight monthly; R+0 to R+90 days |

-------

### MR - EVA Support

Medical Requirements supporting EVA operations include prebreathe protocols and radiation contingency procedures. These are event-driven requirements triggered by specific mission activities or emergency conditions.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MR087S](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [EVA Prebreathe Protocol](Questionnaire-MR087SEVAPrebreathQuestionnaire.md) | EVA crew | EVA approval - DCS prevention | Pre-EVA (before each EVA) |
| [MR092L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Solar Particle Event Protocol](Questionnaire-MR092LSPEProtocolQuestionnaire.md) | All ISS crew during SPE events | Emergency response - radiation protection | Event-driven (in-flight only) |
| [MR093L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Radiation Contingency](Questionnaire-MR093LRadiationContingencyQuestionnaire.md) | Crew affected by contingency | Emergency response - incident documentation | Event-driven (contingency) |

### MR - Environmental Health

Environmental health monitoring ensures the spacecraft atmosphere, water supply, and surfaces remain safe for crew habitation. These requirements run continuously throughout ISS operations and are managed by the Environmental Health System group.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MR051L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Water Quality Assessment](Questionnaire-MR051LWaterQualityQuestionnaire.md) | ISS operations - all crew | Environmental monitoring - water safety | Weekly (microbial), monthly (chemical) |
| [MR022S](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Air Quality Monitoring](Questionnaire-MR022SAirQualityQuestionnaire.md) | All spacecraft (ISS) | Environmental monitoring - atmospheric safety | Continuous (major constituents); weekly/monthly sampling |
| [MR054L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Microbial Monitoring](Questionnaire-MR054LMicrobialMonitoringQuestionnaire.md) | ISS operations - all crew | Environmental monitoring - infection prevention | Air weekly; surfaces monthly |

### MR - Equipment and Operations

Operational medical requirements cover the logistics of maintaining medical capability aboard the ISS: equipment maintenance, pharmaceutical management, telemedicine infrastructure, and postflight crew reconditioning.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MR036L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Medical Kit Inventory](Questionnaire-MR036LMedicalKitInventoryQuestionnaire.md) | ISS operations | Resource management - supply tracking | Regular in-flight inventory checks |
| [MR026L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Reconditioning Assessment](Questionnaire-MR026LReconditioningQuestionnaire.md) | All returning long-duration crew | Postflight recovery - return to duty | R+0 to R+3 initial; weekly progress; final varies |
| [MR050L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Pharmaceutical Management](Questionnaire-MR050LPharmaceuticalManagementQuestionnaire.md) | ISS operations - all crew | Resource management - medication safety | In-flight continuous |
| [MR032L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Telemedicine Setup](Questionnaire-MR032LTelemedicineSetupQuestionnaire.md) | All ISS crew | Mission support - remote medical capability | Preflight training; in-flight verification |
| [MR008L](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) | [Medical Hardware Maintenance](Questionnaire-MR008LMedicalHardwareMaintenanceQuestionnaire.md) | All on-orbit and ground medical equipment | Equipment management - calibration and maintenance | Continuous maintenance scheduling |

-------

### References

* [NASA Life Sciences Data Archive - MRID Documents](https://nlsp.nasa.gov/explore/jtable/lsda_document/lsda_document?q=all&from=1&pagesize=100&filters=project_name.keyword%7Ceq%7CMRID&template=12) - Original NASA Medical Requirements Integration Documents
* JSC28913 - NASA Medical Requirements Integration Document baseline
* SSP 50260 - ISS Medical Operations Requirement Document
* SSP 50667 - Medical Volume B
* [NASA.Questionnaires.ndjson](NASA.Questionnaires.ndjson) - Downloadable MEDB questionnaires in NDJSON format

