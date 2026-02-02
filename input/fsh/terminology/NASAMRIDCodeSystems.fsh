// ============================================================================
// NASA Medical Requirements Integration Documents (MRID) Code Systems
// ============================================================================
// These code systems capture terminology specific to NASA's medical requirements
// documents (MEDB and MR series) for crew health monitoring during spaceflight.
// ============================================================================

Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

// ---------------------------------------------------------
// CodeSystem: NASA MRID Sponsor Organizations
// ---------------------------------------------------------
CodeSystem: NASAMRIDSponsorCS
Id: nasa-mrid-sponsor-cs
Title: "NASA MRID Sponsor Organizations"
Description: "Organizations that sponsor medical requirements within NASA's Medical Requirements Integration Documents."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-sponsor-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #medical-operations "Medical Operations"
    "NASA Medical Operations branch responsible for crew health and medical care."
* #bhp "Behavioral Health and Performance"
    "NASA Behavioral Health and Performance group responsible for psychological services and crew behavioral readiness."
* #srag "Space Radiation Analysis Group"
    "NASA Space Radiation Analysis Group responsible for radiation monitoring and risk assessment."
* #environmental-health "Environmental Health System"
    "NASA Environmental Health System responsible for habitat environmental monitoring."
* #exercise-physiology "Exercise Physiology and Countermeasures"
    "NASA Exercise Physiology team responsible for exercise countermeasures."
* #flight-medicine "Flight Medicine"
    "NASA Flight Medicine responsible for clinical care during missions."
* #ascr "Astronaut Strength Conditioning and Rehabilitation"
    "NASA ASCR team responsible for fitness assessment and rehabilitation."


// ---------------------------------------------------------
// CodeSystem: NASA MRID Medical Disciplines
// ---------------------------------------------------------
CodeSystem: NASAMRIDDisciplineCS
Id: nasa-mrid-discipline-cs
Title: "NASA MRID Medical Disciplines"
Description: "Medical disciplines categorizing NASA Medical Requirements Integration Documents."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-mrid-discipline-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #radiation "Radiation"
    "Radiation monitoring, dosimetry, and protection."
* #cardiovascular "Cardiovascular"
    "Cardiovascular assessment including ECG, stress testing, and blood pressure monitoring."
* #bone-muscle-exercise "Bone, Muscle & Exercise"
    "Musculoskeletal health, bone density, and exercise countermeasures."
* #behavioral "Behavior and Performance"
    "Psychological assessment, behavioral health, and cognitive performance."
* #environmental "Environmental Health"
    "Environmental monitoring including air quality, water quality, and microbiology."
* #neurovestibular "Neurovestibular"
    "Balance, vestibular function, and spatial orientation assessment."
* #ophthalmology "Ophthalmology"
    "Eye examinations, visual acuity, and SANS monitoring."
* #audiology "Audiology"
    "Hearing assessment and acoustic protection."
* #dental "Dental"
    "Dental examinations and oral health."
* #laboratory "Laboratory Medicine"
    "Clinical laboratory testing and screening."
* #physical-examination "Physical Examination"
    "Comprehensive physical examinations and health status evaluations."
* #eva-medical "EVA Medical"
    "Medical monitoring and support for extravehicular activities."
* #reconditioning "Reconditioning"
    "Post-flight rehabilitation and reconditioning."


// ---------------------------------------------------------
// CodeSystem: NASA Mission Phase Timing
// ---------------------------------------------------------
CodeSystem: NASAMissionPhaseCS
Id: nasa-mission-phase-cs
Title: "NASA Mission Phase Timing"
Description: "Mission phases and timing codes for medical requirements scheduling."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-mission-phase-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #preflight-training "Preflight Training"
    "Training activities conducted before launch to prepare crew for medical procedures."
* #preflight-activity "Preflight Activity"
    "Medical activities and examinations conducted before launch."
* #inflight "In-Flight"
    "Medical activities conducted during spaceflight."
* #postflight "Postflight"
    "Medical activities conducted after landing/return."
* #postflight-debrief "Postflight Debrief"
    "Debriefing sessions conducted after mission completion."
* #continuous "Continuous Monitoring"
    "Ongoing monitoring throughout the mission duration."
* #ame "Annual Medical Examination"
    "Annual astronaut medical examination period."


// ---------------------------------------------------------
// CodeSystem: NASA Schedule Offset Notation
// ---------------------------------------------------------
CodeSystem: NASAScheduleOffsetCS
Id: nasa-schedule-offset-cs
Title: "NASA Schedule Offset Notation"
Description: "L-minus and R-plus notation codes for mission timeline scheduling."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-schedule-offset-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Preflight offsets (L-minus)
* #L-24m "L-24 months" "24 months before launch"
* #L-19m "L-19 months" "19 months before launch"
* #L-12m "L-12 months" "12 months before launch"
* #L-9m "L-9 months" "9 months before launch"
* #L-6m "L-6 months" "6 months before launch"
* #L-180d "L-180 days" "180 days before launch"
* #L-90d "L-90 days" "90 days before launch"
* #L-45d "L-45 days" "45 days before launch"
* #L-30d "L-30 days" "30 days before launch"
* #L-15d "L-15 days" "15 days before launch"
* #L-10d "L-10 days" "10 days before launch"
* #L-7d "L-7 days" "7 days before launch"
* #L-3d "L-3 days" "3 days before launch"
* #L-0 "L-0" "Launch day"

// Postflight offsets (R-plus)
* #R-0 "R+0" "Return/landing day"
* #R-3d "R+3 days" "3 days after return"
* #R-5d "R+5 days" "5 days after return"
* #R-7d "R+7 days" "7 days after return"
* #R-14d "R+14 days" "14 days after return"
* #R-30d "R+30 days" "30 days after return"
* #R-45d "R+45 days" "45 days after return"
* #R-60d "R+60 days" "60 days after return"

// Flight day notation
* #FD-21 "Flight Day 21" "21st day of flight"
* #FD-mid "Mid-Mission" "Midpoint of mission duration"


// ---------------------------------------------------------
// CodeSystem: NASA Medical Hardware
// ---------------------------------------------------------
CodeSystem: NASAMedicalHardwareCS
Id: nasa-medical-hardware-cs
Title: "NASA Medical Hardware"
Description: "Medical equipment and hardware used in NASA medical requirements."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-hardware-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Radiation monitoring equipment
* #cpd "Crew Passive Dosimeter"
    "Personal radiation dosimeter worn continuously by crewmembers."
* #tepc "Tissue Equivalent Proportional Counter"
    "Active radiation detector measuring dose equivalent rates."
* #evcpds "EVA Crew Personal Dosimeter System"
    "Dosimeter system worn during extravehicular activities."
* #iv-tepc "Intravehicular TEPC"
    "TEPC for monitoring radiation inside the vehicle."
* #ram "Radiation Area Monitor"
    "Fixed location radiation monitoring device."

// Cardiovascular equipment
* #12-lead-ecg "12-Lead ECG Machine"
    "Electrocardiograph for recording 12-lead cardiac electrical activity."
* #marquette-case "Marquette CASE 15"
    "ECG system used for exercise stress testing."
* #blood-pressure-monitor "Blood Pressure Monitor"
    "Device for measuring systolic and diastolic blood pressure."

// Exercise equipment
* #t2-treadmill "T2 Treadmill"
    "ISS T2 treadmill for aerobic exercise countermeasures."
* #ared "Advanced Resistive Exercise Device"
    "ISS resistive exercise device for strength training."
* #cevis "Cycle Ergometer with Vibration Isolation"
    "ISS cycle ergometer for cardiovascular exercise."
* #quinton-treadmill "Quinton 1860 Treadmill"
    "Treadmill used for exercise stress testing on ground."
* #cybex-leg-press "Cybex Leg Press"
    "Leg press machine for lower body strength assessment."
* #hand-grip-dynamometer "Hand Grip Dynamometer"
    "Device for measuring hand grip strength."

// Fitness assessment equipment
* #sit-reach-bench "Sit and Reach Bench"
    "Equipment for flexibility assessment."
* #smith-bench "Smith Bench"
    "Bench press with guided barbell for strength testing."

// Body composition equipment
* #mmd "Mass Measurement Device"
    "Russian device for measuring body mass in microgravity."
* #dexa "DEXA Scanner"
    "Dual-energy X-ray absorptiometry for bone density measurement."

// Hearing assessment equipment
* #audiometer "Audiometer"
    "Device for measuring hearing thresholds."
* #tympanometer "Tympanometer"
    "Device for assessing middle ear function."
* #ooha-headset "OOHA Headset"
    "On-Orbit Hearing Assessment headset."
* #kuduwave "KUDUwave Software"
    "Software for on-orbit audiometric testing."

// Environmental sampling equipment
* #microbial-air-sampler "Microbial Air Sampler III"
    "Device for collecting airborne microbial samples."
* #water-sample-kit "Water Sample Collection Kit"
    "Kit for collecting potable water samples."
* #surface-swab-kit "Surface Swab Collection Kit"
    "Kit for collecting surface microbial samples."


// ---------------------------------------------------------
// CodeSystem: NASA Medical Facility Locations
// ---------------------------------------------------------
CodeSystem: NASAMedicalFacilityCS
Id: nasa-medical-facility-cs
Title: "NASA Medical Facility Locations"
Description: "Medical testing facility locations for NASA medical requirements."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-facility-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #jsc "Johnson Space Center"
    "NASA Johnson Space Center, Houston, Texas."
* #ksc "Kennedy Space Center"
    "NASA Kennedy Space Center, Florida."
* #russia-gctc "Gagarin Cosmonaut Training Center"
    "Russian cosmonaut training center, Star City."
* #russia-ibmp "Institute for Biomedical Problems"
    "Russian Institute for Biomedical Problems, Moscow."
* #esa-eac "European Astronaut Centre"
    "ESA European Astronaut Centre, Cologne, Germany."
* #jaxa-tsukuba "JAXA Tsukuba Space Center"
    "JAXA facility in Tsukuba, Japan."
* #csa-stjohn "CSA St. John's"
    "Canadian Space Agency facility."
* #iss "International Space Station"
    "On-orbit International Space Station."
* #srdl "Space Radiation Dosimetry Laboratory"
    "NASA facility for radiation dosimetry analysis."


// ---------------------------------------------------------
// CodeSystem: NASA MRID Data Archive Systems
// ---------------------------------------------------------
CodeSystem: NASADataArchiveCS
Id: nasa-data-archive-cs
Title: "NASA Medical Data Archive Systems"
Description: "Data archive and delivery systems for NASA medical data."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-data-archive-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #mmis "Medical Mission Information System"
    "Primary NASA medical information system for crew health records."
* #areas "Astronaut Radiation Exposure Assessment System"
    "Protected database for astronaut radiation exposure records."
* #meme "Medical Equipment Management Environment"
    "System for managing medical equipment and supplies."
* #pacs "Picture Archiving and Communication System"
    "System for storing and retrieving medical images."
* #emr "Electronic Medical Record"
    "Astronaut electronic medical record system."


// ---------------------------------------------------------
// CodeSystem: NASA Personnel Roles
// ---------------------------------------------------------
CodeSystem: NASAMedicalRolesCS
Id: nasa-medical-roles-cs
Title: "NASA Medical Personnel Roles"
Description: "Personnel roles involved in NASA medical requirements."

* ^url = "https://mitre.org/fhir/space-health/CodeSystem/nasa-medical-roles-cs"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

* #flight-surgeon "Flight Surgeon"
    "NASA physician responsible for crew medical care and flight certification."
* #crew-surgeon "Crew Surgeon"
    "Flight surgeon assigned to a specific crew."
* #rho "Radiation Health Officer"
    "Officer responsible for radiation exposure monitoring and risk assessment."
* #bhp-specialist "BHP Specialist"
    "Behavioral Health and Performance specialist (psychiatrist or psychologist)."
* #ascr-specialist "ASCR Specialist"
    "Astronaut Strength, Conditioning, and Rehabilitation specialist."
* #instructor "Instructor"
    "Training instructor for medical procedures."
* #crewmember "Crewmember"
    "ISS or mission crewmember subject to medical requirements."
* #ame "Aviation Medical Examiner"
    "Designated medical examiner for aviation/astronaut medical certification."
* #landing-team "Landing Team"
    "Personnel involved in crew recovery at landing site."
