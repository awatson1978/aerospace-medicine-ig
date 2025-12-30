# Lunar Gateway HALO Module - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Gateway HALO Module**

## Example Location: Lunar Gateway HALO Module

Profile: [Habitat Location](StructureDefinition-habitat-location.md)

> **Radiation Shielding**
* shieldingMass: 12.5 g/cm²(Details: UCUM codeg/cm2 = 'g/cm2')
* shieldingComposition: Aluminum alloy with polyethylene water walls

**status**: Active

**name**: Lunar Gateway - HALO Module

**description**: Primary habitation module of Lunar Gateway in Near-Rectilinear Halo Orbit (NRHO). Provides crew quarters, life support, and logistics for Artemis missions.

**mode**: Instance

**type**: Lunar orbital habitat module



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Gateway-HALO-Module",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/habitat-location"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "shieldingMass",
          "valueQuantity" : {
            "value" : 12.5,
            "unit" : "g/cm²",
            "system" : "http://unitsofmeasure.org",
            "code" : "g/cm2"
          }
        },
        {
          "url" : "shieldingComposition",
          "valueString" : "Aluminum alloy with polyethylene water walls"
        }
      ],
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-shielding"
    }
  ],
  "status" : "active",
  "name" : "Lunar Gateway - HALO Module",
  "description" : "Primary habitation module of Lunar Gateway in Near-Rectilinear Halo Orbit (NRHO). Provides crew quarters, life support, and logistics for Artemis missions.",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-type-cs",
          "code" : "orbital-station"
        }
      ],
      "text" : "Lunar orbital habitat module"
    }
  ]
}

```
