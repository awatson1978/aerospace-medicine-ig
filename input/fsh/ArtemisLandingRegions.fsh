// Artemis Landing Regions CodeSystem
// 13 candidate Artemis III south pole landing regions with coordinates

Alias: $ucum = http://unitsofmeasure.org

// =====================================================
// CODE SYSTEM
// =====================================================

CodeSystem: ArtemisLandingRegionCS
Id: artemis-landing-region-cs
Title: "Artemis Landing Regions"
Description: "Candidate Artemis III landing regions near the lunar south pole (within 6° of pole, near permanently shadowed craters)"
* ^url = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-landing-region-cs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete

// Coordinate properties
* ^property[0].code = #latitude
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-landing-region-cs#latitude"
* ^property[=].description = "Approximate selenographic latitude (degrees)"
* ^property[=].type = #decimal

* ^property[+].code = #longitude
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-landing-region-cs#longitude"
* ^property[=].description = "Approximate selenographic longitude (degrees)"
* ^property[=].type = #decimal

* ^property[+].code = #feature
* ^property[=].uri = "http://hl7.org/fhir/uv/aerospace/CodeSystem/artemis-landing-region-cs#feature"
* ^property[=].description = "Primary topographic feature (crater, massif, plateau, ridge)"
* ^property[=].type = #string

// Landing region concepts
* #faustini-rim-a "Faustini Rim A"
  * ^definition = "Rim of Faustini crater (~87°S, 84°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -87.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 84.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Faustini crater"

* #peak-near-shackleton "Peak Near Shackleton"
  * ^definition = "High point near Shackleton crater, south pole (~89°S, 126°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -89.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 126.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Shackleton vicinity"

* #connecting-ridge "Connecting Ridge"
  * ^definition = "Ridge connecting crater rims in Shackleton–de Gerlache area (~89.5°S, 210°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -89.5
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 210.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Ridge between Shackleton and de Gerlache"

* #connecting-ridge-ext "Connecting Ridge Extension"
  * ^definition = "Extension of Connecting Ridge (~89.3°S, 210°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -89.3
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 210.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Extended ridge"

* #de-gerlache-rim-1 "de Gerlache Rim 1"
  * ^definition = "One site on rim of de Gerlache crater (~88.5°S, 270°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -88.5
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 270.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "de Gerlache crater"

* #de-gerlache-rim-2 "de Gerlache Rim 2"
  * ^definition = "Another site on rim of de Gerlache crater (~88.8°S, 250°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -88.8
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 250.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "de Gerlache crater"

* #de-gerlache-kocher-massif "de Gerlache–Kocher Massif"
  * ^definition = "Massif between de Gerlache and Kocher craters (~85°S, 236°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -85.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 236.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Mountainous highland"

* #haworth "Haworth"
  * ^definition = "Vicinity of Haworth crater floor/rim (~86.9°S, 356°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -86.9
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 356.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Haworth crater"

* #malapert-massif "Malapert Massif"
  * ^definition = "Malapert Mountain, high elevation near pole (~86°S, 0°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -86.0
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 0.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Malapert peak"

* #leibnitz-beta-plateau "Leibnitz Beta Plateau"
  * ^definition = "Elevated plateau in Mons Mouton area (~85.4°S, 32°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -85.4
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 32.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Leibnitz Beta region"

* #nobile-rim-1 "Nobile Rim 1"
  * ^definition = "Rim of Nobile crater, site 1 (~85.7°S, 45°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -85.7
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 45.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Nobile crater region"

* #nobile-rim-2 "Nobile Rim 2"
  * ^definition = "Rim of Nobile crater, site 2 (~84.2°S, 60.7°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -84.2
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 60.7
  * ^property[+].code = #feature
  * ^property[=].valueString = "Nobile crater region"

* #amundsen-rim "Amundsen Rim"
  * ^definition = "Rim of Amundsen crater (~84.5°S, 83°E)"
  * ^property[0].code = #latitude
  * ^property[=].valueDecimal = -84.5
  * ^property[+].code = #longitude
  * ^property[=].valueDecimal = 83.0
  * ^property[+].code = #feature
  * ^property[=].valueString = "Amundsen crater region"

// =====================================================
// VALUE SET
// =====================================================

ValueSet: ArtemisLandingRegionVS
Id: artemis-landing-region-vs
Title: "Artemis Landing Regions"
Description: "Candidate Artemis III south pole landing regions for Location bindings"
* ^url = "http://hl7.org/fhir/uv/aerospace/ValueSet/artemis-landing-region-vs"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* include codes from system ArtemisLandingRegionCS
