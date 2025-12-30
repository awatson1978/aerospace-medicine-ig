# Mars Surface Habitat - Jezero Crater - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Surface Habitat - Jezero Crater**

## Example Location: Mars Surface Habitat - Jezero Crater

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
  "status" : "active",
  "name" : "Mars Direct Habitat Unit - Jezero Site",
  "description" : "Pressurized surface habitat with life support, medical bay, and crew quarters. Landed at Jezero Crater ancient delta region.",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/location-type-cs",
          "code" : "surface-habitat"
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
