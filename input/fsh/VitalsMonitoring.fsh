Alias: $vitalspanel = http://hl7.org/fhir/StructureDefinition/vitalspanel
Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $oxygen-saturation-arterial-blood-pulseOx = http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood-pulseOx
Alias: $body-weight = http://hl7.org/fhir/us/vitals/StructureDefinition/body-weight
Alias: $height = http://hl7.org/fhir/us/vitals/StructureDefinition/height
Alias: $body-temperature = http://hl7.org/fhir/us/vitals/StructureDefinition/body-temperature
Alias: $blood-pressure-panel = http://hl7.org/fhir/us/vitals/StructureDefinition/blood-pressure-panel
Alias: $heart-rate = http://hl7.org/fhir/us/vitals/StructureDefinition/heart-rate
Alias: $respiratory-rate = http://hl7.org/fhir/us/vitals/StructureDefinition/respiratory-rate
Alias: $body-mass-index = http://hl7.org/fhir/us/vitals/StructureDefinition/body-mass-index
Alias: $definedLimitsVS = http://hl7.org/fhir/us/vitals/ValueSet/definedLimitsVS

Profile: SpaceVitalsPanel
Parent: $vitalspanel
Id: vital-signs-panel
Title: "Vital Signs Panel"
Description: "A vital signs panel as defined by Logica Health.  It includes Oxygen Saturation via Pulse Oximetry, Oxygen Saturation in Arterial blood, body height, body length, body weight, body temperature, blood pressure panel, heart rate, respiratory rate, head-occcipital/frontal circumference, oxygen saturation via pulse oximetry, and body mass index."
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[0].name = "HL7 International - Clinical Information Modeling Initiative"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/Special/committees/cimi"
* ^contact[+].name = "Logica"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.logicahealth.org/"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^copyright = "Logica Health, all rights reserved Creative Commons License"
* code = http://loinc.org#85353-1
* code ^short = "Vital signs, weight, height, head circumference, oxygen saturation, and BMI panel"
* subject only Reference($us-core-patient)
* dataAbsentReason ..0
* interpretation from $definedLimitsVS (extensible)
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #closed
* hasMember contains
    OxygenSaturationArterialBloodPulseOx 0..1 and
    BodyWeight 0..1 and
    Height 0..1 and
    BodyTemperature 0..1 and
    BloodPressurePanel 0..1 and
    HeartRate 0..1 and
    RespiratoryRate 0..1 and
    BodyMassIndex 0..1
* hasMember[OxygenSaturationArterialBloodPulseOx] only Reference($oxygen-saturation-arterial-blood-pulseOx)
* hasMember[BodyWeight] only Reference($body-weight)
* hasMember[Height] only Reference($height)
* hasMember[BodyTemperature] only Reference($body-temperature)
* hasMember[BloodPressurePanel] only Reference($blood-pressure-panel)
* hasMember[HeartRate] only Reference($heart-rate)
* hasMember[RespiratoryRate] only Reference($respiratory-rate)
* component ..0