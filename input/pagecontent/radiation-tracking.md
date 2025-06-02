# Radiation Exposure Tracking

## Overview

Radiation exposure tracking is a critical component of aerospace medicine, as astronauts face significantly higher levels of ionizing radiation compared to Earth-based populations. Unlike terrestrial medical settings where radiation exposure is primarily from diagnostic procedures, space radiation exposure comes from galactic cosmic rays (GCR), solar particle events (SPE), and trapped radiation in the Van Allen belts.

This implementation guide provides FHIR profiles for comprehensive radiation dosimetry tracking throughout an astronaut's career, from pre-flight baseline measurements through long-duration missions to post-flight monitoring.

## Space Radiation Environment

Space radiation presents unique challenges that differ fundamentally from terrestrial radiation exposure:

### Galactic Cosmic Radiation (GCR)
- **Source**: High-energy particles from outside the solar system
- **Characteristics**: Continuous, low dose rate, high linear energy transfer (LET)
- **Health Impact**: Primary concern for cancer risk and central nervous system effects
- **Typical Exposure**: 0.5-1.0 mSv/day in deep space

### Solar Particle Events (SPE)
- **Source**: Solar flares and coronal mass ejections
- **Characteristics**: Episodic, high dose rate, predominantly protons
- **Health Impact**: Acute radiation syndrome risk during major events
- **Typical Exposure**: Highly variable, can exceed 1000 mSv during major events

### Trapped Radiation
- **Source**: Charged particles trapped in Earth's magnetic field (Van Allen belts)
- **Characteristics**: Predictable based on orbital parameters
- **Health Impact**: Contributes to cumulative dose, particularly for ISS missions
- **Typical Exposure**: 0.3-0.5 mSv/day in low Earth orbit

## Radiation Monitoring Strategy

### Personal Dosimetry
All space travelers wear multiple types of radiation detectors:

1. **Passive Dosimeters**
   - Thermoluminescent dosimeters (TLD)
   - Optically stimulated luminescence detectors (OSLD)
   - Nuclear track detectors (NTD)

2. **Active Dosimeters**
   - Real-time electronic personal dosimeters (EPD)
   - Tissue equivalent proportional counters (TEPC)

3. **Area Monitoring**
   - Fixed monitors in spacecraft compartments
   - Environmental dosimetry for habitat characterization

### Dose Limits and Guidelines

NASA maintains career dose limits based on the principle of limiting excess cancer mortality risk:

- **Career Limits**: Age and gender-specific limits (typically 150-400 mSv)
- **30-Day Limits**: 250 mSv for blood-forming organs
- **Annual Limits**: Based on career dose budget management
- **Organ-Specific Limits**: Eye lens (1000 mSv career), skin (1500 mSv annual)

## Data Model Architecture

The radiation exposure tracking profiles extend the base FHIR resources to accommodate space-specific requirements:

### Core Resources
- **Patient**: Astronaut with space-specific extensions
- **Observation**: Radiation dose measurements
- **DiagnosticReport**: Comprehensive dose summaries
- **Device**: Dosimetry equipment and radiation monitors
- **Location**: Spacecraft, space station modules, planetary surfaces

### Key Extensions
- **Mission Context**: Links radiation exposure to specific missions
- **Radiation Type**: Distinguishes between GCR, SPE, and trapped radiation
- **Shielding Information**: Accounts for spacecraft or habitat shielding
- **Countermeasures**: Documents protective actions taken

## Use Cases

### 1. Pre-Flight Baseline Assessment
Establish baseline radiation exposure from terrestrial sources (medical procedures, occupational exposure, natural background).

### 2. Mission Planning and ALARA
Use predictive models and historical data to plan missions within dose limits using the As Low As Reasonably Achievable (ALARA) principle.

### 3. Real-Time Mission Monitoring
Track cumulative dose during missions and trigger alerts when approaching limits or during radiation storms.

### 4. Post-Mission Assessment
Comprehensive dose reconstruction and health risk assessment for long-term medical surveillance.

### 5. Career Dose Management
Longitudinal tracking of cumulative exposure to inform future mission assignments and medical monitoring.

### 6. Research and Epidemiology
Aggregate data for research on space radiation health effects and countermeasure effectiveness.

## Integration with Existing Systems

This radiation tracking system integrates with:

- **Environmental Control and Life Support Systems (ECLSS)**: Real-time environmental radiation data
- **Mission Control Systems**: Operational decision support during radiation events
- **Longitudinal Study of Astronaut Health (LSAH)**: Long-term health surveillance
- **Space Radiation Health Program**: Research and risk assessment

## Regulatory and Standards Compliance

The implementation aligns with:

- **NASA-STD-3001**: NASA Space Flight Human-System Standard
- **NCRP Report 98**: Guidance on Radiation Received in Space Activities
- **ICRP Publications**: International radiation protection recommendations
- **21 CFR Part 1040**: FDA performance standards for electronic products

## Future Considerations

As commercial spaceflight expands and missions extend to Mars and beyond, the radiation tracking system must evolve to accommodate:

- **Extended Mission Durations**: Multi-year missions requiring enhanced dose management
- **Commercial Crew Programs**: Integration with private sector space operations
- **Deep Space Missions**: Enhanced GCR exposure and communication delays
- **Planetary Surface Operations**: Surface radiation environments on Moon and Mars
- **Advanced Countermeasures**: Pharmaceutical radioprotectors and active shielding systems

This comprehensive approach to radiation exposure tracking ensures that space medicine practitioners have the detailed dosimetry data needed to protect astronaut health while enabling the scientific exploration of space.



## Referencees  

# References - Radiation Exposure Tracking

## NASA Standards and Guidelines

### NASA-STD-3001 - NASA Space Flight Human-System Standard
- **Volume 1**: Crew Health
  - [NASA-STD-3001, Volume 1, Revision B - Crew Health](https://standards.nasa.gov/standard/nasa/nasa-std-3001-vol-1)
  - NASA Technical Standard, 2015
  - Establishes requirements for crew health during spaceflight missions
  - Chapter 6 covers radiation exposure limits and monitoring requirements

- **Volume 2**: Human Factors, Habitability, and Environmental Health  
  - [NASA-STD-3001, Volume 2, Revision A - Human Factors, Habitability, and Environmental Health](https://standards.nasa.gov/standard/nasa/nasa-std-3001-vol-2)
  - NASA Technical Standard, 2011
  - Defines environmental health requirements including radiation protection

### NASA Space Radiation Health Program Documents
- [NASA Space Radiation Element Human Research Program](https://www.nasa.gov/hrp/elements/radiation)
- [NASA Space Radiation Health Project](https://humanresearchroadmap.nasa.gov/Evidence/reports/Radiation.pdf)
- NASA Human Research Program, 2023
- Comprehensive research program addressing space radiation health risks

### NASA Radiation Health Officer (RHO) Requirements
- [NASA-HDBK-4003 - Radiation Health Officer Handbook](https://standards.nasa.gov/standard/nasa/nasa-hdbk-4003)
- NASA Handbook, 2022
- Operational guidance for radiation health officers

## International Radiation Protection Standards

### International Commission on Radiological Protection (ICRP)
- **ICRP Publication 103**: [The 2007 Recommendations of the International Commission on Radiological Protection](https://www.icrp.org/publication.asp?id=ICRP%20Publication%20103)
  - ICRP, 2007
  - Fundamental recommendations for radiation protection

- **ICRP Publication 132**: [Radiological Protection from Cosmic Radiation in Aviation](https://www.icrp.org/publication.asp?id=ICRP%20Publication%20132)
  - ICRP, 2016
  - Guidance on cosmic radiation protection in aviation (applicable to space)

### International Atomic Energy Agency (IAEA)
- **IAEA Safety Standards Series No. GSR Part 3**: [Radiation Protection and Safety of Radiation Sources: International Basic Safety Standards](https://www.iaea.org/publications/8930/radiation-protection-and-safety-of-radiation-sources-international-basic-safety-standards)
  - IAEA, 2014
  - International basic safety standards for radiation protection

## National Council on Radiation Protection and Measurements (NCRP)

### NCRP Report No. 98
- [Guidance on Radiation Received in Space Activities](https://ncrponline.org/publications/reports/ncrp-report-98/)
- NCRP, 1989
- Foundational document for space radiation protection

### NCRP Report No. 132
- [Radiation Protection Guidance for Activities in Low-Earth Orbit](https://ncrponline.org/publications/reports/ncrp-report-132/)
- NCRP, 2000
- Specific guidance for low Earth orbit missions

### NCRP Report No. 153
- [Information Needed to Make Radiation Protection Recommendations for Space Missions Beyond Low Earth Orbit](https://ncrponline.org/publications/reports/ncrp-report-153/)
- NCRP, 2006
- Recommendations for deep space mission radiation protection

### NCRP Report No. 142
- [Operational Radiation Safety Program for Astronauts in Low Earth Orbit: A Basic Framework](https://ncrponline.org/publications/reports/ncrp-report-142/)
- NCRP, 2002
- Framework for operational radiation safety programs

## Federal Regulations

### Code of Federal Regulations (CFR)
- **21 CFR Part 1040**: [Performance Standards for Electronic Products](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1040)
  - FDA performance standards for radiation-emitting electronic products
  - Subpart C covers diagnostic X-ray systems

- **10 CFR Part 20**: [Standards for Protection Against Radiation](https://www.ecfr.gov/current/title-10/chapter-I/part-20)
  - Nuclear Regulatory Commission radiation protection standards
  - Provides framework for occupational radiation exposure limits

### FAA Regulations
- **14 CFR Part 121, Appendix I**: [Flightcrew Member Duty Period Limitations and Rest Requirements](https://www.ecfr.gov/current/title-14/chapter-I/subchapter-G/part-121/appendix-Appendix%20I%20to%20Part%20121)
  - Includes cosmic radiation exposure considerations for aircrew

## European Space Agency (ESA) Standards

### ESA ECSS Standards
- **ECSS-Q-ST-70-53C**: [Space product assurance - Particle and UV radiation testing for space materials](https://ecss.nl/standard/ecss-q-st-70-53c-space-product-assurance-particle-and-uv-radiation-testing-for-space-materials/)
  - ESA, 2016
  - Standards for radiation testing of space materials

- **ECSS-E-ST-10-04C**: [Space engineering - Space environment](https://ecss.nl/standard/ecss-e-st-10-04c-space-engineering-space-environment/)
  - ESA, 2008
  - Comprehensive space environment specification including radiation

### ESA Medical Standards
- [ESA Astronaut Medical Standards](https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Astronauts/Medical_requirements)
- European Space Agency
- Medical fitness requirements for ESA astronauts

## Russian Space Standards (Roscosmos)

### GOST Standards

- Chancellor, J.C., et al. (2014). [Space Radiation: The Number One Risk to Astronaut Health beyond Low Earth Orbit](https://doi.org/10.1016/j.lssr.2014.02.003). Life Sciences in Space Research, 2, 2-29.
- Zeitlin, C., et al. (2013). [Measurements of Energetic Particle Radiation in Transit to Mars on the Mars Science Laboratory](https://doi.org/10.1126/science.1235989). Science, 340(6136), 1080-1084.
- Durante, M., & Cucinotta, F.A. (2008). [Heavy Ion Carcinogenesis and Human Space Exploration](https://doi.org/10.1038/nrc2391). Nature Reviews Cancer, 8(6), 465-472.

- **ISO 15390:2004** [Space systems - Programme management - Dependability assurance requirements](https://www.iso.org/standard/27439.html)
- **ISO 14620-3:2005** [Space systems - Safety requirements - Part 3: Flight safety systems](https://www.iso.org/standard/24313.html)
- **14 CFR Part 460**: [Human Space Flight Requirements](https://www.ecfr.gov/current/title-14/chapter-III/subchapter-C/part-460)
- **ANSI N13.11-2009**: [Dosimetry - Personnel Dosimetry Performance - Criteria for Testing](https://webstore.ansi.org/standards/hps/ansin132009)
- **ANSI N42.17A-2003**: [Performance Specifications for Health Physics Instrumentation - Portable Instrumentation for Use in Normal Environmental Conditions](https://webstore.ansi.org/standards/ieee/ansin4217a2003)
- **IEC 60846-1:2009**: [Radiation protection instrumentation - Ambient and/or directional dose equivalent (rate) meters and/or monitors for beta, X and gamma radiation](https://webstore.iec.ch/publication/3690)
- **GOST R 50109-92**: [Radiation Safety of Space Activities](https://en.wikipedia.org/wiki/GOST)

- [NASA/TP-2013-217375 - Space Faring: The Radiation Challenge](https://ntrs.nasa.gov/citations/20130013869)
- [NASA/TM-2010-216126 - Space Radiation Cancer Risk Projections and Uncertainties](https://ntrs.nasa.gov/citations/20100013546)
- [NASA CCP Requirements Document](https://www.nasa.gov/commercial-crew-program)
- [NASA Longitudinal Study of Astronaut Health](https://www.nasa.gov/centers/johnson/slsd/about/divisions/hacd/laboratories/lsah.html)
- [Aerospace Medical Association Space Medicine Branch](https://www.asma.org/about-asma/constituents/space-medicine)
- [ESA SPENVIS - Space Environment Information System](https://www.spenvis.oma.be/)
- [NASA Goddard Space Flight Center - Space Physics Data Facility](https://spdf.gsfc.nasa.gov/)
- [Space Weather Prediction Center](https://www.swpc.noaa.gov/)
- [Apollo Experience Report - Protection Against Radiation](https://ntrs.nasa.gov/citations/19730004312)
- [Space Shuttle Crew Health Care System](https://ntrs.nasa.gov/citations/20040086438)
- [ICH E6(R2) Guideline for Good Clinical Practice](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/e6r2-good-clinical-practice-integrated-addendum-ich-e6r1)
- [HL7 FHIR R4 Implementation Guide](https://www.hl7.org/fhir/R4/)
- [FHIR Radiation Dose Summary Implementation Guide](https://build.fhir.org/ig/HL7/fhir-radiation-dose-summary-ig/)
- [45 CFR Parts 160 and 164 - HIPAA Administrative Simplification](https://www.hhs.gov/hipaa/for-professionals/privacy/laws-regulations/index.html)
- [NIST Special Publication 800-53 Rev. 5 - Security and Privacy Controls](https://csrc.nist.gov/publications/detail/sp/800-53/rev-5/final)
