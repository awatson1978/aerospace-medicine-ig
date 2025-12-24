// Mental Health Example Instances
// Concrete examples for behavioral health monitoring

Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org
Alias: $behavioral-state-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs
Alias: $behavioral-biomarker-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/behavioral-biomarker-cs
Alias: $isolation-factor-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs
Alias: $psych-countermeasure-cs = http://hl7.org/fhir/uv/aerospace/CodeSystem/psychological-countermeasure-cs

// =====================================================
// BEHAVIORAL HEALTH STATE EXAMPLES
// =====================================================

Instance: ISS-MoodAssessment-Week12
InstanceOf: BehavioralHealthState
Title: "ISS Mood Assessment - Mission Week 12"
Description: "Weekly mood and anxiety assessment with cortisol biomarker during mid-mission period."
Usage: #example

* status = #final
* category.coding.system = "http://loinc.org"
* category.coding.code = #55467-8
* category.coding.display = "Psychological assessment"
* code = $behavioral-state-cs#mood-level "Mood level"
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T10:00:00Z"

// Mood score on -3 to +3 scale
* valueQuantity.value = -1
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

// Cortisol component
* component[cortisol].code = $behavioral-biomarker-cs#cortisol-ugdl
* component[cortisol].valueQuantity.value = 18.5
* component[cortisol].valueQuantity.unit = "µg/dL"
* component[cortisol].valueQuantity.system = $ucum
* component[cortisol].valueQuantity.code = #ug/dL

// Sleep efficiency component
* component[sleep-efficiency].code = $behavioral-biomarker-cs#sleep-efficiency-pct
* component[sleep-efficiency].valueQuantity.value = 72
* component[sleep-efficiency].valueQuantity.unit = "%"
* component[sleep-efficiency].valueQuantity.system = $ucum
* component[sleep-efficiency].valueQuantity.code = #%

Instance: ISS-AnxietyAssessment-PreEVA
InstanceOf: BehavioralHealthState
Title: "ISS Anxiety Assessment - Pre-EVA"
Description: "Pre-EVA anxiety assessment with HRV biomarker showing elevated stress."
Usage: #example

* status = #final
* category.coding.system = "http://loinc.org"
* category.coding.code = #55467-8
* category.coding.display = "Psychological assessment"
* code = $behavioral-state-cs#anxiety-level "Anxiety level"
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-15T08:00:00Z"

// Anxiety score (0-10 scale)
* valueQuantity.value = 6
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

// HRV component showing reduced variability (stress indicator)
* component[hrv].code = $behavioral-biomarker-cs#hrv-ms
* component[hrv].valueQuantity.value = 32
* component[hrv].valueQuantity.unit = "ms"
* component[hrv].valueQuantity.system = $ucum
* component[hrv].valueQuantity.code = #ms

Instance: ISS-CognitiveReadiness-PostAnomaly
InstanceOf: BehavioralHealthState
Title: "ISS Cognitive Readiness - Post-Anomaly"
Description: "Cognitive readiness assessment following ammonia leak alarm (false positive)."
Usage: #example

* status = #final
* category.coding.system = "http://loinc.org"
* category.coding.code = #55467-8
* category.coding.display = "Psychological assessment"
* code = $behavioral-state-cs#cognitive-readiness "Cognitive readiness"
* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-20T15:30:00Z"

// Cognitive readiness score (0-10 scale)
* valueQuantity.value = 7.5
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

// =====================================================
// CUMULATIVE STRESS BURDEN EXAMPLES
// =====================================================

Instance: ISS-StressBurden-Day90
InstanceOf: CumulativeStressBurden
Title: "ISS Cumulative Stress Burden - Mission Day 90"
Description: "Third-quarter phenomenon stress accumulation with breakdown by emotional, cognitive, and social domains."
Usage: #example

* status = #final
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs"
* code.coding.code = #cumulative-stress
* code.coding.display = "Cumulative stress burden"

* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T00:00:00Z"

// Total cumulative stress burden
* valueQuantity.value = 245
* valueQuantity.unit = "stress units"
* valueQuantity.system = $ucum
* valueQuantity.code = #{stress_units}

// Emotional domain component
* component[emotional].code = $behavioral-state-cs#mood-level
* component[emotional].valueQuantity.value = -1.2
* component[emotional].valueQuantity.system = $ucum
* component[emotional].valueQuantity.code = #{score}

// Cognitive domain component
* component[cognitive].code = $behavioral-state-cs#cognitive-readiness
* component[cognitive].valueQuantity.value = 7.5
* component[cognitive].valueQuantity.system = $ucum
* component[cognitive].valueQuantity.code = #{score}

// Social domain component
* component[social].code = $behavioral-state-cs#social-connectedness
* component[social].valueQuantity.value = 6.0
* component[social].valueQuantity.system = $ucum
* component[social].valueQuantity.code = #{score}

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

Instance: ISS-StressBurden-Day180
InstanceOf: CumulativeStressBurden
Title: "ISS Cumulative Stress Burden - Mission Day 180 (End of Mission)"
Description: "End-of-mission cumulative stress burden showing sustained elevation despite countermeasures."
Usage: #example

* status = #final
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-behavioral-state-cs"
* code.coding.code = #cumulative-stress
* code.coding.display = "Cumulative stress burden"

* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-09-01T00:00:00Z"

// Total cumulative stress burden (increased from day 90)
* valueQuantity.value = 412
* valueQuantity.unit = "stress units"
* valueQuantity.system = $ucum
* valueQuantity.code = #{stress_units}

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

// =====================================================
// ISOLATION RISK FACTOR EXAMPLES
// =====================================================

Instance: ISS-IsolationFactor-Confinement
InstanceOf: Observation
Title: "ISS Isolation Factor - Confinement"
Description: "Assessment of confinement stress during prolonged mission."
Usage: #example

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs"
* code.coding.code = #confinement
* code.coding.display = "Confinement"

* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-01T10:00:00Z"

// Severity rating (0-10 scale)
* valueQuantity.value = 7
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

Instance: ISS-IsolationFactor-InterpersonalFriction
InstanceOf: Observation
Title: "ISS Isolation Factor - Interpersonal Friction"
Description: "Documented interpersonal tension between crew members during third quarter."
Usage: #example

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs"
* code.coding.code = #interpersonal-friction
* code.coding.display = "Interpersonal friction"

* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-10T14:00:00Z"

// Severity rating
* valueQuantity.value = 6
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

Instance: ISS-IsolationFactor-CircadianDrift
InstanceOf: Observation
Title: "ISS Isolation Factor - Circadian Drift"
Description: "Sleep-wake cycle misalignment due to shift work and 16 sunrises per day."
Usage: #example

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#survey "Survey"
* code.coding.system = "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs"
* code.coding.code = #circadian-drift
* code.coding.display = "Circadian drift"

* subject = Reference(Patient/AstronautExample)
* effectiveDateTime = "2025-06-05T22:00:00Z"

// Severity rating
* valueQuantity.value = 8
* valueQuantity.system = $ucum
* valueQuantity.code = #{score}

// =====================================================
// PSYCHOLOGICAL COUNTERMEASURE EXAMPLES
// =====================================================

Instance: ISS-CBT-Session-Week12
InstanceOf: PsychologicalCountermeasureActivity
Title: "ISS CBT Session - Mission Week 12"
Description: "Telemedicine cognitive behavioral therapy session addressing mid-mission mood decline."
Usage: #example

* status = #completed
* code = $psych-countermeasure-cs#cbt-session "Cognitive behavioral therapy session"
* subject = Reference(Patient/AstronautExample)
* performedDateTime = "2025-06-02T16:00:00Z"

// Reason: mood decline
* reasonCode = $behavioral-state-cs#mood-level "Mood level"
* reasonReference = Reference(Observation/ISS-MoodAssessment-Week12)

// Performer: behavioral health specialist on ground
* performer.actor.display = "Dr. Sarah Chen, Behavioral Health Specialist"

// Outcome: improved mood
* outcome = $behavioral-state-cs#mood-level "Mood level"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

Instance: ISS-CrewDebrief-PostAnomaly
InstanceOf: PsychologicalCountermeasureActivity
Title: "ISS Crew Debrief - Post-Anomaly"
Description: "Structured crew debrief following ammonia leak false alarm to process stress and restore team cohesion."
Usage: #example

* status = #completed
* code = $psych-countermeasure-cs#crew-debrief "Crew debrief"
* subject = Reference(Patient/AstronautExample)
* performedPeriod.start = "2025-06-20T18:00:00Z"
* performedPeriod.end = "2025-06-20T19:30:00Z"

// Reason: emergency stress and interpersonal friction
* reasonCode[0] = $behavioral-state-cs#anxiety-level "Anxiety level"
* reasonCode[1] = $isolation-factor-cs#interpersonal-friction "Interpersonal friction"

// Performer: crew commander and flight surgeon
* performer[0].actor.display = "Commander Johnson, ISS Expedition 75"
* performer[1].actor.display = "Dr. Martinez, Flight Surgeon"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

Instance: ISS-BrightLightTherapy-Week8
InstanceOf: PsychologicalCountermeasureActivity
Title: "ISS Bright Light Therapy - Mission Week 8"
Description: "Scheduled bright light exposure to stabilize circadian rhythm and improve sleep quality."
Usage: #example

* status = #completed
* code = $psych-countermeasure-cs#bright-light-therapy "Bright light therapy"
* subject = Reference(Patient/AstronautExample)
* performedDateTime = "2025-05-15T07:00:00Z"

// Reason: circadian drift and poor sleep
* reasonCode[0] = $isolation-factor-cs#circadian-drift "Circadian drift"
* reasonCode[1] = $behavioral-state-cs#sleep-quality "Sleep quality"

// Outcome: improved sleep quality
* outcome = $behavioral-state-cs#sleep-quality "Sleep quality"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)

Instance: ISS-GuidedMeditation-Daily
InstanceOf: PsychologicalCountermeasureActivity
Title: "ISS Guided Meditation - Daily Practice"
Description: "Daily 15-minute guided meditation session for stress reduction and mood regulation."
Usage: #example

* status = #completed
* code = $psych-countermeasure-cs#guided-meditation "Guided meditation"
* subject = Reference(Patient/AstronautExample)
* performedDateTime = "2025-06-01T20:00:00Z"

// Reason: general stress management
* reasonCode = $behavioral-state-cs#coping-capacity "Coping capacity"

// Mission context
* extension[missionContext].valueReference = Reference(Encounter/ISS-Exp75-InFlight)
