# Astronaut Training - v0.5.4

* [**Table of Contents**](toc.md)
* **Astronaut Training**

## Astronaut Training

## Astronaut Medical Screening and Flight Readiness Certification

### Introduction

Astronauts and spaceflight participants must meet rigorous health criteria to ensure they can safely endure the stresses of space travel. Medical screening for space missions is designed to identify any conditions that could cause an in‑flight medical emergency or otherwise compromise crew safety.

Government space agencies (NASA, ESA, etc.) impose strict medical standards on career astronauts, reflecting the demands of long-duration missions (microgravity, high G-loads, EVA, etc.). In the emerging commercial spaceflight sector, requirements for “space flight participants” (space tourists) tend to be less restrictive, focusing on basic health and functional fitness.

This report compares U.S. and international medical screening standards for astronauts versus tourists, discusses the FAA’s standard airman medical form (FAA Form 8500-8) in the space context, and explores current practices by commercial providers (SpaceX, Blue Origin, Virgin Galactic). Finally, it outlines how these requirements can be modeled in a FHIR (HL7 Fast Healthcare Interoperability Resources) Questionnaire, including key data fields and standardized coding (e.g. LOINC, SNOMED CT) to support implementation of a digital flight readiness assessment.

### Government Astronaut Medical Standards

#### NASA (United States)

NASA maintains rigorous medical certification standards for its astronaut corps. Basic requirements include:

* Vision correctable to 20/20 in each eye
* Blood pressure ≤140/90 (sitting)
* Height between 62–75 inches

Additional evaluations include:

* Aerobic capacity and cardiovascular health
* Sensorimotor function and behavioral health
* Cognition and immune status
* Bone density and radiation exposure history
* EKGs, vision/hearing tests, pulmonary function, lab panels, imaging (MRI/colonoscopy):contentReference[oaicite:0]{index=0}

Certain conditions (e.g. kidney stones, arrhythmias) may disqualify candidates. Astronauts are re-certified annually.

#### International and ISS Standards

Agencies like ESA require a Class 2 (private pilot) medical certificate and have age caps (e.g., 50 years for ESA applicants). ISS-bound astronauts undergo common standards, certified by a Multilateral Space Medicine Board. Required evaluations include:

* Physical/dental exams
* Vision/auditory/psychiatric evaluations
* Extensive lab and cardiopulmonary tests:contentReference[oaicite:1]{index=1}

### Commercial Spaceflight Participant Medical Screening

#### Regulatory Context

As of 2025, FAA does not enforce formal health rules for space tourists due to a Congressional moratorium lasting until at least 2028. Each company sets its own criteria. FAA’s 2006 guidance suggests a risk-based approach depending on flight profile:contentReference[oaicite:2]{index=2}.

##### Suborbital Flights (≤3 Gs)

* Basic health questionnaire
* No physical or lab tests for healthy individuals
* Physicians may recommend further screening based on responses

##### Orbital or High-G Flights (>3 Gs)

* Comprehensive medical history and physical exam
* Lab tests (EKG, blood chemistry, chest X-ray, etc.)
* Re-check within 1–2 weeks of launch

NASA’s OCHMO-STD-100.1A (2022) adds psychosocial history, lifestyle review, infectious disease screening, imaging, cardiac and psychological assessments:contentReference[oaicite:3]{index=3}.

#### Commercial Provider Practices

##### SpaceX

Orbital missions (e.g., Inspiration4, Ax-1) follow NASA/ISS standards, including:

* Centrifuge training
* Medical clearance by aerospace medicine professionals
* Participants may include individuals with controlled medical conditions:contentReference[oaicite:4]{index=4}

##### Blue Origin

Suborbital hops (New Shepard) require:

* Stair climb test (<90s for 7 flights)
* Fit within anthropometric limits (5’0”–6’4”, 110–223 lbs)
* Health questionnaire reviewed by in-house medical team

No formal medical exam unless indicated. Has flown passengers in their 70s–80s:contentReference[oaicite:5]{index=5}.

##### Virgin Galactic

Also suborbital. Requirements include:

* Health questionnaire
* Brief medical review during pre-flight training
* Light screening unless red flags arise
* Assumes standard conditions (e.g., well-controlled hypertension) are acceptable:contentReference[oaicite:6]{index=6}

##### Other Providers

Companies like Axiom Space adhere to NASA/ISS guidelines. Boeing/SpaceX ISS missions follow NASA screening. Future orbital flights may blend these models. Aerospace Medical Association is developing voluntary standards:contentReference[oaicite:7]{index=7}.

### FAA Form 8500-8 and Spaceflight Readiness

FAA Form 8500-8 is used for aviation medical certification. Key features:

* Item 18 includes comprehensive medical history checklist (e.g., heart conditions, neurological disorders, mental health, substance use, etc.)
* Item 19 covers recent doctor visits
* Includes vital signs and physical findings (e.g., blood pressure, height/weight, vision/hearing tests)

Spaceflight-specific modifications may include:

* Claustrophobia, DCS, radiation exposure
* Pregnancy status
* Fitness and stress tests (e.g., treadmill, ergometer)

The structure offers a model for FHIR-based spaceflight medical forms:contentReference[oaicite:8]{index=8}.

### FHIR-Based Medical Questionnaire Design

Key sections include:

#### 1. Applicant Demographics

* Name, DOB, Sex, Contact, Citizenship
* Use LOINC (e.g. 77606-2, 54121-8)

#### 2. Flight/Role Details

* Mission type (Suborbital/Orbital), Role, Duration
* Use SNOMED CT concepts

#### 3. Medical History

Each condition as a yes/no item:

* Cardiac (e.g., 445211001)
* Neurologic (e.g., seizures, stroke)
* Respiratory (e.g., asthma, COPD)
* Psychiatric (e.g., 161615003)
* Substance use
* Metabolic (e.g., 63854-7 for diabetes)
* Visual/Hearing
* Allergies
* Orthopedic/mobility
* Surgeries/hospitalizations
* Recent medical care:contentReference[oaicite:9]{index=9}

#### 4. Family History (Optional)

#### 5. Current Medications and Allergies

* Use LOINC 89261-2, 81629-1

#### 6. Physical Examination

* Vital signs (LOINC: 8302-2, 29463-7, etc.)
* System-specific assessments (e.g., vision, color, hearing, murmur, etc.)

#### 7. Labs and Imaging

* CBC, metabolic panel, glucose, EKG (LOINC 8684-8), X-ray (30750-2)
* Stress tests (e.g., LOINC 82287-9)

#### 8. Fitness Tests

* Stair climb, seat fit checks

#### 9. Psychological Evaluation

* Checklist or embedded screeners (PHQ-9, GAD-7)

#### 10. Disposition and Certification

* “Flight Ready” status
* Physician’s name, signature, date

### FHIR Implementation Notes

* Use `LOINC` for labs, survey items
* Use `SNOMED CT` for conditions
* Use `UCUM` for units
* Use `QuestionnaireResponse` for structured data capture
* Map responses to `Observation`, `Condition`, and `MedicationStatement` resources

### Conclusion

Medical screening for spaceflight builds on decades of aviation and aerospace medicine. Government astronauts follow highly rigorous standards, while commercial passengers undergo lighter, but structured, assessments. FAA Form 8500-8 offers a strong baseline for screening.

Using FHIR with standard vocabularies enables consistent, interoperable data capture. This improves safety, enables health analytics, and supports the scaling of commercial spaceflight.

-------

### Sources

* [FAA Guidance for Medical Screening of Commercial Aerospace Passengers](https://www.faa.gov/media/72446)
* [NASA OCHMO-STD-100.1A Medical Standards](https://www.nasa.gov/wp-content/uploads/2023/04/ochmo-std-100.1a.pdf)
* [ESA Astronaut Attributes](https://www.esa.int/About_Us/Careers_at_ESA/ESA_Astronaut_Selection/Attributes_of_an_astronaut)
* [BartlettChen FAA Space Tourists Legal Review](https://bartlettchenlaw.com/should-federal-aviation-administration-enact-medical-standards-space-tourists/)
* [Women's Aerospace Network](https://www.womensaerospace.com/how-to-be-an-astronaut/physical-and-medical-qualifications)
* [FAA 8500-8 Application Index](https://flightphysical.com/medical-application)
* [Space.com Articles on Health Requirements](https://www.space.com/28133-commercial-spaceflight-health-requirements.html)
* [ScienceDirect Medical Guidelines](https://www.sciencedirect.com/science/article/abs/pii/S0094576521001016)

