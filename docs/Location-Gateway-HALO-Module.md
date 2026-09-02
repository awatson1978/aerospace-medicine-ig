# Lunar Gateway HALO Module - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Gateway HALO Module**

## Example Location: Lunar Gateway HALO Module

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Habitat Location](StructureDefinition-habitat-location.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/habitat-location"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/radiation-shielding"
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
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-type-cs",
          "code" : "orbital-station",
          "display" : "Orbital Station"
        }
      ],
      "text" : "Lunar orbital habitat module"
    }
  ]
}

```
