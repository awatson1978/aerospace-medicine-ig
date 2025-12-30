# Space Vehicle - v0.5.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Vehicle**

## Resource Profile: Space Vehicle 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceVehicle | *Version*:0.5.1 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceVehicle |

 
STUB - Vehicles that maintain controled environments or life support systems (ambulances, space craft, submarines, etc) 

**Usages:**

* Examples for this Profile: [Crew Dragon Endeavour](Location-CrewDragonEndeavour.md), [Crew Dragon Resilience](Location-CrewDragonResilience.md), [Mars Ascent Vehicle](Location-MarsAscentVehicle.md), [Mars Transit Vehicle](Location-MarsTransitVehicle.md)...Show 2 more,[Soyuz MS](Location-SoyuzMS.md)and[Boeing Starliner Calypso](Location-StarlinerCalypso.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceVehicle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceVehicle.csv), [Excel](StructureDefinition-SpaceVehicle.xlsx), [Schematron](StructureDefinition-SpaceVehicle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceVehicle",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceVehicle",
  "version" : "0.5.1",
  "name" : "SpaceVehicle",
  "title" : "Space Vehicle",
  "status" : "draft",
  "date" : "2025-12-29T13:16:13-07:00",
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
