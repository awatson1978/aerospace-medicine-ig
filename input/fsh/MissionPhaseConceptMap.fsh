// Concept map between the clinical MissionPhaseCS (used by the monitoring profiles)
// and the NASA Medical Requirements mission-phase timing codes (used by the MRID questionnaires).

Alias: $mission-phase = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/mission-phase-cs
Alias: $nasa-mission-phase = https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/nasa-mission-phase-cs

Instance: MissionPhaseToNASAMissionPhase
InstanceOf: ConceptMap
Title: "Mission Phase to NASA Mission Phase Timing"
Description: "Maps the clinical mission phases in MissionPhaseCS to the coarser NASA medical-requirements timing phases in NASAMissionPhaseCS. Pre-flight maps to preflight activity, all in-space phases map to inflight, and both post-flight phases map to postflight."
Usage: #definition
* url = "https://awatson1978.github.io/aerospace-medicine-ig/ConceptMap/MissionPhaseToNASAMissionPhase"
* name = "MissionPhaseToNASAMissionPhase"
* status = #active
* experimental = true
* date = "2026-09-02"
* publisher = "MITRE"
* sourceCanonical = "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/mission-phase-vs"
* targetCanonical = "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/nasa-mission-phase-vs"
* group[0].source = $mission-phase
* group[0].target = $nasa-mission-phase
* group[0].element[0].code = #pre-flight
* group[0].element[=].display = "Pre-flight"
* group[0].element[=].target[0].code = #preflight-activity
* group[0].element[=].target[=].display = "Preflight Activity"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #launch-ascent
* group[0].element[=].display = "Launch and Ascent"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #transit-outbound
* group[0].element[=].display = "Outbound Transit"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #orbital-ops
* group[0].element[=].display = "Orbital Operations"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #lunar-surface-ops
* group[0].element[=].display = "Lunar Surface Operations"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #mars-surface-ops
* group[0].element[=].display = "Mars Surface Operations"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #transit-return
* group[0].element[=].display = "Return Transit"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #entry-descent
* group[0].element[=].display = "Entry and Descent"
* group[0].element[=].target[0].code = #inflight
* group[0].element[=].target[=].display = "In-Flight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #post-flight-acute
* group[0].element[=].display = "Post-flight Acute"
* group[0].element[=].target[0].code = #postflight
* group[0].element[=].target[=].display = "Postflight"
* group[0].element[=].target[=].equivalence = #wider
* group[0].element[+].code = #post-flight-reconditioning
* group[0].element[=].display = "Post-flight Reconditioning"
* group[0].element[=].target[0].code = #postflight
* group[0].element[=].target[=].display = "Postflight"
* group[0].element[=].target[=].equivalence = #wider
