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
* ^experimental = false
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
* ^experimental = false
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
* ^experimental = false
* ^status = #active
* include codes from system GravityContextCS

ValueSet: MissionPhaseVS
Id: mission-phase-vs
Title: "Mission Phase Value Set"
Description: "Phases of a space mission"
* ^experimental = false
* ^status = #active
* include codes from system MissionPhaseCS

// =====================================================
// EXTENSIONS
// =====================================================

Extension: GravityContext
Id: gravity-context
Title: "Gravity Context"
Description: "Gravitational environment in which the observation, condition, or procedure occurred"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Condition"
* ^context[2].type = #element
* ^context[2].expression = "Procedure"
* ^context[3].type = #element
* ^context[3].expression = "MedicationAdministration"
* ^context[4].type = #element
* ^context[4].expression = "CarePlan"
* ^context[5].type = #element
* ^context[5].expression = "DeviceDefinition"
* value[x] only CodeableConcept
* valueCodeableConcept from GravityContextVS (extensible)

Extension: MissionPhase
Id: mission-phase
Title: "Mission Phase"
Description: "Phase of the space mission during which the clinical event occurred"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* ^context[2].type = #element
* ^context[2].expression = "Condition"
* ^context[3].type = #element
* ^context[3].expression = "MedicationAdministration"
* ^context[4].type = #element
* ^context[4].expression = "CarePlan"
* ^context[5].type = #element
* ^context[5].expression = "RiskAssessment"
* value[x] only CodeableConcept
* valueCodeableConcept from MissionPhaseVS (extensible)

Extension: FlightDay
Id: flight-day
Title: "Flight Day"
Description: "Flight day number relative to launch. Positive values indicate flight days (FD+N), negative values indicate return days (R+N)"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Observation"
* ^context[1].type = #element
* ^context[1].expression = "Procedure"
* ^context[2].type = #element
* ^context[2].expression = "Condition"
* value[x] only integer
* valueInteger ^short = "Flight day number (FD+N) or return day (R+N as negative)"

Extension: EvidenceSource
Id: evidence-source
Title: "Evidence Source"
Description: "Links clinical data to research evidence sources such as SHARED database entries or PubMed references"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "Resource"
* value[x] only uri
* valueUri ^short = "URI reference to evidence source (PubMed, SHARED database, etc.)"
