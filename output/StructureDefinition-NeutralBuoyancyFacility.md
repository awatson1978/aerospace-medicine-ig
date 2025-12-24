# Neutral Buoyancy Facility - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Facility**

## Resource Profile: Neutral Buoyancy Facility 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancyFacility | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:NeutralBuoyancyFacility |

 
Facility for underwater astronaut training 

**Usages:**

* Refer to this Profile: [Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md), [Decompression Protocol](StructureDefinition-decompression-protocol.md), [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md) and [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md)
* Examples for this Profile: [David Florida Laboratory](Location-CSADavidFloridaLaboratory.md), [European Astronaut Centre NBL](Location-EuropeanAstronautCentreNBL.md), [NASA Neutral Buoyancy Laboratory (NBL)](Location-NASANeutralBuoyancyLaboratory.md) and [Yuri Gagarin Cosmonaut Training Center](Location-YuriGagarinCosmonautTrainingCenter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/NeutralBuoyancyFacility)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NeutralBuoyancyFacility.csv), [Excel](StructureDefinition-NeutralBuoyancyFacility.xlsx), [Schematron](StructureDefinition-NeutralBuoyancyFacility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NeutralBuoyancyFacility",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/NeutralBuoyancyFacility",
  "version" : "0.4.2",
  "name" : "NeutralBuoyancyFacility",
  "title" : "Neutral Buoyancy Facility",
  "status" : "draft",
  "date" : "2025-12-24T12:48:12-07:00",
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
  "description" : "Facility for underwater astronaut training",
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
  "baseDefinition" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceLocation",
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
