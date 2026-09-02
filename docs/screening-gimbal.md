# Gimbal Training - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Gimbal Training**

## Gimbal Training

### Introduction

Multi-axis gimbal training exposes trainees to the disorienting effects of rotation about several axes at once, a component of astronaut and space-tourist preparation for spaceflight. This page uses a hypothetical training device, the "G-SHOCK Centrifugal Trainer", to illustrate how a screening bundle for that kind of training can be expressed in FHIR: an eligibility questionnaire, a screening Bundle profile, and a value set of contraindicated conditions. The device, its limits, and its contraindication list are illustrative and are not drawn from any NASA or FAA requirement.

### G-SHOCK Centrifugal Trainer (Illustrative)

In this scenario, the G-SHOCK Centrifugal Trainer is a multi-axis gimbal that provides controlled exposure to varying degrees of rotation across several axes simultaneously. Rides of this kind challenge the vestibular system and develop the trainee's ability to maintain spatial awareness during complex manoeuvres. Real-world counterparts include the multi-axis trainers used in early astronaut programs and the spatial-disorientation devices used in aviation physiology training [1][2].

### Example Medical Screening Criteria

Before a session, candidates would undergo a medical screening. The following are **example** screening criteria for the hypothetical device; they are not NASA requirements. Items 1 to 6 are conditions represented in the [Gimbal Contraindications](ValueSet-gimbal-contraindicated-conditions-vs.md) value set; items 7 and 8 are anthropometric limits of the kind a device manufacturer would publish:

1. Head, neck, or back injuries
1. History of dizziness or vestibular disorders
1. Claustrophobia
1. Pregnancy
1. History of seizures or seizure disorders
1. Cardiovascular conditions including hypertension, arrhythmias, heart murmur, valve replacement, or other circulatory issues
1. Height between 4 ft 0 in (1.22 m) and 6 ft 2 in (1.88 m)
1. Weight less than 250 lb (113.4 kg)

### Implementation in Aerospace Medicine Practice

#### Pre-Training Assessment

Prior to scheduling a gimbal session, aerospace physicians would:

1. Perform a comprehensive review of the trainee's medical history
1. Conduct a targeted physical examination focusing on neurological and cardiovascular systems
1. Complete the[G-SHOCK Centrifugal Trainer Eligibility Questionnaire](Questionnaire-GShockEligibility.md)
1. Document clearance in the trainee's electronic health record

#### Physiological Monitoring During Training

During a session, the following physiological parameters would be monitored:

* Heart rate and rhythm
* Blood pressure (pre and post session)
* Oxygen saturation
* Subjective symptoms (nausea, disorientation, visual disturbances)

#### Post-Training Evaluation

After each session:

1. Record any adverse reactions or symptoms
1. Document adaptation progress
1. Update the training progression plan based on performance and tolerance

### FHIR Profiles and Extensions

The screening bundle is made up of the following artifacts, all of which exist in this guide:

* [Gimbal Screening](StructureDefinition-gimbal-screening.md): a Bundle profile of type `document` whose entries carry the contraindicated Conditions, Procedures, Medications, and Observations reviewed before a ride
* [G-SHOCK Centrifugal Trainer Eligibility Questionnaire](Questionnaire-GShockEligibility.md): the pre-screening eligibility questionnaire completed by the trainee
* [Gimbal Contraindications](ValueSet-gimbal-contraindicated-conditions-vs.md): SNOMED CT concepts for the contraindicated conditions and procedures

Around that bundle, a training program would use standard resources:

1. **Observations**: Physiological measurements before, during, and after training
1. **RiskAssessment**: Evaluation of individual risk factors for adverse reactions
1. **CarePlan**: Personalized training progression based on adaptation and performance

### Examples

Vestibular symptoms during training resemble space motion sickness, so the motion-sickness examples elsewhere in this guide show how episodes and rescue medication would be recorded:

* [Space Motion Sickness Episode - Flight Day 2](Condition-SMS-Episode-FD2.md): a Condition example for a motion-sickness episode
* [Promethazine IM Rescue Dose](MedicationAdministration-Promethazine-IM-Rescue.md): a MedicationAdministration example for antiemetic rescue treatment

### References

* [1] Federal Aviation Administration. Advisory Circular AC 60-4A, Pilot's Spatial Disorientation, 1983.
* [2] Federal Aviation Administration. Pilot's Handbook of Aeronautical Knowledge, Chapter 17, Aeromedical Factors (spatial disorientation and motion sickness). https://www.faa.gov/regulations_policies/handbooks_manuals/aviation/phak

