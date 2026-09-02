# Radiation Tracking - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Radiation Tracking**

## Radiation Tracking

### Overview

When astronaut Scott Kelly returned to Earth after his historic 340-day mission aboard the International Space Station, one of the first questions researchers wanted to answer was: how much radiation had his body absorbed during his time in space? This seemingly simple question reveals the complex challenge at the heart of space medicine—tracking and managing radiation exposure in an environment where cosmic rays constantly bombard the human body with ionizing radiation levels hundreds of times higher than what we experience on Earth's surface.

Radiation exposure tracking is a critical component of aerospace medicine, as astronauts face significantly higher levels of ionizing radiation compared to Earth-based populations. Unlike terrestrial medical settings where radiation exposure is primarily from diagnostic procedures, space radiation exposure comes from galactic cosmic rays (GCR), solar particle events (SPE), and trapped radiation in the Van Allen belts.

This implementation guide provides comprehensive FHIR profiles for radiation dosimetry tracking throughout an astronaut's career, from pre-flight baseline measurements through long-duration missions to post-flight monitoring.

### FHIR Implementation Architecture

The radiation tracking system is built on several core FHIR profiles that work together to provide comprehensive dose monitoring:

#### Core Profiles

| | | |
| :--- | :--- | :--- |
| [`SpaceRadiationExposure`](StructureDefinition-space-radiation-exposure.md) | Individual dose measurements | Real-time and accumulated doses with mission context |
| [`RadiationDetector`](StructureDefinition-radiation-detector.md) | Detection equipment | Device specifications and calibration data |
| [`SpaceRadiationSummary`](StructureDefinition-space-radiation-summary.md) | Comprehensive reports | Mission and career dose summaries |
| [`CumulativeRadiationDose`](StructureDefinition-cumulative-radiation-dose.md) | Long-term tracking | Career, mission, and time-period accumulations |

#### Data Architecture

The radiation exposure data model captures multiple dimensions of dose information:

* **Temporal Context**: Real-time, daily, weekly, monthly, annual, mission, and career doses
* **Radiation Types**: GCR, SPE, trapped radiation, and secondary radiation
* **Organ-Specific Doses**: Bone marrow, eye lens, skin, CNS, and other critical organs
* **Environmental Context**: Mission phase, location, shielding configuration
* **Detection Method**: Passive dosimeters, active monitors, area monitors

### Space Radiation Environment

Imagine leaving Earth's protective magnetic field and atmosphere behind—suddenly, you're exposed to a constant barrage of high-energy particles that have traveled across the galaxy for millions of years. This is the reality for astronauts venturing beyond low Earth orbit, where the very fabric of space itself becomes a health hazard. Unlike the predictable radiation exposures in hospitals or nuclear facilities, space radiation is dynamic, unpredictable, and fundamentally different from anything humans encounter on Earth.

Space radiation presents unique challenges that differ fundamentally from terrestrial radiation exposure:

#### Galactic Cosmic Radiation (GCR)

* **Source**: High-energy particles from outside the solar system
* **Characteristics**: Continuous, low dose rate, high linear energy transfer (LET)
* **Health Impact**: Primary concern for cancer risk and central nervous system effects
* **Typical Exposure**: About 1.8 mSv/day dose equivalent in interplanetary cruise, as measured by the Mars Science Laboratory RAD instrument (Zeitlin et al. 2013)
* **FHIR Coding**: Uses `gcr-dose` from [SpaceRadiationCS](CodeSystem-space-radiation-cs.md)

#### Solar Particle Events (SPE)

* **Source**: Solar flares and coronal mass ejections
* **Characteristics**: Episodic, high dose rate, predominantly protons
* **Health Impact**: Acute radiation syndrome risk during major events
* **Typical Exposure**: Highly variable; the largest historical events could deliver skin doses above 1,000 mSv to an unshielded crew member (NCRP Report 98)
* **FHIR Coding**: Uses `spe-dose` for tracking solar event exposures

#### Trapped Radiation

* **Source**: Charged particles trapped in Earth's magnetic field (Van Allen belts)
* **Characteristics**: Predictable based on orbital parameters
* **Health Impact**: Contributes to cumulative dose, particularly for ISS missions
* **Typical Exposure**: ISS crews accumulate roughly 0.3-0.5 mSv/day from all sources, of which trapped protons in the South Atlantic Anomaly are a major part (Cucinotta et al., NASA/TP-2013-217375)
* **FHIR Coding**: Uses `trapped-dose` for Van Allen belt radiation

### Radiation Monitoring Strategy

Picture an astronaut's spacesuit as a sophisticated medical monitoring station—embedded within the fabric and equipment are multiple radiation detectors, each serving as a sentinel against an invisible threat. From passive dosimeters that silently accumulate dose information to active monitors that provide real-time alerts, these devices form a comprehensive network of protection. Mission Control watches these readings as closely as they monitor life support systems, because in space, radiation exposure management is literally a matter of life and death—both immediate survival and long-term health.

#### Personal Dosimetry Implementation

All space travelers wear multiple types of radiation detectors documented using the [`RadiationDetector`](StructureDefinition-radiation-detector.md) profile:

**Passive Dosimeters:**

* **Thermoluminescent dosimeters (TLD)**: Coded as `tld` in the detector type system
* **Optically stimulated luminescence detectors (OSLD)**: Coded as `osld`
* **Nuclear track detectors (NTD)**: For high-LET particle detection

**Active Dosimeters:**

* **Electronic personal dosimeters (EPD)**: Real-time monitoring, coded as `epd`
* **Tissue equivalent proportional counters (TEPC)**: Quality factor assessment, coded as `tepc`

**Area Monitoring:**

* **Fixed monitors**: Spacecraft compartment monitoring, coded as `area-monitor`
* **Environmental dosimetry**: Habitat characterization

#### Example Radiation Detector Configuration

The fragment below is illustrative (not a complete instance) and shows how a detector's type and sensitivity are coded; the complete instance is the [radiation detector example](Device-radiation-detector-example.md).

```
{
  "resourceType": "Device",
  "meta": {
    "profile": ["https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-detector"]
  },
  "type": {
    "coding": [{
      "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/radiation-detector-type-cs",
      "code": "epd",
      "display": "Electronic Personal Dosimeter"
    }]
  },
  "property": [
    {
      "type": {
        "coding": [{
          "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
          "code": "sensitivity"
        }]
      },
      "valueQuantity": {
        "value": 1.0,
        "unit": "uSv",
        "system": "http://unitsofmeasure.org",
        "code": "uSv"
      }
    }
  ]
}

```

#### Dose Limits and Guidelines

NASA's exposure standard (NASA-STD-3001 Volume 1, Revision C, 2024) sets a single career limit of 600 mSv effective dose that applies regardless of age or sex, replacing the earlier age- and sex-specific limits of roughly 150-400 mSv. It also sets short-term limits, expressed in milligray-equivalent (mGy-Eq), to prevent deterministic effects in specific tissues. The table below lists the limits and the codes used to track them with the [`CumulativeRadiationDose`](StructureDefinition-cumulative-radiation-dose.md) profile.

| | | | |
| :--- | :--- | :--- | :--- |
| Career effective dose | 600 mSv | Career | `career-dose` |
| Blood-forming organs | 250 mGy-Eq / 500 mGy-Eq | 30 days / 1 year | `monthly-dose`,`annual-dose`with`bone-marrow-dose`component |
| Lens of the eye | 1,000 / 2,000 / 4,000 mGy-Eq | 30 days / 1 year / career | `eye-lens-dose`component |
| Skin | 1,500 / 3,000 / 6,000 mGy-Eq | 30 days / 1 year / career | `skin-dose`component |

Source: NASA-STD-3001 Volume 1 Revision C (see References).

### Data Model Architecture

Behind every radiation measurement lies a complex story of risk management, career planning, and medical decision-making that spans decades. When NASA physicians review an astronaut's radiation exposure data, they're not just looking at numbers—they're piecing together a comprehensive narrative that includes mission contexts, equipment performance, environmental conditions, and individual health factors. This data becomes part of a lifelong medical record that influences everything from future mission assignments to retirement planning and long-term health surveillance.

The radiation exposure tracking profiles extend the base FHIR resources to accommodate space-specific requirements:

#### Core Resources and Extensions

**Core FHIR Resources:**

* **Patient**: Astronaut with space-specific extensions
* **Observation**: Radiation dose measurements using `SpaceRadiationExposure` profile
* **DiagnosticReport**: Comprehensive dose summaries using `SpaceRadiationSummary` profile
* **Device**: Dosimetry equipment using `RadiationDetector` profile
* **Location**: Spacecraft, space station modules, planetary surfaces

**Space-Specific Extensions:**

* **[`MissionContext`](StructureDefinition-mission-context.md)**: Links radiation exposure to specific missions
* **[`RadiationType`](StructureDefinition-radiation-type.md)**: Distinguishes between GCR, SPE, and trapped radiation
* **[`ShieldingMass`](StructureDefinition-shielding-mass.md)**: Accounts for spacecraft or habitat shielding effectiveness
* **[`RadiationCountermeasures`](StructureDefinition-radiation-countermeasures.md)**: Documents protective actions taken

#### Example Radiation Exposure Measurement

The instance below is a trimmed JSON rendering of the [daily exposure example](Observation-space-radiation-exposure-example.md): one day of galactic cosmic ray dose measured by the crew personal dosimeter, with a bone-marrow organ dose component and the dose rate at the time of measurement. Note that the organ dose is lower than the total dose, as it must be.

```
{
  "resourceType": "Observation",
  "meta": {
    "profile": ["https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-radiation-exposure"]
  },
  "status": "final",
  "category": [{
    "coding": [{
      "system": "http://loinc.org",
      "code": "73569-6",
      "display": "Radiation dose and image quality indicators"
    }]
  }],
  "code": {
    "coding": [{
      "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
      "code": "gcr-dose",
      "display": "Galactic Cosmic Radiation Dose"
    }]
  },
  "subject": {"reference": "Patient/ExampleAstronaut"},
  "encounter": {"reference": "Encounter/ISS-Exp75-InFlight"},
  "effectiveDateTime": "2025-07-15",
  "valueQuantity": {
    "value": 0.52,
    "unit": "mSv",
    "system": "http://unitsofmeasure.org",
    "code": "mSv"
  },
  "device": {"reference": "Device/radiation-detector-example"},
  "extension": [
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/mission-context",
      "valueReference": {"reference": "Encounter/ISS-Exp75-InFlight"}
    },
    {
      "url": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-type",
      "valueCodeableConcept": {
        "coding": [{
          "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-type-cs",
          "code": "gcr",
          "display": "Galactic Cosmic Radiation"
        }]
      }
    }
  ],
  "component": [
    {
      "code": {
        "coding": [{
          "system": "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/space-radiation-cs",
          "code": "bone-marrow-dose",
          "display": "Bone Marrow Dose"
        }]
      },
      "valueQuantity": {
        "value": 0.47,
        "unit": "mSv",
        "system": "http://unitsofmeasure.org",
        "code": "mSv"
      }
    },
    {
      "code": {
        "coding": [{
          "system": "http://loinc.org",
          "code": "77638-4",
          "display": "Irradiation dose rate"
        }]
      },
      "valueQuantity": {
        "value": 21.7,
        "unit": "uSv/h",
        "system": "http://unitsofmeasure.org",
        "code": "uSv/h"
      }
    }
  ]
}

```

### Use Cases

Consider the solar particle event of August 1972, which erupted between the Apollo 16 (April 1972) and Apollo 17 (December 1972) missions while no crew was in flight. Had astronauts been conducting a lunar EVA at that moment, they could have received dangerous, possibly lethal, doses within hours. This near-miss illustrates why radiation tracking isn't just about record-keeping—it's about enabling split-second decisions that can save lives. Modern space missions use sophisticated radiation monitoring systems to provide early warning, guide operational decisions, and ensure that every astronaut returns home safely within acceptable health risk parameters.

#### 1. Pre-Flight Baseline Assessment

Establish baseline radiation exposure from terrestrial sources using the `SpaceRadiationExposure` profile with baseline mission context. This includes:

* Medical procedure exposures (CT scans, X-rays)
* Occupational exposure (aviation, nuclear industry)
* Natural background radiation
* Previous space mission exposure

#### 2. Mission Planning and ALARA

Use predictive models and historical data captured in `SpaceRadiationSummary` reports to plan missions within dose limits using the As Low As Reasonably Achievable (ALARA) principle:

* **Mission Duration Optimization**: Balance mission objectives with dose accumulation
* **Trajectory Planning**: Minimize exposure during solar particle events
* **Shielding Assessment**: Evaluate spacecraft and habitat shielding effectiveness
* **Activity Scheduling**: Plan EVAs and surface operations during low-radiation periods

#### 3. Real-Time Mission Monitoring

Track cumulative dose during missions using `CumulativeRadiationDose` profiles and trigger alerts when approaching limits or during radiation storms:

* **Dose Rate Monitoring**: Real-time exposure rate tracking
* **Alert Thresholds**: Automated warnings for dose limit approaches
* **Storm Response**: Emergency procedures during solar particle events
* **Operational Decisions**: EVA go/no-go based on radiation environment

#### 4. Post-Mission Assessment

Comprehensive dose reconstruction and health risk assessment for long-term medical surveillance using `SpaceRadiationSummary` reports:

* **Dose Verification**: Reconcile active and passive dosimeter readings
* **Health Risk Assessment**: Calculate cancer risk and other health effects
* **Medical Surveillance**: Inform long-term health monitoring protocols
* **Lessons Learned**: Improve dose prediction models and countermeasures

#### 5. Career Dose Management

Longitudinal tracking of cumulative exposure using `CumulativeRadiationDose` profiles to inform future mission assignments and medical monitoring:

* **Career Planning**: Optimize astronaut utilization across missions
* **Medical Monitoring**: Tailor health surveillance to individual exposure history
* **Retirement Planning**: Manage career dose budgets
* **Family Planning**: Consider reproductive health impacts

#### 6. Research and Epidemiology

Aggregate data for research on space radiation health effects and countermeasure effectiveness:

* **Dose-Response Studies**: Correlate exposure with health outcomes
* **Countermeasure Evaluation**: Assess effectiveness of protective measures
* **Population Studies**: Large-scale epidemiological analysis
* **Risk Model Validation**: Improve radiation risk assessment models

### Enhanced Data Collection

Every radiation measurement tells a story, but the most important stories are often in the details that traditional dosimetry might miss. A whole-body dose figure says nothing about which tissues absorbed it, yet the lens of the eye, the blood-forming marrow, and the central nervous system each respond differently and each has its own exposure limit. Organ-specific dose tracking therefore does not stop at total body dose but carefully monitors exposure to those critical organs. These detailed measurements help space medicine practitioners understand not just how much radiation astronauts receive, but where it goes and what it might do.

#### Organ-Specific Dose Tracking

The [`SpaceRadiationExposure`](StructureDefinition-space-radiation-exposure.md) profile includes components for organ-specific dose measurements using codes from the [`OrganDoseCodesVS`](ValueSet-organ-dose-codes-vs.md) value set:

* **Bone Marrow Dose**: Critical for hematopoietic effects
* **Eye Lens Dose**: Cataract risk assessment
* **Skin Dose**: Radiation dermatitis monitoring
* **CNS Dose**: Cognitive performance impacts
* **Reproductive Organ Dose**: Family planning considerations

#### Advanced Dosimetry Parameters

The profiles capture sophisticated dosimetry data:

* **Linear Energy Transfer (LET)**: Radiation quality assessment
* **Radiation Quality Factor**: Biological effectiveness weighting
* **Shielding Effectiveness**: Habitat and spacecraft protection assessment
* **Exposure Duration**: Time-dependent dose accumulation

#### Mission and Environmental Context

Each radiation measurement includes contextual information:

* **Mission Phase**: Launch, transit, orbital operations, surface operations, return
* **Location**: Specific spacecraft modules, planetary surface locations
* **Shielding Configuration**: Standard operations vs. storm shelter mode
* **Activity Type**: Routine operations, EVA, surface exploration

### Integration with Existing Systems

Space radiation tracking doesn't exist in isolation—it's woven into the fabric of every space mission, from pre-launch planning to post-flight medical surveillance. When Mission Control makes the decision to delay an EVA due to solar activity, that decision flows from real-time radiation monitoring systems integrated with spacecraft environmental controls, flight rules databases, and crew health management systems. This interconnected approach ensures that radiation protection isn't an afterthought, but a fundamental consideration in every operational decision, creating a seamless safety net that spans Earth-based mission control, spacecraft systems, and long-term medical care.

This radiation tracking system integrates with multiple aerospace medicine systems:

#### Environmental Control and Life Support Systems (ECLSS)

Real-time environmental radiation data from spacecraft ECLSS feeds into the radiation tracking system through standardized interfaces, providing:

* **Area Dose Rates**: Compartment-specific radiation levels
* **Environmental Monitoring**: Correlation with life support system performance
* **Alert Integration**: Automated notifications during radiation events

#### Mission Control Systems

Operational decision support during radiation events through integration with:

* **Flight Rules**: Automated enforcement of radiation exposure limits
* **EVA Planning**: Real-time go/no-go decisions based on radiation environment
* **Emergency Procedures**: Storm shelter protocols and crew protection measures

#### Longitudinal Study of Astronaut Health (LSAH)

Long-term health surveillance through data sharing with epidemiological studies:

* **Health Outcomes**: Correlation of radiation exposure with medical conditions
* **Risk Assessment**: Population-based risk factor analysis
* **Preventive Medicine**: Personalized health monitoring protocols

#### Space Radiation Health Program

Research and risk assessment through integration with NASA's research programs:

* **Countermeasure Development**: Assessment of radioprotective interventions
* **Risk Model Validation**: Comparison of predicted vs. actual health outcomes
* **Technology Development**: Evaluation of new dosimetry and shielding technologies

### HERA Radiation Monitoring System (Polaris Dawn & Fram2)

#### Overview

The NASA Human Research Program (HRP) HERA (High-Energy Radiation Analyzer) is a fully autonomous radiation monitoring instrument designed for NASA exploration missions. It flew for the first time inside a crewed spacecraft on Polaris Dawn and again on Fram2, providing the first high-altitude and polar-orbit radiation measurements inside a Dragon-class vehicle. These data fill critical gaps in our understanding of radiation exposure beyond low Earth orbit (LEO) and in polar trajectories.

This section documents the HERA hardware, mission results, space weather context, and FHIR modeling guidance for incorporating these measurements into the Aerospace Medicine IG.

#### HERA System Description

**HERA Radiation Monitoring System**

* Fully autonomous instrument developed for NASA exploration programs
* Modified from 110 V DC to 28 V DC to support Crew Dragon spacecraft
* Polaris Dawn flew the Artemis I qualification unit
* Fram2 flew a refly of the same Artemis I flight hardware
* Configuration: one processing unit + two sensor units (Fram2 used processing unit only)
* Qualified for shock, vibration, and thermal environments (additional SpaceX qualification performed)
* No direct vehicle data connection on Fram2
* Mass: approximately 0.7 kg (excluding cabling)
* Power consumption: approximately 5 W
* Outputs: dosimetry, science data, caution/warning, and crew display data

#### Mission Results – Dose and Dose Equivalent Measurements

**Key findings**

* Polaris Dawn (September 2024, five days, apogee about 1,400 km): total mission dose equivalent approximately **8 mSv**, lower than the pre-flight prediction of 15-20 mSv
* Fram2 (April 2025, about 3.5 days, 90° polar orbit): HERA total approximately **1.2 mSv**; the crew's CADS personal dosimeters read 0.83-1.22 mSv
* Peak dose rate observed: **0.2 mSv/min** (comparable to the Artemis I outbound Van Allen belt passage)
* Vehicle and sensor shielding strongly influenced measured dose
* Internal HERA clock drift required post-flight mission-time correction

The comparison table further down repeats these two totals alongside ISS, Artemis I, and Mars reference values.

**Fram2 Polar Orbit Dose Rate Map**

* Highest dose regions observed near the **South Atlantic Anomaly** and polar passes
* Dose maps plotted in microgray per minute (µGy/min) with logarithmic scaling
* Latitude and longitude-based orbital mapping performed

#### Fram2 Space Weather Context

* Fram2 launched during an NOAA **S2 moderate radiation storm**
* Low-energy proton flux exceeded 100 PFU
* Event associated with an **X1.1 solar flare** on March 28
* Associated coronal mass ejection produced geomagnetic storming later in the mission
* **No significant radiation increase observed inside Dragon** due to soft proton spectrum and spacecraft shielding

#### Fram2 Space X-Ray Experiment Findings

* X-ray exposures were clearly visible in detector imaging data
* Dose registered by the HERA detector itself from the X-ray experiment: approximately **2.3 µSv**
* Estimated crew skin exposure from the experiment: approximately **9 µSv ±50 %** (this is the 0.009 mSv figure in the comparison table)
* Flight day 3 (FD3) detector exposures were approximately 10× greater than flight day 1 (FD1)
* Orientation and shielding geometry likely contributed to the difference

#### Mission Radiation Exposure Comparison

The table places the two HERA flights next to routine ISS increments, the uncrewed Artemis I flight, an SPE skin-dose measurement from the BioSentinel cubesat, and projected Mars mission totals. Polaris Dawn's higher total reflects its repeated passes through the inner Van Allen belt at high apogee; Fram2's lower total reflects a shorter, lower flight.

| | |
| :--- | :--- |
| Fram2 Space X-Ray | 0.009 mSv |
| Fram2 CADS | 0.828–1.223 mSv |
| Fram2 HERA | 1.2 mSv |
| ISS (3.5 Days) | 1.2–1.5 mSv |
| ISS (5 Days) | 1.9–2.3 mSv |
| ISS (17 Days) | 6.4–8 mSv |
| **Polaris Dawn** | **8 mSv** |
| Artemis I (25 Days) | 27–36 mSv |
| ISS (6 Months) | 68–82 mSv |
| Biosentinel SPE Skin Dose | 1250 mSv |
| Projected Mars Mission | 700–1300 mSv |

#### FHIR Implementation Guidance

The HERA measurements fit the existing radiation profiles without new structures: each total or dose-rate reading is a [SpaceRadiationExposure](StructureDefinition-space-radiation-exposure.md) Observation (total mission dose, dose equivalent, peak dose rate, SPE exposure), the HERA and CADS instruments are [RadiationDetector](StructureDefinition-radiation-detector.md) Devices, and a mission dose summary is a [SpaceRadiationSummary](StructureDefinition-space-radiation-summary.md) DiagnosticReport. Mission phase, shielding configuration, and organ-specific doses use the existing [MissionContext](StructureDefinition-mission-context.md) and [ShieldingMass](StructureDefinition-shielding-mass.md) extensions and the organ-dose components.

#### Proposed Profiles (not yet defined)

* `HERARadiationObservation` — a SpaceRadiationExposure specialization carrying HERA-specific channels (dose, dose equivalent, and dose-rate map bins); may be unnecessary if the base profile suffices
* `HERADetectorDevice` — a RadiationDetector specialization for the HERA processing and sensor units
* `PolarOrbitRadiationMapReport` — a DiagnosticReport carrying latitude/longitude dose-rate maps

Source note: the values in this HERA section are taken from NASA Human Research Program post-flight presentation materials for Polaris Dawn and Fram2; no public primary document was located at the time of writing, so they should be treated as preliminary.

### Implementation Examples

The true power of standardized radiation tracking becomes apparent when you see it in action across diverse scenarios—from routine ISS operations where radiation exposure is carefully monitored and managed within established limits, to emergency situations where real-time dose tracking enables critical decisions about crew safety. These implementation examples showcase how abstract data models translate into practical tools that protect astronaut health, whether documenting a routine measurement from an electronic personal dosimeter or generating comprehensive career dose summaries that guide mission planning and medical surveillance for decades to come.

All four examples describe the same synthetic ISS increment (Expedition 75, June-November 2025) for the guide's example astronaut, so they can be read together as one dosimetry record.

#### Individual Dose Measurement Example

The [Daily Radiation Exposure, ISS Flight Day 45](Observation-space-radiation-exposure-example.md) instance is one day of galactic cosmic ray dose equivalent (0.52 mSv) measured by the crew personal dosimeter, including:

* The `gcr-dose` code and the `gcr` radiation type extension
* Skin (0.61 mSv) and bone marrow (0.47 mSv) organ-dose components
* Dose rate (21.7 uSv/h) and linear energy transfer (7.5 keV/um) components
* Mission context, 15 g/cm2 shielding mass, a shielding countermeasure, and a reference to the detector Device

#### Cumulative Dose Example

The [Cumulative Radiation Dose, ISS Expedition 75](Observation-cumulative-radiation-dose-example.md) instance covers the first 180 days of the increment (94 mSv) with:

* Daily, weekly, and 30-day rolling dose components
* Mission dose (94 mSv) and career dose (212 mSv) components
* A compliance-status component stating the career total is within the 600 mSv NASA-STD-3001 limit

#### Radiation Detection Equipment Example

The [Crew Personal Dosimeter](Device-radiation-detector-example.md) instance documents the electronic personal dosimeter worn by the example astronaut, including:

* Detector type (`epd`), manufacturer, model, and serial number
* Sensitivity (1 uSv), energy range (20 keV to 10 MeV), and measurement accuracy (10%) properties
* The patient it is assigned to

#### Mission Dose Summary Report

The [Radiation Exposure Summary, ISS Expedition 75](DiagnosticReport-space-radiation-summary-example.md) instance is the flight surgeon's increment summary, with:

* References to the daily and cumulative dose Observations above as results
* NASA as the performing organization and the increment as the reporting period
* A conclusion comparing the 94 mSv mission dose with the pre-flight projection and confirming no change to flight-certification status

### Regulatory and Standards Compliance

Behind every radiation measurement and dose limit lies decades of scientific research, international collaboration, and hard-learned lessons from both space exploration and terrestrial radiation medicine. When NASA sets career dose limits for astronauts, those numbers represent the collective wisdom of radiation biologists, space medicine physicians, and international standards organizations working together to balance exploration goals with crew safety. These standards aren't just bureaucratic requirements—they're lifelines that ensure today's space explorers can pursue their missions while preserving their health for life after spaceflight.

The implementation aligns with established radiation protection standards:

#### NASA Standards

* **NASA-STD-3001**: NASA Space Flight Human-System Standard for crew health (Volume 1 Revision C sets the 600 mSv career limit)
* **NASA Radiation Health Officer Requirements**: Operational radiation safety protocols
* **NASA Space Radiation Health Program**: Research and risk assessment guidelines

#### International Standards

* **NCRP Report 98**: Guidance on Radiation Received in Space Activities
* **ICRP Publications**: International radiation protection recommendations
* **ANSI Standards**: Personnel dosimetry performance criteria

#### Regulatory Frameworks

* **21 CFR Part 1040**: FDA performance standards for electronic products
* **10 CFR Part 20**: NRC standards for protection against radiation
* **International Guidelines**: ESA, Roscosmos, and other space agency standards

### Future Considerations

As humanity prepares for missions to Mars and beyond, radiation protection faces unprecedented challenges that will reshape how we think about space medicine. A round-trip Mars mission could expose astronauts to radiation doses approaching current career limits, while deep space exploration will venture into radiation environments we've never directly experienced. The radiation tracking systems we develop today must evolve to support missions measured not in months but in years, where autonomous medical decision-making and advanced countermeasures will be essential for crew survival. These future considerations aren't just technical challenges—they represent the evolution of space medicine from Earth-supported operations to truly autonomous healthcare in the cosmos.

As commercial spaceflight expands and missions extend to Mars and beyond, the radiation tracking system must evolve to accommodate:

#### Extended Mission Durations

Multi-year missions requiring enhanced dose management:

* **Adaptive Dose Limits**: Mission-specific dose budgets
* **Countermeasure Integration**: Pharmaceutical radioprotectors and active shielding
* **Real-Time Risk Assessment**: Dynamic dose limit adjustments based on mission objectives

#### Commercial Crew Programs

Integration with private sector space operations:

* **Standardized Protocols**: Common dose tracking across operators
* **Regulatory Compliance**: Commercial space transportation regulations
* **Data Sharing**: Coordination between NASA and commercial partners

#### Deep Space Missions

Enhanced GCR exposure and communication delays:

* **Autonomous Systems**: Self-managed dose tracking and response
* **Enhanced Shielding**: Advanced materials and active protection systems
* **Medical Countermeasures**: Pharmaceutical intervention capabilities

#### Planetary Surface Operations

Surface radiation environments on Moon and Mars:

* **Environmental Characterization**: Surface radiation mapping and prediction
* **Habitat Shielding**: Underground and shielded surface facilities
* **EVA Protection**: Enhanced spacesuits and mobile shielding

#### Advanced Technologies

Next-generation radiation monitoring and protection:

* **Real-Time Biomarkers**: Biological indicators of radiation exposure
* **Predictive Modeling**: AI-enhanced dose prediction and optimization
* **Personalized Medicine**: Individual radiation sensitivity assessment
* **Active Countermeasures**: Magnetic shielding and pharmaceutical protection

This comprehensive approach to radiation exposure tracking ensures that space medicine practitioners have the detailed dosimetry data needed to protect astronaut health while enabling the scientific exploration of space.

### Standardized Terminologies

The radiation module uses four small code systems and a set of value sets that bind the profile elements above. In practice an implementer picks the Observation code from the dose-code value set, the radiation type and detector type from their code systems, and the unit from the UCUM-based units value set.

* [SpaceRadiationCS](CodeSystem-space-radiation-cs.md): Measurement components (LET, quality factor, shielding effectiveness), source-specific dose codes (`gcr-dose`, `spe-dose`, `trapped-dose`, `secondary-dose`, `neutron-dose`), accumulation-period codes (`daily-dose` through `career-dose`), organ dose codes, detector property types, and report codes
* [SpaceRadiationTypeCS](CodeSystem-space-radiation-type-cs.md) / [SpaceRadiationTypeVS](ValueSet-space-radiation-type-vs.md): Types of space radiation (`gcr`, `spe`, `trapped`, `secondary`)
* [RadiationDetectorTypeCS](CodeSystem-radiation-detector-type-cs.md) / [DosimeterTypeVS](ValueSet-dosimeter-type-vs.md): Detection equipment types (`tld`, `osld`, `epd`, `tepc`, `area-monitor`, `neutron-detector`, `spectrometer`, `passive`, `active`)
* [RadiationCountermeasuresCS](CodeSystem-radiation-countermeasures-cs.md) / [RadiationCountermeasuresVS](ValueSet-radiation-countermeasures-vs.md): Protective measures (`shielding`, `shelter`, `medication`, `monitoring`)
* [SpaceRadiationDoseCodesVS](ValueSet-space-radiation-dose-codes-vs.md): Allowed `Observation.code` values for SpaceRadiationExposure (LOINC 73536-5 total dose, 77638-4 dose rate, and the source-specific codes)
* [OrganDoseCodesVS](ValueSet-organ-dose-codes-vs.md): Organ-specific dose component codes
* [RadiationDoseUnitsVS](ValueSet-radiation-dose-units-vs.md): UCUM dose units (`mSv`, `uSv`, `Sv`, `mGy`, `uGy`, `Gy`)

### References

#### NASA Standards and Guidelines

* [NASA. NASA Space Flight Human-System Standard, Volume 1: Crew Health. NASA-STD-3001 Vol 1 Rev C, 2024](https://www.nasa.gov/wp-content/uploads/2024/03/nasa-std-3001-vol-1-rev-c.pdf)
* [NASA-STD-3001, Volume 2, Revision A - Human Factors, Habitability, and Environmental Health](https://standards.nasa.gov/standard/nasa/nasa-std-3001-vol-2)
* [NASA Space Radiation Element Human Research Program](https://www.nasa.gov/hrp/elements/radiation)
* [NASA-HDBK-4003 - Radiation Health Officer Handbook](https://standards.nasa.gov/standard/nasa/nasa-hdbk-4003)

#### International Standards

* [ICRP Publication 103: The 2007 Recommendations of the International Commission on Radiological Protection](https://www.icrp.org/publication.asp?id=ICRP%20Publication%20103)
* [ICRP Publication 132: Radiological Protection from Cosmic Radiation in Aviation](https://www.icrp.org/publication.asp?id=ICRP%20Publication%20132)
* [NCRP Report No. 98: Guidance on Radiation Received in Space Activities](https://ncrponline.org/publications/reports/ncrp-report-98/)
* [NCRP Report No. 153: Information Needed to Make Radiation Protection Recommendations for Space Missions Beyond Low Earth Orbit](https://ncrponline.org/publications/reports/ncrp-report-153/)

#### Federal Regulations

* [21 CFR Part 1040: Performance Standards for Electronic Products](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1040)
* [10 CFR Part 20: Standards for Protection Against Radiation](https://www.ecfr.gov/current/title-10/chapter-I/part-20)
* [14 CFR Part 460: Human Space Flight Requirements](https://www.ecfr.gov/current/title-14/chapter-III/subchapter-C/part-460)

#### Research Publications

* [Chancellor, J.C., et al. (2014). Space Radiation: The Number One Risk to Astronaut Health beyond Low Earth Orbit](https://doi.org/10.1016/j.lssr.2014.02.003)
* [Zeitlin, C., et al. (2013). Measurements of Energetic Particle Radiation in Transit to Mars on the Mars Science Laboratory](https://doi.org/10.1126/science.1235989)
* [Durante, M., & Cucinotta, F.A. (2008). Heavy Ion Carcinogenesis and Human Space Exploration](https://doi.org/10.1038/nrc2391)
* Cucinotta FA, Kim MY, Chappell LJ. Space Radiation Cancer Risk Projections and Uncertainties - 2012. NASA/TP-2013-217375, 2013.
* [Space radiation measurements during Artemis I (Nature, 2024)](https://www.nature.com/articles/s41586-024-07927-7)
* NASA Human Research Program. HERA (High-Energy Radiation Analyzer) results from Polaris Dawn and Fram2. Post-flight presentation materials, 2025 (no public primary document located).
* [INTO THE DEEP: As humans return to the Moon, researchers are trying to understand—and thwart—the biological toll of deep-space radiation](https://www.science.org/content/article/humans-return-moon-scientists-confront-dangers-deep-space-radiation)

