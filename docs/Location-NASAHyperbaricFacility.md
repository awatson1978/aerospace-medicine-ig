# NASA Hyperbaric Facility - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Hyperbaric Facility**

## Location: NASA Hyperbaric Facility

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/public-record](https://awatson1978.github.io/aerospace-medicine-ig/provenance/public-record)

Profile: [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

**status**: Active

**name**: NASA Hyperbaric Treatment Facility

**description**: Hyperbaric chamber for treating decompression sickness and supporting diving operations

**type**: specimen collection site

**physicalType**: Room



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "NASAHyperbaricFacility",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/public-record",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/hyperbaric-chamber"
    ]
  },
  "status" : "active",
  "name" : "NASA Hyperbaric Treatment Facility",
  "description" : "Hyperbaric chamber for treating decompression sickness and supporting diving operations",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "HUSCS"
        }
      ]
    }
  ],
  "physicalType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "ro"
      }
    ]
  }
}

```
