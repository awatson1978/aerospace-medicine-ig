# Malapert Massif Landing Site - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Malapert Massif Landing Site**

## Example Location: Malapert Massif Landing Site

Profile: [Habitat Location](StructureDefinition-habitat-location.md)

> **Lunar Coordinates**
* latitude: -86
* longitude: 0

**status**: Active

**name**: Artemis III Landing Site - Malapert Massif

**description**: High-elevation site near lunar south pole (86°S, 0°E) with near-continuous sunlight access and proximity to permanently shadowed craters. Malapert Mountain provides elevated terrain for communications and solar power.

**mode**: Instance

**type**: Lunar surface landing site

### Positions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Longitude** | **Latitude** | **Altitude** |
| * | 0 | -86 | 5000 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "Malapert-Massif-Landing-Site",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/habitat-location"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "latitude",
          "valueDecimal" : -86
        },
        {
          "url" : "longitude",
          "valueDecimal" : 0
        }
      ],
      "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/lunar-coordinates"
    }
  ],
  "status" : "active",
  "name" : "Artemis III Landing Site - Malapert Massif",
  "description" : "High-elevation site near lunar south pole (86°S, 0°E) with near-continuous sunlight access and proximity to permanently shadowed craters. Malapert Mountain provides elevated terrain for communications and solar power.",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-type-cs",
          "code" : "landing-site"
        }
      ],
      "text" : "Lunar surface landing site"
    }
  ],
  "position" : {
    "longitude" : 0,
    "latitude" : -86,
    "altitude" : 5000
  }
}

```
