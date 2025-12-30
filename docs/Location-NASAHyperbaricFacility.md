# NASA Hyperbaric Facility - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NASA Hyperbaric Facility**

## Example Location: NASA Hyperbaric Facility

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber"
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
