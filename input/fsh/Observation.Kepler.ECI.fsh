Instance: Observation.Kepler.ECI.1
InstanceOf: Observation
Title: "Observation - Orbital Elements"
Description: "Observation - Orbital Elements"
Usage: #example
* status = #final
* method.text = "Earth Centered Inertial"
* method = #ECI "Earth Centered Inertial"
* code = http://loinc.org#ECI "Satellite Observation"
* component[0].code.text = "Eccentricity"
* component[=].code = #e "Eccentricity"
* component[=].valueQuantity.value = 0.6
* component[+].code.text = "Semimajor Axis"
* component[=].code = #a "Semimajor Axis"
* component[=].valueQuantity.value = 2.7
* component[+].code.text = "Angle of Inclination"
* component[=].code = #i "Inclination"
* component[=].valueQuantity.value = 53
* component[=].valueQuantity.unit = "deg"
* component[+].code.text = "Longitude of the ascending node"
* component[=].code = #Ω "Longitude of the ascending node"
* component[=].valueQuantity.value = 0
* component[=].valueQuantity.unit = "deg"
* component[+].code.text = "Argument of Periapsis"
* component[=].code = #ω "Periapsis"
* component[=].valueQuantity.value = 22.1
* component[=].valueQuantity.unit = "deg"
* component[+].code.text = "True anomaly"
* component[=].code = #θ "True Anomaly"
* component[=].valueQuantity.value = 30
* component[=].valueQuantity.unit = "s"