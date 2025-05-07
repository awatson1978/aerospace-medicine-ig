Alias: SCT = http://snomed.info/sct

// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: GimbalScreening
Title: "Gimbal Screening"
Parent: Bundle
Description: "Screening protocol for Multi Axis Gimbal training device."
* type = #document

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false   // can be omitted, since false is the default
* entry ^slicing.description = "Slice based on the entry.resource pattern"

* entry contains 
    contraindicatedConditions 1..* MS and
    contraindicatedProcedures 1..* MS and
    contraindicatedMedications 1..* MS and
    contraindicatedObservations 1..* MS 

* entry[contraindicatedConditions].resource only GimbalScreeningCondition
* entry[contraindicatedProcedures].resource only GimbalScreeningProcedure
* entry[contraindicatedMedications].resource only GimbalScreeningMedication
* entry[contraindicatedObservations].resource only GimbalScreeningObservation



Profile: GimbalScreeningCondition
Parent: Condition
Title: "Gimbal Screening Condition"
Description: "Contraindicated conditions for riding in a multi-axis gimbal machine."

Profile: GimbalScreeningProcedure
Parent: Procedure
Title: "Gimbal Screening Procedure"
Description: "Contraindicated medical procedures for riding in a multi-axis gimbal machine."

Profile: GimbalScreeningMedication
Parent: Medication
Title: "Gimbal Screening Medication"
Description: "Contraindicated medications for riding in a multi-axis gimbal machine."

Profile: GimbalScreeningObservation
Parent: Observation
Title: "Gimbal Screening Observation"
Description: "Contraindicated observations for riding in a multi-axis gimbal machine."


// Profile: GimbalScreeningClaustrophobia
// Parent: GimbalScreeningCondition
// Title: "Gimbal Screening - Claustrophobia"
// Description: "Must not be claustrophobic to ride multi-axis gimbal."
// * code = http://snomed.info/sct#19887002 "Claustrophobia (finding)"

// Profile: GimbalScreeningPregnant
// Parent: GimbalScreeningCondition
// Title: "Gimbal Screening - Pregnant"
// Description: "Must not be pregnant to ride multi-axis gimbal."
// * code = http://snomed.info/sct#77386006 "Pregnancy (finding)"

// Profile: GimbalScreeningSeizures
// Parent: GimbalScreeningCondition
// Title: "Gimbal Screening - Seizures"
// Description: "Must not have risk of seizures to ride multi-axis gimbal."
// * code = http://snomed.info/sct#225931003 "At risk of epileptic fits (finding)"


// Profile: GimbalScreeningInjuries
// Parent: GimbalScreeningObservation
// Title: "Gimbal Screening - Injuries"
// Description: "Must not have head, neck, or back injuries to ride multi-axis gimbal."
// * code = http://snomed.info/sct#225931003 "At risk of epileptic fits (finding)"


ValueSet:    GimbalContraindicatedConditions
Id:          GimbalContraindicatedConditions
Title:       "Gimbal Contraindications"
Description: "Contraindicated conditions for riding a multi-axis gimbal"
* SCT#82271004 "Injury of head (disorder)"
* SCT#90460009 "Injury of neck (disorder)"
* SCT#712893003 "Traumatic or non-traumatic injury of back (disorder)"
* SCT#404640003 "Dizziness (disorder)"
* SCT#19887002 "Claustrophobia (finding)"
* SCT#77386006 "Pregnancy (finding)"
* SCT#225931003 "At risk of epileptic fits (finding)"
* SCT#88610006 "Heart murmur (finding)"
* SCT#34068001 "Heart valve replacement (procedure)"
* SCT#1153637007 "Body height (observable entity)"