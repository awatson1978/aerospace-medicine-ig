# Radiation Tracking - v0.5.3

* [**Table of Contents**](toc.md)
* **Radiation Tracking**

## Radiation Tracking

## Radiation Exposure Tracking

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

#### Standardized Terminologies

The implementation uses specialized code systems for space radiation medicine:

* **[`SpaceRadiationTypeCS`](CodeSystem-space-radiation-type-cs.md)**: Types of space radiation (GCR, SPE, trapped, secondary)
* **[`RadiationCountermeasuresCS`](CodeSystem-radiation-countermeasures-cs.md)**: Protective measures and interventions
* **[`RadiationDetectorTypeCS`](CodeSystem-radiation-detector-type-cs.md)**: Detection equipment types and technologies
* **[`AerospaceCodeSystemEnhanced`](CodeSystem-aerospace-code-system-enhanced.md)**: Comprehensive aerospace medicine terminology

### Space Radiation Environment

Imagine leaving Earth's protective magnetic field and atmosphere behind—suddenly, you're exposed to a constant barrage of high-energy particles that have traveled across the galaxy for millions of years. This is the reality for astronauts venturing beyond low Earth orbit, where the very fabric of space itself becomes a health hazard. Unlike the predictable radiation exposures in hospitals or nuclear facilities, space radiation is dynamic, unpredictable, and fundamentally different from anything humans encounter on Earth.

Space radiation presents unique challenges that differ fundamentally from terrestrial radiation exposure:

#### Galactic Cosmic Radiation (GCR)

* **Source**: High-energy particles from outside the solar system
* **Characteristics**: Continuous, low dose rate, high linear energy transfer (LET)
* **Health Impact**: Primary concern for cancer risk and central nervous system effects
* **Typical Exposure**: 0.5-1.0 mSv/day in deep space
* **FHIR Coding**: Uses `gcr-dose` from the enhanced aerospace code system

#### Solar Particle Events (SPE)

* **Source**: Solar flares and coronal mass ejections
* **Characteristics**: Episodic, high dose rate, predominantly protons
* **Health Impact**: Acute radiation syndrome risk during major events
* **Typical Exposure**: Highly variable, can exceed 1000 mSv during major events
* **FHIR Coding**: Uses `spe-dose` for tracking solar event exposures

#### Trapped Radiation

* **Source**: Charged particles trapped in Earth's magnetic field (Van Allen belts)
* **Characteristics**: Predictable based on orbital parameters
* **Health Impact**: Contributes to cumulative dose, particularly for ISS missions
* **Typical Exposure**: 0.3-0.5 mSv/day in low Earth orbit
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

```
{
  "resourceType": "Device",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-detector"]
  },
  "type": {
    "coding": [{
      "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/radiation-detector-type-cs",
      "code": "epd",
      "display": "Electronic Personal Dosimeter"
    }]
  },
  "property": [
    {
      "type": {
        "coding": [{
          "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system-enhanced",
          "code": "sensitivity"
        }]
      },
      "valueQuantity": {
        "value": 1.0,
        "unit": "μSv",
        "system": "http://unitsofmeasure.org",
        "code": "uSv"
      }
    }
  ]
}

```

#### Dose Limits and Guidelines

NASA maintains career dose limits based on the principle of limiting excess cancer mortality risk, tracked using the [`CumulativeRadiationDose`](StructureDefinition-cumulative-radiation-dose.md) profile:

* **Career Limits**: Age and gender-specific limits (typically 150-400 mSv) - tracked as `career-dose`
* **30-Day Limits**: 250 mSv for blood-forming organs - tracked as `monthly-dose`
* **Annual Limits**: Based on career dose budget management - tracked as `annual-dose`
* **Organ-Specific Limits**: Eye lens (1000 mSv career), skin (1500 mSv annual) - tracked using organ-specific dose components

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

```
{
  "resourceType": "Observation",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/aerospace/StructureDefinition/space-radiation-exposure"]
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
      "system": "http://loinc.org",
      "code": "73536-5",
      "display": "Radiation dose total"
    }]
  },
  "subject": {"reference": "Patient/astronaut-example"},
  "effectiveDateTime": "2025-06-01T12:00:00Z",
  "valueQuantity": {
    "value": 0.5,
    "unit": "mSv",
    "system": "http://unitsofmeasure.org",
    "code": "mSv"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-type",
      "valueCodeableConcept": {
        "coding": [{
          "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-radiation-type-cs",
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
          "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system-enhanced",
          "code": "bone-marrow-dose"
        }]
      },
      "valueQuantity": {
        "value": 0.52,
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
        "value": 20.8,
        "unit": "μSv/h",
        "system": "http://unitsofmeasure.org",
        "code": "uSv/h"
      }
    }
  ]
}

```

### Use Cases

Consider the dramatic moment during Apollo 16 when a massive solar particle event erupted from the Sun, sending dangerous radiation racing toward the Moon. Had astronauts been conducting a lunar EVA at that moment, they could have received lethal doses within hours. This near-miss illustrates why radiation tracking isn't just about record-keeping—it's about enabling split-second decisions that can save lives. Modern space missions use sophisticated radiation monitoring systems to provide early warning, guide operational decisions, and ensure that every astronaut returns home safely within acceptable health risk parameters.

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

Every radiation measurement tells a story, but the most important stories are often in the details that traditional dosimetry might miss. When astronaut Karen Nyberg developed vision problems after her ISS mission, researchers wondered whether localized radiation exposure to her eyes might have contributed. This led to enhanced organ-specific dose tracking protocols that don't just measure total body dose, but carefully monitor radiation exposure to critical organs like the eye lens, bone marrow, and central nervous system. These detailed measurements help space medicine practitioners understand not just how much radiation astronauts receive, but where it goes and what it might do.

#### Organ-Specific Dose Tracking

The [`SpaceRadiationExposure`](StructureDefinition-space-radiation-exposure.md) profile includes components for organ-specific dose measurements using codes from the [`OrganDoseCodesVSComplete`](ValueSet-organ-dose-codes-vs-complete.md) value set:

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

### Implementation Examples

The true power of standardized radiation tracking becomes apparent when you see it in action across diverse scenarios—from routine ISS operations where radiation exposure is carefully monitored and managed within established limits, to emergency situations where real-time dose tracking enables critical decisions about crew safety. These implementation examples showcase how abstract data models translate into practical tools that protect astronaut health, whether documenting a routine measurement from an electronic personal dosimeter or generating comprehensive career dose summaries that guide mission planning and medical surveillance for decades to come.

#### Individual Dose Measurement Example

See the [SpaceRadiationExposure example](Observation-space-radiation-exposure-example.md) for a complete real-time dose measurement during an ISS expedition, including:

* GCR exposure measurement
* Organ-specific dose components
* Mission context and shielding information
* Detection equipment reference

#### Career Dose Summary Example

The [CumulativeRadiationDose example](Observation-cumulative-radiation-dose-example.md) demonstrates long-term dose tracking with:

* Career, mission, and time-period dose accumulations
* Risk assessment and compliance status
* Trend analysis and projection
* Medical surveillance recommendations

#### Radiation Detection Equipment Example

The [RadiationDetector example](Device-radiation-detector-example.md) shows comprehensive device documentation including:

* Detector specifications and capabilities
* Calibration data and accuracy metrics
* Operating conditions and limitations
* Maintenance and quality assurance records

#### Mission Dose Summary Report

The [SpaceRadiationSummary example](DiagnosticReport-space-radiation-summary-example.md) provides a complete mission dose assessment with:

* Comprehensive exposure analysis
* Risk assessment and recommendations
* Comparative analysis with previous missions
* Long-term health surveillance guidance

### Regulatory and Standards Compliance

Behind every radiation measurement and dose limit lies decades of scientific research, international collaboration, and hard-learned lessons from both space exploration and terrestrial radiation medicine. When NASA sets career dose limits for astronauts, those numbers represent the collective wisdom of radiation biologists, space medicine physicians, and international standards organizations working together to balance exploration goals with crew safety. These standards aren't just bureaucratic requirements—they're lifelines that ensure today's space explorers can pursue their missions while preserving their health for life after spaceflight.

The implementation aligns with established radiation protection standards:

#### NASA Standards

* **NASA-STD-3001**: NASA Space Flight Human-System Standard for crew health
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

### References

#### NASA Standards and Guidelines

* [NASA-STD-3001, Volume 1, Revision B - Crew Health](https://standards.nasa.gov/standard/nasa/nasa-std-3001-vol-1)
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

