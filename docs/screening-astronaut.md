# Astronaut Training - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Astronaut Training**

## Astronaut Training

### Introduction

Astronauts and spaceflight participants must meet rigorous health criteria to ensure they can safely endure the stresses of space travel. Medical screening for space missions is designed to identify any conditions that could cause an in-flight medical emergency or otherwise compromise crew safety.

Government space agencies (NASA, ESA, and others) impose strict medical standards on career astronauts, reflecting the demands of long-duration missions (microgravity, high G-loads, EVA). In the emerging commercial spaceflight sector, requirements for "spaceflight participants" (space tourists) tend to be less restrictive, focusing on basic health and functional fitness.

This page compares U.S. and international medical screening standards for astronauts versus tourists, discusses the FAA's standard airman medical form (FAA Form 8500-8) in the space context, and explores current practices by commercial providers (SpaceX, Blue Origin, Virgin Galactic). Finally, it outlines how these requirements can be modeled in a FHIR (HL7 Fast Healthcare Interoperability Resources) Questionnaire, including key data fields and standardized coding (LOINC, SNOMED CT) to support implementation of a digital flight readiness assessment.

### Government Astronaut Medical Standards

#### NASA (United States)

NASA maintains rigorous medical certification standards for its astronaut corps. Basic requirements published for astronaut candidates include [1]:

* Vision correctable to 20/20 in each eye
* Blood pressure not exceeding 140/90 (sitting)
* Height between 62 and 75 inches

Additional evaluations include:

* Aerobic capacity and cardiovascular health
* Sensorimotor function and behavioral health
* Cognition and immune status
* Bone density and radiation exposure history
* Electrocardiograms, vision and hearing tests, pulmonary function, laboratory panels, imaging (MRI, colonoscopy)

Certain conditions (for example, kidney stones or arrhythmias) may disqualify candidates. Astronauts are re-certified annually. The underlying standards are set out in NASA's Office of the Chief Health and Medical Officer standard OCHMO-STD-100.1A [2].

#### International and ISS Standards

ESA requires applicants to hold, or be able to obtain, a medical certificate equivalent to a Class 2 (private pilot) aviation medical. ESA's 2021-2022 astronaut selection set no upper age limit; earlier ESA campaigns had used an age window, so the point is often misreported [3]. ISS-bound astronauts from all partner agencies are certified against common standards by the Multilateral Space Medicine Board. Required evaluations include:

* Physical and dental exams
* Vision, auditory, and psychiatric evaluations
* Extensive laboratory and cardiopulmonary tests

### Commercial Spaceflight Participant Medical Screening

#### Regulatory Context

As of 2026, the FAA does not enforce formal health rules for spaceflight participants. Congress placed a "learning period" moratorium on FAA occupant-safety regulation of commercial human spaceflight in 2004, and the FAA Reauthorization Act of 2024 (Public Law 118-63) extended that moratorium to 1 January 2028 [4]. Each company therefore sets its own criteria. The FAA's 2006 guidance suggests a risk-based approach depending on flight profile [5]:

##### Suborbital Flights (up to about 3 G)

* Basic health questionnaire
* No physical or laboratory tests for healthy individuals
* Physicians may recommend further screening based on responses

##### Orbital or High-G Flights (above about 3 G)

* Comprehensive medical history and physical exam
* Laboratory tests (electrocardiogram, blood chemistry, chest X-ray, and others)
* Re-check within one to two weeks of launch

NASA's OCHMO-STD-100.1A (2022) adds psychosocial history, lifestyle review, infectious disease screening, imaging, cardiac and psychological assessments [2].

#### Commercial Provider Practices

##### SpaceX

Orbital missions (for example, Inspiration4 and Axiom Ax-1) follow NASA/ISS standards, including:

* Centrifuge training
* Medical clearance by aerospace medicine professionals
* Participants may include individuals with controlled medical conditions

##### Blue Origin

For suborbital New Shepard flights, the requirements as published by Blue Origin include [6]:

* A stair climb test (seven flights of stairs in under 90 seconds)
* Fitting within anthropometric limits (5 ft 0 in to 6 ft 4 in; 110 to 223 lb)
* A health questionnaire reviewed by an in-house medical team

No formal medical exam is required unless indicated. Blue Origin has flown passengers in their 70s and 80s.

##### Virgin Galactic

Also suborbital. Requirements include:

* Health questionnaire
* Brief medical review during pre-flight training
* Light screening unless red flags arise
* Common well-controlled conditions (for example, treated hypertension) are generally acceptable

##### Other Providers

Companies like Axiom Space adhere to NASA/ISS guidelines. Boeing and SpaceX ISS missions follow NASA screening. Future orbital flights may blend these models. The Aerospace Medical Association has published recommended medical guidelines for commercial spaceflight participants [7].

### FAA Form 8500-8 and Spaceflight Readiness

FAA Form 8500-8 is used for aviation medical certification. Key features [8]:

* Item 18 includes a comprehensive medical history checklist (heart conditions, neurological disorders, mental health, substance use, and more)
* Item 19 covers recent doctor visits
* Includes vital signs and physical findings (blood pressure, height and weight, vision and hearing tests)

Spaceflight-specific modifications may include:

* Claustrophobia, decompression sickness, radiation exposure
* Pregnancy status
* Fitness and stress tests (treadmill, ergometer)

The structure offers a model for FHIR-based spaceflight medical forms. This guide already carries a FHIR rendering of the form as the [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md).

### FHIR-Based Medical Questionnaire Design

The sections below outline a spaceflight medical questionnaire. For each section, the listed codes are example bindings drawn from LOINC (observations and survey items) and SNOMED CT (conditions); implementers should confirm them against the current terminology releases.

#### Applicant Demographics

Identifying information about the applicant, captured with LOINC observation codes:

* LOINC 54125-0 Patient name
* LOINC 21112-8 Birth date
* LOINC 46098-0 Sex
* Contact details and citizenship as plain text

#### Flight and Role Details

Which flight the applicant is being screened for and what they will do on it:

* Mission type (suborbital or orbital), role, and expected duration
* Mission phase and gravity environment can be coded with this guide's [`MissionPhaseCS`](CodeSystem-mission-phase-cs.md) and [`GravityContextCS`](CodeSystem-gravity-context-cs.md)

#### Medical History

Each condition is recorded as a yes/no item. Where the answer is yes, the condition can be coded with SNOMED CT, for example:

* Cardiac: SNOMED CT 56265001 Heart disease (disorder)
* Neurologic: SNOMED CT 84757009 Epilepsy (disorder); 230690007 Cerebrovascular accident (disorder)
* Respiratory: SNOMED CT 195967001 Asthma (disorder); 13645005 Chronic obstructive lung disease (disorder)
* Psychiatric: SNOMED CT 74732009 Mental disorder (disorder)
* Substance use
* Metabolic: SNOMED CT 73211009 Diabetes mellitus (disorder)
* Visual and hearing impairment
* Allergies
* Orthopedic and mobility limitations
* Surgeries and hospitalizations
* Recent medical care

This guide's condition value sets for specific training devices can be reused as answer lists: [Gimbal Contraindications](ValueSet-gimbal-contraindicated-conditions-vs.md) and [Diving Contraindicated Conditions](ValueSet-diving-contraindicated-conditions-vs.md).

#### Family History (Optional)

A brief family history of cardiac, neurological, and hereditary disease.

#### Current Medications and Allergies

* LOINC 10160-0 History of medication use narrative
* LOINC 48765-2 Allergies and adverse reactions document

#### Physical Examination

Vital signs and system-specific findings:

* LOINC 8302-2 Body height; 29463-7 Body weight; 8480-6 Systolic blood pressure; 8462-4 Diastolic blood pressure; 8867-4 Heart rate
* System-specific assessments (vision, colour vision, hearing, heart murmur, and others) as coded exam findings

#### Laboratory Tests and Imaging

* LOINC 58410-2 Complete blood count panel; 24323-8 Comprehensive metabolic panel; 2345-7 Glucose [mass/volume] in serum or plasma
* LOINC 11524-6 Electrocardiogram study; 36643-5 Chest X-ray, two views
* LOINC 18752-6 Exercise stress test study

#### Fitness Tests

* Stair climb and seat-fit checks, recorded as pass/fail items with the measured time or dimension

#### Psychological Evaluation

* Checklist or embedded screeners: LOINC 44249-1 PHQ-9 quick depression assessment panel; 69737-5 Generalized anxiety disorder 7-item (GAD-7) total score

#### Disposition and Certification

* "Flight Ready" status
* Physician's name, signature, and date

### FHIR Profiles and Extensions

The questionnaire design above maps onto artifacts that already exist in this guide:

* [Astronaut Flight Readiness Questionnaire](Questionnaire-AstronautFlightReadinessQuestionnaire.md): the spaceflight readiness form modelled on the outline in this page
* [FAA Form 8500-8 Questionnaire](Questionnaire-FAA8500Questionnaire.md): the aviation medical application used as the baseline
* [G-SHOCK Centrifugal Trainer Eligibility Questionnaire](Questionnaire-GShockEligibility.md): a device-specific screening questionnaire
* [NASA HERA Analog Mission Application](Questionnaire-HERAAnalogMissionApplication.md): an analog-mission application form
* [Astronaut](StructureDefinition-astronaut.md): the Patient profile used as the subject of screening records

Implementation notes:

* Use LOINC for laboratory results and survey items
* Use SNOMED CT for conditions
* Use UCUM for units
* Use `QuestionnaireResponse` for structured data capture
* Map responses to `Observation`, `Condition`, and `MedicationStatement` resources

### Conclusion

Medical screening for spaceflight builds on decades of aviation and aerospace medicine. Government astronauts follow highly rigorous standards, while commercial passengers undergo lighter, but structured, assessments. FAA Form 8500-8 offers a strong baseline for screening.

Using FHIR with standard vocabularies enables consistent, interoperable data capture. This improves safety, enables health analytics, and supports the scaling of commercial spaceflight.

### References

* [1] NASA. Astronaut Requirements. https://www.nasa.gov/humans-in-space/astronauts/astronaut-requirements/
* [2] NASA Office of the Chief Health and Medical Officer. OCHMO-STD-100.1A, NASA Space Flight Medical Standards, 2022. https://www.nasa.gov/wp-content/uploads/2023/04/ochmo-std-100.1a.pdf
* [3] European Space Agency. Attributes of an astronaut (ESA Astronaut Selection). https://www.esa.int/About_Us/Careers_at_ESA/ESA_Astronaut_Selection/Attributes_of_an_astronaut
* [4] FAA Reauthorization Act of 2024, Public Law 118-63 (H.R. 3935), 118th Congress. https://www.congress.gov/bill/118th-congress/house-bill/3935
* [5] Federal Aviation Administration. Guidance for Medical Screening of Commercial Aerospace Passengers, 2006. https://www.faa.gov/media/72446
* [6] Blue Origin. New Shepard flight requirements (stair climb, height and weight limits), as published on blueorigin.com.
* [7] Aerospace Medical Association, Commercial Spaceflight Working Group. Medical guidelines for commercial spaceflight participants (review). Acta Astronautica, 2021. https://www.sciencedirect.com/science/article/abs/pii/S0094576521001016
* [8] FlightPhysical.com. FAA Form 8500-8 application item index. https://flightphysical.com/medical-application
* [9] Bartlett Chen Law. Should the Federal Aviation Administration enact medical standards for space tourists? https://bartlettchenlaw.com/should-federal-aviation-administration-enact-medical-standards-space-tourists/
* [10] Women's Aerospace Network. How to be an astronaut: physical and medical qualifications. https://www.womensaerospace.com/how-to-be-an-astronaut/physical-and-medical-qualifications
* [11] Space.com. Commercial spaceflight health requirements. https://www.space.com/28133-commercial-spaceflight-health-requirements.html

