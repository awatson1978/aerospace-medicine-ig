// Radiation tracking terminology: radiation types, countermeasures, detector types, dose units.

ValueSet: RadiationDoseUnitsVS
Id: radiation-dose-units-vs
Title: "Radiation Dose Units"
Description: "Units for radiation dose measurements"
* ^experimental = true
* ^status = #active
* $ucum#mSv "Millisievert"
* $ucum#uSv "Microsievert" 
* $ucum#Sv "Sievert"
* $ucum#mGy "Milligray"
* $ucum#uGy "Microgray"
* $ucum#Gy "Gray"

ValueSet: SpaceRadiationTypeVS
Id: space-radiation-type-vs
Title: "Space Radiation Types"
Description: "Types of radiation encountered in space"
* ^experimental = true
* ^status = #active
* include codes from system SpaceRadiationTypeCS

ValueSet: RadiationCountermeasuresVS
Id: radiation-countermeasures-vs
Title: "Radiation Countermeasures"
Description: "Protective measures against radiation"
* ^experimental = true
* ^status = #active
* include codes from system RadiationCountermeasuresCS

ValueSet: DosimeterTypeVS
Id: dosimeter-type-vs
Title: "Dosimeter Types"
Description: "Types of radiation dosimeters"
* ^experimental = true
* ^status = #active
* include codes from system RadiationDetectorTypeCS

CodeSystem: SpaceRadiationTypeCS
Id: space-radiation-type-cs
Title: "Space Radiation Type Code System"
Description: "Types of radiation encountered in space environments"
* ^count = 4
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #gcr "Galactic Cosmic Radiation"
* #spe "Solar Particle Event"
* #trapped "Trapped Radiation"
* #secondary "Secondary Radiation"

CodeSystem: RadiationCountermeasuresCS
Id: radiation-countermeasures-cs
Title: "Radiation Countermeasures Code System"
Description: "Protective measures against space radiation"
* ^count = 4
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #shielding "Physical Shielding"
* #shelter "Radiation Shelter"
* #medication "Radioprotective Medication" "Pharmacological countermeasure; the specific agent is coded with RadioprotectiveMedicationCS"
* #monitoring "Enhanced Monitoring"

CodeSystem: RadiationDetectorTypeCS
Id: radiation-detector-type-cs
Title: "Radiation Detector Type Code System"
Description: "Types of radiation detection equipment"
* ^count = 9
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^content = #complete
* #tld "Thermoluminescent Dosimeter"
* #osld "Optically Stimulated Luminescence Detector"
* #epd "Electronic Personal Dosimeter"
* #tepc "Tissue Equivalent Proportional Counter"
* #area-monitor "Area Radiation Monitor"
* #neutron-detector "Neutron Detection System"
* #spectrometer "Radiation Spectrometer"
* #passive "Passive Dosimeter" "Integrating dosimeter read out after the exposure period"
* #active "Active Real-time Dosimeter" "Dosimeter reporting dose and dose rate in real time"