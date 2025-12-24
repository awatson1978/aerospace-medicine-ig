// Exercise and Fitness Code Systems and Value Sets
// Space-specific exercise modalities and performance metrics

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SpaceExerciseModalityCS
Id: space-exercise-modality-cs
Title: "Space Exercise Modality Code System"
Description: "Spaceflight-specific exercise modalities used in microgravity and partial gravity environments (e.g., ISS treadmill, ARED resistive training, artificial gravity)."
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-exercise-modality-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #treadmill "Treadmill running in microgravity"
    "Running or walking on a vibration-isolated treadmill with harness-based body-weight simulation."
* #cycle-ergometer "Cycle ergometer (CEVIS or equivalent)"
    "Seated or supine cycling on a vibration-isolated ergometer with adjustable resistance."
* #ared-resistive "ARED resistive exercise"
    "Heavy-load resistive exercise using a flywheel or vacuum-based Advanced Resistive Exercise Device."
* #resistive-squat "Resistive squats"
    "Squat movements using ARED or equivalent resistive hardware."
* #resistive-deadlift "Resistive deadlifts"
    "Deadlift movements using ARED or equivalent resistive hardware."
* #resistive-calfraise "Resistive calf raises"
    "Calf-raise movements using ARED or equivalent resistive hardware."
* #ag-centrifuge "Artificial gravity centrifuge exercise"
    "Exercise performed in a short-radius or long-radius centrifuge providing partial or full gravity."
* #elastic-band "Elastic band exercise"
    "Portable elastic-band or bungee-based resistive training."
* #body-weight-sim "Body-weight simulation harness"
    "Exercise performed with harness-based body-weight simulation, typically on a treadmill."

CodeSystem: SpacePerformanceMetricCS
Id: space-performance-metric-cs
Title: "Space Exercise Performance Metric Code System"
Description: "Key performance metrics for space-based exercise sessions (e.g., power output, VO2 surrogate, effective ground reaction force)."
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/space-performance-metric-cs"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false

* #mean-power "Mean power output"
    "Average mechanical power output over the activity interval."
* #peak-power "Peak power output"
    "Maximum mechanical power achieved during the activity."
* #simulated-bw "Simulated body weight"
    "Effective body-weight load, typically as a fraction of 1-g weight, during harness or artificial gravity exercise."
* #total-work "Total mechanical work"
    "Total work performed across the activity interval."
* #vo2-surrogate "VO2 surrogate index"
    "Computed surrogate for oxygen uptake based on HR, power, and subject parameters."
* #recovery-hr "1-minute recovery heart rate"
    "Heart rate recorded one minute after cessation of exercise."
* #hr-reserve-percent "Percentage heart rate reserve"
    "Intensity expressed as % of heart rate reserve."
* #ground-reaction-force "Ground reaction force"
    "Effective ground reaction force during treadmill exercise with harness loading."
* #resistance-level "Resistance level setting"
    "Resistance setting on exercise equipment."
* #cadence "Exercise cadence"
    "Steps per minute (treadmill) or revolutions per minute (cycle ergometer)."

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SpaceExerciseModalityVS
Id: space-exercise-modality-vs
Title: "Space Exercise Modality Value Set"
Description: "Permitted space exercise modalities, derived from the Space Exercise Modality Code System."
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/space-exercise-modality-vs"
* ^status = #active
* ^experimental = false

* include codes from system SpaceExerciseModalityCS
