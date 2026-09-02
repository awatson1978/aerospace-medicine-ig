# Mars Surface Habitat - Jezero Crater - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Surface Habitat - Jezero Crater**

## Example Location: Mars Surface Habitat - Jezero Crater

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Active

**name**: Mars Direct Habitat Unit - Jezero Site

**description**: Pressurized surface habitat with life support, medical bay, and crew quarters. Landed at Jezero Crater ancient delta region.

**mode**: Instance

**type**: Mars surface habitat

### Positions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Longitude** | **Latitude** | **Altitude** |
| * | 77.5 | 18.4 | -2500 |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "MarsHabitat-Jezero",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "active",
  "name" : "Mars Direct Habitat Unit - Jezero Site",
  "description" : "Pressurized surface habitat with life support, medical bay, and crew quarters. Landed at Jezero Crater ancient delta region.",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/location-type-cs",
          "code" : "surface-habitat",
          "display" : "Surface Habitat"
        }
      ],
      "text" : "Mars surface habitat"
    }
  ],
  "position" : {
    "longitude" : 77.5,
    "latitude" : 18.4,
    "altitude" : -2500
  }
}

```
