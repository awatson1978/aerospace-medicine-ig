// Shared Extensions for Aerospace Medicine IG
// WP7: Foundation extensions used across multiple clinical domain profiles

Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEMS
// =====================================================

CodeSystem: GravityContextCS
Id: gravity-context-cs
Title: "Gravity Context Code System"
Description: "Gravitational environment contexts for observations and procedures"
* ^count = 7
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #earth-1g "Earth Standard Gravity (1g)" "Standard Earth gravity at approximately 9.81 m/s²"
* #microgravity "Microgravity" "Near-weightless conditions in orbital free-fall, typically 10⁻³ to 10⁻⁶ g"
* #lunar-gravity "Lunar Gravity (1/6g)" "Lunar surface gravity at approximately 1.62 m/s²"
* #mars-gravity "Mars Gravity (3/8g)" "Mars surface gravity at approximately 3.72 m/s²"
* #partial-gravity "Partial Gravity" "Partial gravity environment not otherwise specified"
* #hypergravity "Hypergravity" "Greater than 1g, as experienced during launch, re-entry, or centrifuge"
* #simulated-microgravity-hdt "Simulated Microgravity (Head-Down Tilt)" "Head-down tilt bed rest used to simulate microgravity effects"

CodeSystem: MissionPhaseCS
Id: mission-phase-cs
Title: "Mission Phase Code System"
Description: "Phases of a space mission for temporal context of clinical observations"
* ^count = 10
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^status = #active
* #pre-flight "Pre-flight" "Period before launch including training and medical baseline"
* #launch-ascent "Launch and Ascent" "From liftoff through orbital insertion or trans-lunar injection"
* #transit-outbound "Outbound Transit" "Transit from Earth orbit to destination (Moon, Mars, etc.)"
* #orbital-ops "Orbital Operations" "Operations while in orbit around Earth or another body"
* #lunar-surface-ops "Lunar Surface Operations" "Operations on the lunar surface including EVAs"
* #mars-surface-ops "Mars Surface Operations" "Operations on the Mars surface"
* #transit-return "Return Transit" "Transit from destination back toward Earth"
* #entry-descent "Entry and Descent" "Atmospheric re-entry and landing"
* #post-flight-acute "Post-flight Acute" "Immediate post-landing period, typically R+0 to R+3 days"
* #post-flight-reconditioning "Post-flight Reconditioning" "Extended reconditioning period, typically R+3 days to R+45 days"

// =====================================================
// VALUE SETS
// =====================================================

ValueSet: GravityContextVS
Id: gravity-context-vs
Title: "Gravity Context Value Set"
Description: "Gravitational environments for clinical context"
* ^experimental = true
* ^status = #active
* include codes from system GravityContextCS

ValueSet: MissionPhaseVS
Id: mission-phase-vs
Title: "Mission Phase Value Set"
Description: "Phases of a space mission"
* ^experimental = true
* ^status = #active
* include codes from system MissionPhaseCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: GravityContext
Id: gravity-context
Title: "Gravity Context"
Description: "Gravitational environment in which the observation, condition, or procedure occurred"
Context: Observation, Condition, Procedure, MedicationAdministration, CarePlan, DeviceDefinition, Specimen, Device
* ^status = #active
* value[x] only CodeableConcept
* valueCodeableConcept from GravityContextVS (extensible)

Extension: MissionPhase
Id: mission-phase
Title: "Mission Phase"
Description: "Phase of the space mission during which the clinical event occurred"
Context: Observation, Procedure, Condition, MedicationAdministration, CarePlan, RiskAssessment
* ^status = #active
* value[x] only CodeableConcept
* valueCodeableConcept from MissionPhaseVS (extensible)

Extension: FlightDay
Id: flight-day
Title: "Flight Day"
Description: "Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N)"
Context: Observation, Procedure, Condition, AdverseEvent, MedicationAdministration
* ^status = #active
* value[x] only integer
* valueInteger ^short = "Flight day number (FD+N) or return day (R+N as negative)"

Extension: EvidenceSource
Id: evidence-source
Title: "Evidence Source"
Description: "Links clinical data to research evidence sources such as SHARED database entries or PubMed references"
Context: Element
* ^status = #active
* value[x] only uri
* valueUri ^short = "URI reference to evidence source (PubMed, SHARED database, etc.)"


// =====================================================
// PROVENANCE RULE SETS
// Every example instance in this guide carries meta.source so consumers can
// tell synthetic test data, fictional characters, and public-record reference
// data apart. HTEST marks resources that must never be treated as real patient data.
// =====================================================

RuleSet: SyntheticExample
* meta.source = "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic"
* meta.tag = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST "test health data"

RuleSet: FictionalExample
* meta.source = "https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional"
* meta.tag = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST "test health data"

RuleSet: ReferenceRecord
* meta.source = "https://awatson1978.github.io/aerospace-medicine-ig/provenance/public-record"

RuleSet: PublicRecord(source)
* meta.source = {source}
