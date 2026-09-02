// Behavioral health code systems (mental health monitoring).
// See MentalHealthExamples.fsh and Observation.fsh for the profiles that bind them.

// ---------------------------------------------------------
// CodeSystem: Aerospace Behavioral State
// ---------------------------------------------------------
CodeSystem: AerospaceBehavioralStateCS
Id: aerospace-behavioral-state-cs
Title: "Aerospace Behavioral State Code System"
Description: "Codes describing behavioral and psychological state parameters in aerospace missions."
* ^status = #active
* ^caseSensitive = true
* ^experimental = true
* ^content = #complete
* ^count = 9

* #mood-level "Mood level"
    "Numeric or ordinal scoring of current mood (e.g., -3 to +3)."
* #anxiety-level "Anxiety level"
    "Numeric or ordinal scoring of current anxiety state."
* #irritability-score "Irritability score"
    "Behavioral metric representing irritability and frustration."
* #conflict-index "Conflict index"
    "Estimated probability or degree of interpersonal conflict risk."
* #coping-capacity "Coping capacity"
    "Perceived ability to cope with mission demands and stressors."
* #cumulative-stress "Cumulative stress burden"
    "Integrated measure of stress load over a defined mission interval."
* #social-connectedness "Social connectedness"
    "Degree of perceived social support and connectedness with crew and ground."
* #sleep-quality "Sleep quality"
    "Subjective or composite index of sleep quality."
* #cognitive-readiness "Cognitive readiness"
    "Readiness for complex decision-making and EVA or critical operations."

// ---------------------------------------------------------
// CodeSystem: Behavioral Biomarker
// ---------------------------------------------------------
CodeSystem: BehavioralBiomarkerCS
Id: behavioral-biomarker-cs
Title: "Behavioral Biomarker Code System"
Description: "Codes for physiologic and digital biomarkers related to behavioral health and stress."
* ^status = #active
* ^caseSensitive = true
* ^experimental = true
* ^content = #complete
* ^count = 5

* #sleep-efficiency-pct "Sleep efficiency (%)"
    "Percentage of time in bed spent asleep."
* #awakenings-count "Nocturnal awakenings (count)"
    "Number of awakenings during sleep period."
* #speech-stress-index "Speech stress index"
    "Derived metric from speech prosody indicating stress level."
* #activity-level "Activity level"
    "Gross motor activity level from accelerometry."
* #reaction-time-ms "Reaction time (ms)"
    "Reaction time in milliseconds from vigilance or cognitive tests."

// ---------------------------------------------------------
// CodeSystem: Isolation Syndrome Factor
// ---------------------------------------------------------
CodeSystem: IsolationSyndromeFactorCS
Id: isolation-syndrome-factor-cs
Title: "Isolation Syndrome Factor Code System"
Description: "Factors contributing to isolation, confinement, and psychosocial risk in aerospace missions."
* ^status = #active
* ^caseSensitive = true
* ^experimental = true
* ^content = #complete
* ^count = 8

* #confinement "Confinement"
    "Small volume, limited privacy, constrained movement."
* #sensory-monotony "Sensory monotony"
    "Limited visual, auditory, and olfactory variety."
* #interpersonal-friction "Interpersonal friction"
    "Crew tension, conflict, or poor communication."
* #role-ambiguity "Role ambiguity"
    "Unclear or conflicting roles and responsibilities."
* #circadian-drift "Circadian drift"
    "Misalignment of sleep-wake cycle with operational schedule."
* #communications-latency "Communications latency"
    "Long delays to ground communication reducing perceived support."
* #emergency-history "Emergency history"
    "Recent anomalies or near-miss events increasing stress load."
* #workload-imbalance "Workload imbalance"
    "Unequal distribution of work or perceived unfairness."

// ---------------------------------------------------------
// CodeSystem: Psychological Countermeasure
// ---------------------------------------------------------
CodeSystem: PsychologicalCountermeasureCS
Id: psychological-countermeasure-cs
Title: "Psychological Countermeasure Code System"
Description: "Codes for psychological countermeasure interventions in aerospace missions."
* ^status = #active
* ^caseSensitive = true
* ^experimental = true
* ^content = #complete
* ^count = 10

* #cbt-session "Cognitive behavioral therapy session"
    "Formal CBT or counseling session (in-person or telemedicine)."
* #supportive-counseling "Supportive counseling"
    "Non-directive supportive conversation with behavioral health personnel."
* #exercise-countermeasure "Exercise countermeasure"
    "Physical exercise targeting stress reduction or mood improvement."
* #bright-light-therapy "Bright light therapy"
    "Timed bright light exposure to stabilize circadian rhythms."
* #guided-meditation "Guided meditation"
    "Structured mindfulness or meditation session."
* #crew-debrief "Crew debrief"
    "Guided crew-level debrief to process events and conflict."
* #sleep-hygiene-coaching "Sleep hygiene coaching"
    "Behavioral intervention to improve sleep habits."
* #pharmacologic-anxiolytic "Pharmacologic anxiolytic"
    "Medication used to reduce acute anxiety."
* #pharmacologic-sedative "Pharmacologic sedative"
    "Medication used to promote sleep."
* #vr-relaxation "VR relaxation protocol"
    "Immersive virtual environment for relaxation or mood support."


