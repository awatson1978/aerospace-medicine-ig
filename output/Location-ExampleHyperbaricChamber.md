# Example Hyperbaric Chamber - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Hyperbaric Chamber**

## Example Location: Example Hyperbaric Chamber

Profile: [Hyperbaric Chamber](StructureDefinition-hyperbaric-chamber.md)

**status**: Active

**name**: Hyperbaric Medicine Center - Chamber 1

**description**: Multiplace hyperbaric chamber for decompression treatment

**type**: Hospital Unit - Specialized Care Services

**physicalType**: Room



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "ExampleHyperbaricChamber",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/hyperbaric-chamber"
    ]
  },
  "status" : "active",
  "name" : "Hyperbaric Medicine Center - Chamber 1",
  "description" : "Multiplace hyperbaric chamber for decompression treatment",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "HUSCS",
          "display" : "Hospital Unit - Specialized Care Services"
        }
      ]
    }
  ],
  "physicalType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "ro",
        "display" : "Room"
      }
    ]
  }
}

```
