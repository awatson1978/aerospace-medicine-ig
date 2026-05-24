// Sleep Architecture & Torpor Research
// WP4: Abstract 53 (torpor and sleep in spaceflight)

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: SleepArchitectureCS
Id: sleep-architecture-cs
Title: "Sleep Architecture Code System"
Description: "Sleep architecture parameters measured during spaceflight sleep studies"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #total-sleep-time "Total Sleep Time (TST)" "Total time spent asleep during the recording period"
* #sleep-efficiency "Sleep Efficiency" "Percentage of time in bed spent asleep"
* #sleep-onset-latency "Sleep Onset Latency (SOL)" "Time from lights-off to first epoch of sleep"
* #waso "Wake After Sleep Onset (WASO)" "Total wake time after initial sleep onset"
* #rem-latency "REM Latency" "Time from sleep onset to first REM period"
* #n1-pct "N1 Sleep Percentage" "Percentage of total sleep time in stage N1 (light sleep)"
* #n2-pct "N2 Sleep Percentage" "Percentage of total sleep time in stage N2"
* #n3-pct "N3/SWS Sleep Percentage" "Percentage of total sleep time in stage N3 slow-wave sleep"
* #rem-pct "REM Sleep Percentage" "Percentage of total sleep time in REM sleep"

CodeSystem: ActigraphyMetricCS
Id: actigraphy-metric-cs
Title: "Actigraphy Metric Code System"
Description: "Metrics derived from wrist actigraphy for sleep-wake monitoring"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #activity-count "Activity Count" "Raw activity count from accelerometer"
* #rest-activity-ratio "Rest-Activity Ratio" "Ratio of rest to activity periods over 24 hours"
* #interdaily-stability "Interdaily Stability (IS)" "Consistency of rest-activity pattern across days"
* #intradaily-variability "Intradaily Variability (IV)" "Fragmentation of rest-activity pattern within days"

CodeSystem: CircadianAssessmentCS
Id: circadian-assessment-cs
Title: "Circadian Rhythm Assessment Code System"
Description: "Parameters for circadian rhythm assessment in spaceflight"
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #melatonin-onset "Dim Light Melatonin Onset (DLMO)" "Time of melatonin rise under dim light conditions"
* #core-temp-nadir "Core Body Temperature Nadir" "Timing of circadian core body temperature minimum"
* #circadian-period "Circadian Period (Tau)" "Endogenous circadian period length"
* #phase-shift "Phase Shift" "Magnitude and direction of circadian phase shift"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: SleepArchitectureVS
Id: sleep-architecture-vs
Title: "Sleep Architecture Value Set"
Description: "Sleep architecture parameters"
* ^experimental = false
* ^status = #active
* include codes from system SleepArchitectureCS

ValueSet: ActigraphyMetricVS
Id: actigraphy-metric-vs
Title: "Actigraphy Metric Value Set"
Description: "Actigraphy-derived metrics"
* ^experimental = false
* ^status = #active
* include codes from system ActigraphyMetricCS

ValueSet: CircadianAssessmentVS
Id: circadian-assessment-vs
Title: "Circadian Rhythm Assessment Value Set"
Description: "Circadian rhythm assessment parameters"
* ^experimental = false
* ^status = #active
* include codes from system CircadianAssessmentCS

// =====================================================
// PROFILES
// =====================================================

Profile: SpaceSleepStudy
Parent: Observation
Id: space-sleep-study
Title: "Space Sleep Study Observation"
Description: "Sleep architecture observation during spaceflight including PSG and actigraphy-derived measures"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $loinc#28634-4 "Sleep study"
* code ^short = "Sleep study panel"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only Period
* effectivePeriod ^short = "Sleep recording period"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    totalSleepTime 0..1 and
    sleepEfficiency 0..1 and
    sleepOnsetLatency 0..1 and
    waso 0..1 and
    remLatency 0..1 and
    n1Pct 0..1 and
    n2Pct 0..1 and
    n3Pct 0..1 and
    remPct 0..1

* component[totalSleepTime] ^short = "Total sleep time in minutes"
* component[totalSleepTime].code = SleepArchitectureCS#total-sleep-time "Total Sleep Time (TST)"
* component[totalSleepTime].value[x] only Quantity
* component[totalSleepTime].valueQuantity.system = $ucum
* component[totalSleepTime].valueQuantity.code = #min

* component[sleepEfficiency] ^short = "Sleep efficiency percentage"
* component[sleepEfficiency].code = SleepArchitectureCS#sleep-efficiency "Sleep Efficiency"
* component[sleepEfficiency].value[x] only Quantity
* component[sleepEfficiency].valueQuantity.system = $ucum
* component[sleepEfficiency].valueQuantity.code = #%

* component[sleepOnsetLatency] ^short = "Time to fall asleep in minutes"
* component[sleepOnsetLatency].code = SleepArchitectureCS#sleep-onset-latency "Sleep Onset Latency (SOL)"
* component[sleepOnsetLatency].value[x] only Quantity
* component[sleepOnsetLatency].valueQuantity.system = $ucum
* component[sleepOnsetLatency].valueQuantity.code = #min

* component[waso] ^short = "Wake time after sleep onset in minutes"
* component[waso].code = SleepArchitectureCS#waso "Wake After Sleep Onset (WASO)"
* component[waso].value[x] only Quantity
* component[waso].valueQuantity.system = $ucum
* component[waso].valueQuantity.code = #min

* component[remLatency] ^short = "Time to first REM period in minutes"
* component[remLatency].code = SleepArchitectureCS#rem-latency "REM Latency"
* component[remLatency].value[x] only Quantity
* component[remLatency].valueQuantity.system = $ucum
* component[remLatency].valueQuantity.code = #min

* component[n1Pct] ^short = "N1 light sleep percentage"
* component[n1Pct].code = SleepArchitectureCS#n1-pct "N1 Sleep Percentage"
* component[n1Pct].value[x] only Quantity
* component[n1Pct].valueQuantity.system = $ucum
* component[n1Pct].valueQuantity.code = #%

* component[n2Pct] ^short = "N2 sleep percentage"
* component[n2Pct].code = SleepArchitectureCS#n2-pct "N2 Sleep Percentage"
* component[n2Pct].value[x] only Quantity
* component[n2Pct].valueQuantity.system = $ucum
* component[n2Pct].valueQuantity.code = #%

* component[n3Pct] ^short = "N3/slow-wave sleep percentage"
* component[n3Pct].code = SleepArchitectureCS#n3-pct "N3/SWS Sleep Percentage"
* component[n3Pct].value[x] only Quantity
* component[n3Pct].valueQuantity.system = $ucum
* component[n3Pct].valueQuantity.code = #%

* component[remPct] ^short = "REM sleep percentage"
* component[remPct].code = SleepArchitectureCS#rem-pct "REM Sleep Percentage"
* component[remPct].value[x] only Quantity
* component[remPct].valueQuantity.system = $ucum
* component[remPct].valueQuantity.code = #%

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS and
    GravityContext named gravityContext 0..1 MS

Profile: ActigraphyObservation
Parent: Observation
Id: actigraphy-observation
Title: "Actigraphy Observation"
Description: "Wrist actigraphy-derived sleep-wake and activity metrics during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code from ActigraphyMetricVS (extensible)
* code ^short = "Actigraphy metric type"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only Period

* value[x] 0..1 MS
* value[x] only Quantity

* device 0..1 MS
* device ^short = "Wearable actigraph device"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    activityCount 0..1 and
    lightExposure 0..1 and
    restActivityRatio 0..1

* component[activityCount] ^short = "Raw activity count"
* component[activityCount].code = ActigraphyMetricCS#activity-count "Activity Count"
* component[activityCount].value[x] only integer

* component[lightExposure] ^short = "Light exposure level in lux"
* component[lightExposure].code = $loinc#87700-2 "Light exposure level"
* component[lightExposure].value[x] only Quantity
* component[lightExposure].valueQuantity.system = $ucum
* component[lightExposure].valueQuantity.code = #[lx]

* component[restActivityRatio] ^short = "Rest to activity ratio"
* component[restActivityRatio].code = ActigraphyMetricCS#rest-activity-ratio "Rest-Activity Ratio"
* component[restActivityRatio].value[x] only Quantity
* component[restActivityRatio].valueQuantity.system = $ucum
* component[restActivityRatio].valueQuantity.code = #1

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: CircadianRhythmAssessment
Parent: Observation
Id: circadian-rhythm-assessment
Title: "Circadian Rhythm Assessment"
Description: "Assessment of circadian rhythm parameters during spaceflight"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code = $sct#30920001 "Circadian rhythm"
* code ^short = "Circadian rhythm assessment"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    melatoninOnset 0..1 and
    coreTempNadir 0..1 and
    circadianPeriod 0..1 and
    phaseShift 0..1

* component[melatoninOnset] ^short = "Dim light melatonin onset time"
* component[melatoninOnset].code = CircadianAssessmentCS#melatonin-onset "Dim Light Melatonin Onset (DLMO)"
* component[melatoninOnset].value[x] only time

* component[coreTempNadir] ^short = "Timing of core body temperature minimum"
* component[coreTempNadir].code = CircadianAssessmentCS#core-temp-nadir "Core Body Temperature Nadir"
* component[coreTempNadir].value[x] only time

* component[circadianPeriod] ^short = "Endogenous circadian period in hours"
* component[circadianPeriod].code = CircadianAssessmentCS#circadian-period "Circadian Period (Tau)"
* component[circadianPeriod].value[x] only Quantity
* component[circadianPeriod].valueQuantity.system = $ucum
* component[circadianPeriod].valueQuantity.code = #h

* component[phaseShift] ^short = "Phase shift in hours (positive = delay, negative = advance)"
* component[phaseShift].code = CircadianAssessmentCS#phase-shift "Phase Shift"
* component[phaseShift].value[x] only Quantity
* component[phaseShift].valueQuantity.system = $ucum
* component[phaseShift].valueQuantity.code = #h

* extension contains
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS
