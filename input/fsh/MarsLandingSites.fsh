// Mars Landing Sites CodeSystem
// Candidate landing locations for human missions with areographic coordinates

Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEM
// =====================================================

CodeSystem: MarsLandingSitesCS
Id: mars-landing-sites-cs
Title: "Mars Landing Sites (Candidate)"
Description: "Candidate landing sites for human Mars missions with areographic coordinates and site characteristics"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^count = 6

// Coordinate properties
* ^property[0].code = #latitude
* ^property[=].description = "Areographic latitude (degrees, -90 to +90)"
* ^property[=].type = #decimal

* ^property[+].code = #longitude
* ^property[=].description = "Areographic longitude (degrees, 0 to 360)"
* ^property[=].type = #decimal

* ^property[+].code = #feature
* ^property[=].description = "Primary topographic feature"
* ^property[=].type = #string

// Landing site concepts
* #jezero "Jezero Crater"
  * ^definition = "Ancient lake-delta system at 18.4°N, 77.5°E, Perseverance rover site, high science value for sample return"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = 18.4
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 77.5
  * ^property[+].code = #feature
  * ^property[=].valueString = "Impact crater with river delta deposits"

* #arcadia "Arcadia Planitia"
  * ^definition = "Flat plain ~40°N, 203°E with subsurface ice, candidate SpaceX Starship zone for ISRU water access"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = 40.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 203.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Smooth lowland plain"

* #gale "Gale Crater"
  * ^definition = "Large crater at 5.4°S, 137.8°E with layered central mound (Mt. Sharp), Curiosity rover site"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -5.4
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 137.8
  * ^property[+].code = #feature
  * ^property[=].valueString = "Impact crater with central peak"

* #elysium "Elysium Planitia"
  * ^definition = "Smooth equatorial plain at 4°N, 135°E, benign terrain, InSight lander site"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = 4.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 135.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Volcanic plain"

* #hellas "Hellas Planitia"
  * ^definition = "Deepest basin on Mars at 42.4°S, 70.5°E (~7 km below datum), higher atmospheric pressure aids landing"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -42.4
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 70.5
  * ^property[+].code = #feature
  * ^property[=].valueString = "Massive impact basin"

* #mawrth "Mawrth Vallis"
  * ^definition = "Ancient river valley at 24°N, 341°E with phyllosilicate (clay) deposits, high habitability science interest"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = 24.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 341.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Outflow channel"

// =====================================================
// VALUE SET
// =====================================================

ValueSet: MarsLandingSitesVS
Id: mars-landing-sites-vs
Title: "Mars Landing Sites"
Description: "Candidate landing sites for human Mars missions"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = true
* include codes from system MarsLandingSitesCS
