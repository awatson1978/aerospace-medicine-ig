// Cardiovascular Countermeasures in Microgravity
// WP19: 87th ESA Parabolic Flight Campaign (2025); NASA HRP Cardiovascular Countermeasures

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: MicrogravityCountermeasureCS
Id: microgravity-countermeasure-cs
Title: "Microgravity Countermeasure Code System"
Description: "Countermeasure interventions for microgravity-induced cardiovascular and fluid shift effects"
* ^count = 5
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #lbnp "Lower Body Negative Pressure" "Application of sub-atmospheric pressure to the lower body to counteract cephalad fluid shift"
* #venous-flow-monitoring "Venous Flow Monitoring" "Ultrasound-based monitoring of venous flow dynamics including IJV assessment"
* #fluid-shift-mitigation "Fluid Shift Mitigation" "Interventions to reduce headward fluid redistribution in microgravity"
* #anti-sans-protocol "Anti-SANS Protocol" "Protocol designed to reduce risk of Spaceflight-Associated Neuro-Ocular Syndrome"
* #venous-thrombosis-prevention "Venous Thrombosis Prevention" "Measures to prevent venous stasis and thrombosis during spaceflight"

CodeSystem: IJVFlowGradeCS
Id: ijv-flow-grade-cs
Title: "IJV Flow Grade Code System"
Description: "Internal jugular vein flow grading system based on spectral pulse-wave Doppler assessment"
* ^count = 4
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #grade-1 "Grade 1 - Forward Flow" "Continuous forward flow in the internal jugular vein (FDI ~ 1.0)"
* #grade-2 "Grade 2 - Intermittent No-Flow" "Forward flow with intermittent periods of no flow (FDI ~ 0.65)"
* #grade-3 "Grade 3 - Stagnant Flow" "Stagnant flow with minimal or no net movement (FDI ~ 0.03)"
* #grade-4 "Grade 4 - Retrograde Flow" "Reversed flow direction in the internal jugular vein (FDI ~ -0.5)"

CodeSystem: ParabolicFlightPhaseCS
Id: parabolic-flight-phase-cs
Title: "Parabolic Flight Phase Code System"
Description: "Phases of a parabolic flight maneuver used in microgravity research"
* ^count = 4
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #steady-1g "Steady 1g" "Level flight at standard gravity before or between parabolas"
* #pull-up "Pull-Up" "Hypergravity phase during aircraft pitch-up (1.5-1.8g)"
* #microgravity "Microgravity" "Free-fall phase at approximately 0g during parabolic arc"
* #pull-out "Pull-Out" "Hypergravity recovery phase during aircraft pitch-down (1.5-1.8g)"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: MicrogravityCountermeasureVS
Id: microgravity-countermeasure-vs
Title: "Microgravity Countermeasure Value Set"
Description: "Countermeasure interventions for microgravity cardiovascular effects"
* ^experimental = true
* ^status = #active
* include codes from system MicrogravityCountermeasureCS

ValueSet: IJVFlowGradeVS
Id: ijv-flow-grade-vs
Title: "IJV Flow Grade Value Set"
Description: "Internal jugular vein flow grades"
* ^experimental = true
* ^status = #active
* include codes from system IJVFlowGradeCS

ValueSet: ParabolicFlightPhaseVS
Id: parabolic-flight-phase-vs
Title: "Parabolic Flight Phase Value Set"
Description: "Phases of a parabolic flight maneuver"
* ^experimental = true
* ^status = #active
* include codes from system ParabolicFlightPhaseCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: LBNPPressureLevel
Id: lbnp-pressure-level
Title: "LBNP Pressure Level"
Description: "Applied lower body negative pressure level in mmHg (negative values: -10 to -50 mmHg)"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Procedure"
* ^context[1].type = #element
* ^context[1].expression = "Observation"
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #mm[Hg]
* valueQuantity ^short = "LBNP pressure in mmHg (negative values)"

// =====================================================
// PROFILES — Observations
// =====================================================

Profile: InternalJugularVeinFlowObservation
Parent: Observation
Id: internal-jugular-vein-flow-observation
Title: "Internal Jugular Vein Flow Observation"
Description: "IJV flow grade and Flow Directionality Index assessment via spectral pulse-wave Doppler"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code ^short = "IJV flow assessment"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 0..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from IJVFlowGradeVS (extensible)
* valueCodeableConcept ^short = "IJV flow grade (1-4)"

* bodySite 0..1 MS
* bodySite ^short = "Left or right internal jugular vein"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    fdiRatio 0..1 MS

* component[fdiRatio] ^short = "Flow Directionality Index ratio"
* component[fdiRatio].code = VenousFlowMetricCS#fdi-ratio "Flow Directionality Index"
* component[fdiRatio].value[x] only Quantity
* component[fdiRatio].valueQuantity.system = $ucum
* component[fdiRatio].valueQuantity.code = #{ratio}

* extension contains
    GravityContext named gravityContext 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS and
    LBNPPressureLevel named lbnpPressureLevel 0..1 MS

Profile: InternalJugularVeinPressureObservation
Parent: Observation
Id: internal-jugular-vein-pressure-observation
Title: "Internal Jugular Vein Pressure Observation"
Description: "IJV pressure measurement using ultrasound vessel wall near-closure method"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code ^short = "IJV pressure measurement"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 0..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #mm[Hg]
* valueQuantity ^short = "IJV pressure in mmHg"

* bodySite 0..1 MS
* bodySite ^short = "Left or right internal jugular vein"

* extension contains
    GravityContext named gravityContext 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

Profile: InternalJugularVeinAreaObservation
Parent: Observation
Id: internal-jugular-vein-area-observation
Title: "Internal Jugular Vein Area Observation"
Description: "IJV cross-sectional area measured by ultrasound at end-diastole"
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code ^short = "IJV cross-sectional area measurement"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 0..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #cm2
* valueQuantity ^short = "IJV cross-sectional area in cm2"

* bodySite 0..1 MS
* bodySite ^short = "Left or right internal jugular vein"

* extension contains
    GravityContext named gravityContext 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

CodeSystem: VenousFlowMetricCS
Id: venous-flow-metric-cs
Title: "Venous Flow Metric Code System"
Description: "Component codes for internal jugular vein flow directionality measurements"
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* ^count = 5
* #forward-flow-time "Forward Flow Time" "Duration of antegrade flow within the sample window (s)"
* #retrograde-flow-time "Retrograde Flow Time" "Duration of retrograde flow within the sample window (s)"
* #zero-flow-time "Zero Flow Time" "Duration of stagnant flow within the sample window (s)"
* #total-sample-time "Total Sample Time" "Total duration of the Doppler sample window (s)"
* #fdi-ratio "Flow Directionality Index" "FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total)"

Profile: FlowDirectionalityIndexObservation
Parent: Observation
Id: flow-directionality-index-observation
Title: "Flow Directionality Index Observation"
Description: "FDI calculation with component times: FDI = ((t_forward - t_retrograde) / T_total) * (1 - t_zero / T_total). Range [-1, 1]."
* ^version = "1.0.0"
* ^status = #active

* status MS
* category 1..* MS

* code 1..1 MS
* code ^short = "Flow Directionality Index"

* subject 1..1 MS
* subject only Reference(Astronaut)

* effective[x] 1..1 MS
* effective[x] only dateTime or Period

* value[x] 0..1 MS
* value[x] only Quantity
* valueQuantity.system = $ucum
* valueQuantity.code = #{ratio}
* valueQuantity ^short = "FDI ratio value (-1 to 1)"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    forwardFlowTime 0..1 MS and
    retrogradeFlowTime 0..1 MS and
    zeroFlowTime 0..1 MS and
    totalSampleTime 0..1 MS and
    fdiRatio 0..1 MS

* component[forwardFlowTime] ^short = "Duration of forward flow"
* component[forwardFlowTime].code = VenousFlowMetricCS#forward-flow-time "Forward Flow Time"
* component[forwardFlowTime].value[x] only Quantity
* component[forwardFlowTime].valueQuantity.system = $ucum
* component[forwardFlowTime].valueQuantity.code = #s

* component[retrogradeFlowTime] ^short = "Duration of retrograde flow"
* component[retrogradeFlowTime].code = VenousFlowMetricCS#retrograde-flow-time "Retrograde Flow Time"
* component[retrogradeFlowTime].value[x] only Quantity
* component[retrogradeFlowTime].valueQuantity.system = $ucum
* component[retrogradeFlowTime].valueQuantity.code = #s

* component[zeroFlowTime] ^short = "Duration of zero/stagnant flow"
* component[zeroFlowTime].code = VenousFlowMetricCS#zero-flow-time "Zero Flow Time"
* component[zeroFlowTime].value[x] only Quantity
* component[zeroFlowTime].valueQuantity.system = $ucum
* component[zeroFlowTime].valueQuantity.code = #s

* component[totalSampleTime] ^short = "Total Doppler sample time"
* component[totalSampleTime].code = VenousFlowMetricCS#total-sample-time "Total Sample Time"
* component[totalSampleTime].value[x] only Quantity
* component[totalSampleTime].valueQuantity.system = $ucum
* component[totalSampleTime].valueQuantity.code = #s

* component[fdiRatio] ^short = "Calculated FDI ratio"
* component[fdiRatio].code = VenousFlowMetricCS#fdi-ratio "FDI Ratio"
* component[fdiRatio].value[x] only Quantity
* component[fdiRatio].valueQuantity.system = $ucum
* component[fdiRatio].valueQuantity.code = #{ratio}

* extension contains
    GravityContext named gravityContext 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    FlightDay named flightDay 0..1 MS

// =====================================================
// PROFILES — Procedures
// =====================================================

Profile: LowerBodyNegativePressureProcedure
Parent: Procedure
Id: lower-body-negative-pressure-procedure
Title: "Lower Body Negative Pressure Procedure"
Description: "LBNP session applying sub-atmospheric pressure to the lower body as a countermeasure for cephalad fluid shift"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from MicrogravityCountermeasureVS (extensible)
* code ^short = "Countermeasure type (LBNP)"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* usedReference 0..* MS
* usedReference ^short = "LBNP device used"

* note 0..* MS
* note ^short = "Session notes including pressure protocol"

* extension contains
    GravityContext named gravityContext 0..1 MS and
    MissionContext named missionContext 0..1 MS and
    LBNPPressureLevel named lbnpPressureLevel 0..1 MS

Profile: ParabolicFlightExposure
Parent: Procedure
Id: parabolic-flight-exposure
Title: "Parabolic Flight Exposure"
Description: "Parabolic flight session providing brief microgravity exposure for research"
* ^version = "1.0.0"
* ^status = #active

* status MS

* code 1..1 MS
* code from ParabolicFlightPhaseVS (extensible)
* code ^short = "Parabolic flight phase"

* subject 1..1 MS
* subject only Reference(Astronaut)

* performed[x] 0..1 MS
* performed[x] only dateTime or Period

* note 0..* MS
* note ^short = "Flight details including parabola count and campaign identifier"

* extension contains
    GravityContext named gravityContext 0..1 MS

// =====================================================
// PROFILES — Devices
// =====================================================

Profile: UltrasoundMonitoringDevice
Parent: Device
Id: ultrasound-monitoring-device
Title: "Ultrasound Monitoring Device"
Description: "Point-of-care ultrasound device for IJV imaging (e.g., Butterfly iQ3)"
* ^version = "1.0.0"
* ^status = #active

* type 0..1 MS
* type ^short = "Ultrasound device type"

* patient 0..1 MS
* patient only Reference(Astronaut)

* status MS
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* deviceName 0..* MS

Profile: LBNPCountermeasureSystem
Parent: Device
Id: lbnp-countermeasure-system
Title: "LBNP Countermeasure System"
Description: "Lower Body Negative Pressure device with configurable pressure range"
* ^version = "1.0.0"
* ^status = #active

* type 0..1 MS
* type ^short = "LBNP device type"

* patient 0..1 MS
* patient only Reference(Astronaut)

* status MS
* manufacturer 0..1 MS
* modelNumber 0..1 MS
* serialNumber 0..1 MS
* deviceName 0..* MS

* property 0..* MS
* property ^short = "Device properties including pressure range"

* extension contains
    MissionContext named missionContext 0..1 MS

// =====================================================
// EXAMPLES
// =====================================================

Instance: LBNP-Chamber-001
InstanceOf: LBNPCountermeasureSystem
Title: "LBNP Chamber Device"
Description: "Lower body negative pressure chamber with -50 mmHg capability for parabolic flight campaign"
Usage: #example
* insert SyntheticExample

* type = $sct#706767009 "Suction device"
* type.text = "Lower Body Negative Pressure Chamber"
* deviceName.name = "ESA LBNP Chamber #LBNP-001"
* deviceName.type = #user-friendly-name
* manufacturer = "ESA Life Sciences"
* modelNumber = "LBNP-PFC-2025"
* serialNumber = "LBNP-ESA-2025-001"
* status = #active
* property[0].type = $sct#250837005 "Negative pressure"
* property[0].type.text = "Maximum Negative Pressure"
* property[0].valueQuantity[0].value = -50
* property[0].valueQuantity[0].unit = "mmHg"
* property[0].valueQuantity[0].system = $ucum
* property[0].valueQuantity[0].code = #mm[Hg]

Instance: Butterfly-iQ3-001
InstanceOf: UltrasoundMonitoringDevice
Title: "Butterfly iQ3 Ultrasound"
Description: "Butterfly iQ3 point-of-care ultrasound for IJV cross-sectional area and flow assessment"
Usage: #example
* insert SyntheticExample

* type = $sct#43252007 "Ultrasound device"
* type.text = "Point-of-Care Ultrasound"
* deviceName.name = "Butterfly iQ3 #US-001"
* deviceName.type = #user-friendly-name
* manufacturer = "Butterfly Network"
* modelNumber = "iQ3"
* serialNumber = "BF-IQ3-2025-001"
* status = #active

Instance: LBNP-Session-Microgravity-001
InstanceOf: LowerBodyNegativePressureProcedure
Title: "LBNP Session at -30 mmHg During Microgravity"
Description: "LBNP procedure at -30 mmHg during microgravity phase of 87th ESA Parabolic Flight Campaign"
Usage: #example
* insert SyntheticExample

* status = #completed
* code = MicrogravityCountermeasureCS#lbnp "Lower Body Negative Pressure"
* subject = Reference(Patient/ExampleAstronaut)
* performedDateTime = "2025-09-05T10:30:00Z"
* usedReference = Reference(Device/LBNP-Chamber-001)
* note.text = "LBNP at -30 mmHg during 0g phase, parabola set 3 of 6, 87th ESA PFC"
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"
* extension[lbnpPressureLevel].valueQuantity.value = -30
* extension[lbnpPressureLevel].valueQuantity.unit = "mmHg"
* extension[lbnpPressureLevel].valueQuantity.system = $ucum
* extension[lbnpPressureLevel].valueQuantity.code = #mm[Hg]

Instance: IJV-Flow-During-LBNP-001
InstanceOf: InternalJugularVeinFlowObservation
Title: "IJV Flow During LBNP (FDI = 0.85)"
Description: "Internal jugular vein flow observation with FDI of 0.85 during LBNP at -30 mmHg"
Usage: #example
* insert SyntheticExample

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $loinc#11042-7 "Flow velocity Doppler.max Blood vessel"
* code.text = "IJV Flow Assessment"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2025-09-05T10:32:00Z"
* valueCodeableConcept = IJVFlowGradeCS#grade-1 "Grade 1 - Forward Flow"
* bodySite = $sct#244403000 "Internal jugular vein structure"
* bodySite.text = "Right Internal Jugular Vein"
* component[fdiRatio].code = VenousFlowMetricCS#fdi-ratio "Flow Directionality Index"
* component[fdiRatio].valueQuantity.value = 0.85
* component[fdiRatio].valueQuantity.unit = "ratio"
* component[fdiRatio].valueQuantity.system = $ucum
* component[fdiRatio].valueQuantity.code = #{ratio}
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"
* extension[lbnpPressureLevel].valueQuantity.value = -30
* extension[lbnpPressureLevel].valueQuantity.unit = "mmHg"
* extension[lbnpPressureLevel].valueQuantity.system = $ucum
* extension[lbnpPressureLevel].valueQuantity.code = #mm[Hg]

Instance: FDI-Components-001
InstanceOf: FlowDirectionalityIndexObservation
Title: "FDI Observation with All Components"
Description: "Flow Directionality Index observation with all five component measurements"
Usage: #example
* insert SyntheticExample

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam "Exam"
* code = $loinc#11042-7 "Flow velocity Doppler.max Blood vessel"
* code.text = "Flow Directionality Index"
* subject = Reference(Patient/ExampleAstronaut)
* effectiveDateTime = "2025-09-05T10:33:00Z"
* valueQuantity.value = 0.85
* valueQuantity.unit = "ratio"
* valueQuantity.system = $ucum
* valueQuantity.code = #{ratio}
* component[forwardFlowTime].code = VenousFlowMetricCS#forward-flow-time "Forward Flow Time"
* component[forwardFlowTime].valueQuantity.value = 4.2
* component[forwardFlowTime].valueQuantity.unit = "s"
* component[forwardFlowTime].valueQuantity.system = $ucum
* component[forwardFlowTime].valueQuantity.code = #s
* component[retrogradeFlowTime].code = VenousFlowMetricCS#retrograde-flow-time "Retrograde Flow Time"
* component[retrogradeFlowTime].valueQuantity.value = 0.3
* component[retrogradeFlowTime].valueQuantity.unit = "s"
* component[retrogradeFlowTime].valueQuantity.system = $ucum
* component[retrogradeFlowTime].valueQuantity.code = #s
* component[zeroFlowTime].code = VenousFlowMetricCS#zero-flow-time "Zero Flow Time"
* component[zeroFlowTime].valueQuantity.value = 0.5
* component[zeroFlowTime].valueQuantity.unit = "s"
* component[zeroFlowTime].valueQuantity.system = $ucum
* component[zeroFlowTime].valueQuantity.code = #s
* component[totalSampleTime].code = VenousFlowMetricCS#total-sample-time "Total Sample Time"
* component[totalSampleTime].valueQuantity.value = 5.0
* component[totalSampleTime].valueQuantity.unit = "s"
* component[totalSampleTime].valueQuantity.system = $ucum
* component[totalSampleTime].valueQuantity.code = #s
* component[fdiRatio].code = VenousFlowMetricCS#fdi-ratio "FDI Ratio"
* component[fdiRatio].valueQuantity.value = 0.85
* component[fdiRatio].valueQuantity.unit = "ratio"
* component[fdiRatio].valueQuantity.system = $ucum
* component[fdiRatio].valueQuantity.code = #{ratio}
* extension[gravityContext].valueCodeableConcept = GravityContextCS#microgravity "Microgravity"
