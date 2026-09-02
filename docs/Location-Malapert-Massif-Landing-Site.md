# Malapert Massif Landing Site - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Malapert Massif Landing Site**

## Example Location: Malapert Massif Landing Site

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Habitat Location](StructureDefinition-habitat-location.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

> **Lunar Coordinates**
* latitude: -86
* longitude: 0

**status**: Active

**name**: Artemis IV Landing Site - Malapert Massif

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
          "url" : "latitude",
          "valueDecimal" : -86
        },
        {
          "url" : "longitude",
          "valueDecimal" : 0
        }
      ],
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lunar-coordinates"
    }
  ],
  "status" : "active",
  "name" : "Artemis IV Landing Site - Malapert Massif",
  "description" : "High-elevation site near lunar south pole (86°S, 0°E) with near-continuous sunlight access and proximity to permanently shadowed craters. Malapert Mountain provides elevated terrain for communications and solar power.",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-type-cs",
          "code" : "landing-site",
          "display" : "Landing Site"
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
