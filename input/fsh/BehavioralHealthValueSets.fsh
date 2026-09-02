// Behavioral health value sets (mental health monitoring).

Alias: $loinc = http://loinc.org

// ---------------------------------------------------------
// ValueSet: Behavioral Health Metrics
// ---------------------------------------------------------
ValueSet: BehavioralHealthMetricsVS
Id: behavioral-health-metrics-vs
Title: "Behavioral Health Metrics Value Set"
Description: "Key behavioral health state metrics used in aerospace behavioral health monitoring."
* ^status = #active
* ^experimental = true

* AerospaceBehavioralStateCS#mood-level
* AerospaceBehavioralStateCS#anxiety-level
* AerospaceBehavioralStateCS#irritability-score
* AerospaceBehavioralStateCS#sleep-quality
* AerospaceBehavioralStateCS#cognitive-readiness

// ---------------------------------------------------------
// ValueSet: Cognitive Performance Indicators
// ---------------------------------------------------------
ValueSet: CognitivePerformanceIndicatorsVS
Id: cognitive-performance-indicators-vs
Title: "Cognitive Performance Indicators Value Set"
Description: "Cognitive and vigilance performance indicators relevant to operational readiness."
* ^status = #active
* ^experimental = true

* BehavioralBiomarkerCS#reaction-time-ms
* $loinc#80404-7 "R-R interval.standard deviation (Heart rate variability)"
* BehavioralBiomarkerCS#activity-level
* AerospaceBehavioralStateCS#cognitive-readiness

// ---------------------------------------------------------
// ValueSet: Stress Countermeasures
// ---------------------------------------------------------
ValueSet: StressCountermeasuresVS
Id: stress-countermeasures-vs
Title: "Stress Countermeasures Value Set"
Description: "Standardized set of psychological countermeasures used to mitigate stress and support mental health."
* ^status = #active
* ^experimental = true

* include codes from system PsychologicalCountermeasureCS

// ---------------------------------------------------------
// ValueSet: Isolation Syndrome Factors
// ---------------------------------------------------------
ValueSet: IsolationSyndromeFactorsVS
Id: isolation-syndrome-factors-vs
Title: "Isolation Syndrome Factors Value Set"
Description: "Risk factors related to isolation and confinement that affect behavioral health."
* ^status = #active
* ^experimental = true

* include codes from system IsolationSyndromeFactorCS
