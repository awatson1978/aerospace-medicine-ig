// ============================================================================
// NASA Medical Requirements Integration Documents (MRID) Value Sets
// ============================================================================
// Value sets for binding to questionnaire items and profile elements
// ============================================================================

Alias: $nasa-sponsor = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mrid-sponsor-cs
Alias: $nasa-discipline = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mrid-discipline-cs
Alias: $nasa-phase = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mission-phase-cs
Alias: $nasa-offset = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-schedule-offset-cs
Alias: $nasa-hardware = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-medical-hardware-cs
Alias: $nasa-facility = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-medical-facility-cs
Alias: $nasa-archive = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-data-archive-cs
Alias: $nasa-roles = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-medical-roles-cs
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct


// ---------------------------------------------------------
// ValueSet: MRID Sponsor Organizations
// ---------------------------------------------------------
ValueSet: NASAMRIDSponsorVS
Id: nasa-mrid-sponsor-vs
Title: "NASA MRID Sponsor Organizations"
Description: "Value set for NASA MRID sponsor organizations."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-sponsor


// ---------------------------------------------------------
// ValueSet: MRID Medical Disciplines
// ---------------------------------------------------------
ValueSet: NASAMRIDDisciplineVS
Id: nasa-mrid-discipline-vs
Title: "NASA MRID Medical Disciplines"
Description: "Value set for NASA MRID medical disciplines."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-discipline


// ---------------------------------------------------------
// ValueSet: Mission Phases
// ---------------------------------------------------------
ValueSet: NASAMissionPhaseVS
Id: nasa-mission-phase-vs
Title: "NASA Mission Phases"
Description: "Value set for mission phase timing."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-phase


// ---------------------------------------------------------
// ValueSet: Schedule Offsets - Preflight
// ---------------------------------------------------------
ValueSet: NASAPreflightOffsetVS
Id: nasa-preflight-offset-vs
Title: "NASA Preflight Schedule Offsets"
Description: "Value set for L-minus preflight schedule offsets."

* ^status = #active
* ^experimental = false

* $nasa-offset#L-24m
* $nasa-offset#L-19m
* $nasa-offset#L-12m
* $nasa-offset#L-9m
* $nasa-offset#L-6m
* $nasa-offset#L-180d
* $nasa-offset#L-90d
* $nasa-offset#L-45d
* $nasa-offset#L-30d
* $nasa-offset#L-15d
* $nasa-offset#L-10d
* $nasa-offset#L-7d
* $nasa-offset#L-3d
* $nasa-offset#L-0


// ---------------------------------------------------------
// ValueSet: Schedule Offsets - Postflight
// ---------------------------------------------------------
ValueSet: NASAPostflightOffsetVS
Id: nasa-postflight-offset-vs
Title: "NASA Postflight Schedule Offsets"
Description: "Value set for R-plus postflight schedule offsets."

* ^status = #active
* ^experimental = false

* $nasa-offset#R-0
* $nasa-offset#R-3d
* $nasa-offset#R-5d
* $nasa-offset#R-7d
* $nasa-offset#R-14d
* $nasa-offset#R-30d
* $nasa-offset#R-45d
* $nasa-offset#R-60d


// ---------------------------------------------------------
// ValueSet: All Schedule Offsets
// ---------------------------------------------------------
ValueSet: NASAScheduleOffsetVS
Id: nasa-schedule-offset-vs
Title: "NASA Schedule Offsets"
Description: "Complete value set for all mission schedule offsets."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-offset


// ---------------------------------------------------------
// ValueSet: Radiation Monitoring Equipment
// ---------------------------------------------------------
ValueSet: NASARadiationEquipmentVS
Id: nasa-radiation-equipment-vs
Title: "NASA Radiation Monitoring Equipment"
Description: "Value set for radiation monitoring hardware."

* ^status = #active
* ^experimental = false

* $nasa-hardware#cpd
* $nasa-hardware#tepc
* $nasa-hardware#evcpds
* $nasa-hardware#iv-tepc
* $nasa-hardware#ram


// ---------------------------------------------------------
// ValueSet: Cardiovascular Equipment
// ---------------------------------------------------------
ValueSet: NASACardiovascularEquipmentVS
Id: nasa-cardiovascular-equipment-vs
Title: "NASA Cardiovascular Assessment Equipment"
Description: "Value set for cardiovascular assessment hardware."

* ^status = #active
* ^experimental = false

* $nasa-hardware#12-lead-ecg
* $nasa-hardware#marquette-case
* $nasa-hardware#blood-pressure-monitor


// ---------------------------------------------------------
// ValueSet: Exercise Equipment
// ---------------------------------------------------------
ValueSet: NASAExerciseEquipmentVS
Id: nasa-exercise-equipment-vs
Title: "NASA Exercise Equipment"
Description: "Value set for exercise and fitness assessment hardware."

* ^status = #active
* ^experimental = false

* $nasa-hardware#t2-treadmill
* $nasa-hardware#ared
* $nasa-hardware#cevis
* $nasa-hardware#quinton-treadmill
* $nasa-hardware#cybex-leg-press
* $nasa-hardware#hand-grip-dynamometer
* $nasa-hardware#sit-reach-bench
* $nasa-hardware#smith-bench


// ---------------------------------------------------------
// ValueSet: Medical Facilities
// ---------------------------------------------------------
ValueSet: NASAMedicalFacilityVS
Id: nasa-medical-facility-vs
Title: "NASA Medical Facilities"
Description: "Value set for medical testing facility locations."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-facility


// ---------------------------------------------------------
// ValueSet: Data Archive Systems
// ---------------------------------------------------------
ValueSet: NASADataArchiveVS
Id: nasa-data-archive-vs
Title: "NASA Medical Data Archive Systems"
Description: "Value set for data archive and delivery systems."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-archive


// ---------------------------------------------------------
// ValueSet: Medical Personnel Roles
// ---------------------------------------------------------
ValueSet: NASAMedicalRolesVS
Id: nasa-medical-roles-vs
Title: "NASA Medical Personnel Roles"
Description: "Value set for medical personnel roles."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-roles


// ---------------------------------------------------------
// ValueSet: All Medical Hardware
// ---------------------------------------------------------
ValueSet: NASAMedicalHardwareVS
Id: nasa-medical-hardware-vs
Title: "NASA Medical Hardware"
Description: "Complete value set for all NASA medical hardware."

* ^status = #active
* ^experimental = false

* include codes from system $nasa-hardware


// ---------------------------------------------------------
// ValueSet: ECG Interpretation (LOINC-based)
// ---------------------------------------------------------
ValueSet: ECGInterpretationVS
Id: ecg-interpretation-vs
Title: "ECG Interpretation Results"
Description: "Value set for ECG interpretation outcomes."

* ^status = #active
* ^experimental = false

* $sct#17621005 "Normal"
* $sct#263654008 "Abnormal"
* $sct#373067005 "No abnormality detected"
* $sct#442564008 "Evaluation not done"


// ---------------------------------------------------------
// ValueSet: Behavioral Readiness Assessment
// ---------------------------------------------------------
ValueSet: BehavioralReadinessVS
Id: behavioral-readiness-vs
Title: "Behavioral Readiness Assessment"
Description: "Value set for behavioral/psychological flight readiness outcomes."

* ^status = #active
* ^experimental = false

* $sct#17621005 "Normal"
* $sct#263654008 "Abnormal"
* $sct#260385009 "Negative"
* $sct#10828004 "Positive"


// ---------------------------------------------------------
// ValueSet: Fitness Assessment Results
// ---------------------------------------------------------
ValueSet: FitnessAssessmentResultVS
Id: fitness-assessment-result-vs
Title: "Fitness Assessment Results"
Description: "Value set for fitness test termination criteria and outcomes."

* ^status = #active
* ^experimental = false

* $sct#255594003 "Complete"
* $sct#397943006 "Planned"
* $sct#410524007 "Stopped before completion"
// Test termination reasons
* $sct#84229001 "Fatigue"
* $sct#22253000 "Pain"
* $sct#271870002 "Orthostatic hypotension"


// ---------------------------------------------------------
// ValueSet: ISS Crewmember Types
// ---------------------------------------------------------
ValueSet: ISSCrewmemberTypeVS
Id: iss-crewmember-type-vs
Title: "ISS Crewmember Types"
Description: "Value set for types of ISS crewmembers by agency."

* ^status = #active
* ^experimental = false

// Using custom codes for agency-specific crewmember designations
* $nasa-roles#crewmember "Crewmember"
