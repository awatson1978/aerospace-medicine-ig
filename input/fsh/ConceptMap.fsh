// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.


Instance: MapObservationToLocation
InstanceOf: ConceptMap
Title: "Map - ObservationToLocation"
Description: "Maps orbital coordinate observations to an xGeo location."
* status = #active

Instance: MapNoradToLocation
InstanceOf: ConceptMap
Title: "Map - NoradToLocation"
Description: "Maps  NORAD two-line punch card format to FHIR Location."
* status = #active


Instance: MapNoradToObservation
InstanceOf: ConceptMap
Title: "Map - Norad2Observation"
Description: "Maps the NORAD two-line punch card format to FHIR Observation."
* status = #active

Instance: MapObservationToNorad
InstanceOf: ConceptMap
Title: "Map - ObservationToNorad"
Description: "Maps a FHIR Observation to a NORAD two-line punch card format."
* status = #active

Instance: MapVitalsBundleToPanel
InstanceOf: ConceptMap
Title: "Map - VitalsBundleToPanel"
Description: "Maps a bundle of vital signs to a multi-component Observation."
* status = #active