# Space Vehicle - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Vehicle**

## Resource Profile: Space Vehicle 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-vehicle | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceVehicle |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc) 

**Usages:**

* Examples for this Profile: [Crew Dragon Endeavour](Location-CrewDragonEndeavour.md), [Crew Dragon Resilience](Location-CrewDragonResilience.md), [Mars Ascent Vehicle](Location-MarsAscentVehicle.md), [Mars Transit Vehicle](Location-MarsTransitVehicle.md)...Show 2 more,[Soyuz MS](Location-SoyuzMS.md)and[Boeing Starliner Calypso](Location-StarlinerCalypso.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-vehicle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-vehicle.csv), [Excel](StructureDefinition-space-vehicle.xlsx), [Schematron](StructureDefinition-space-vehicle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-vehicle",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-vehicle",
  "version" : "0.7.0",
  "name" : "SpaceVehicle",
  "title" : "Space Vehicle",
  "status" : "draft",
  "date" : "2026-09-02T13:24:45-05:00",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc)",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      }
    ]
  }
}

```
