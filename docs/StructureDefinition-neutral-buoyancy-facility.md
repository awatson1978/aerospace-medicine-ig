# Neutral Buoyancy Facility - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Neutral Buoyancy Facility**

## Resource Profile: Neutral Buoyancy Facility 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-facility | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:NeutralBuoyancyFacility |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Facility for underwater astronaut training 

**Usages:**

* Refer to this Profile: [Decompression Protocol](StructureDefinition-decompression-protocol.md), [Neutral Buoyancy Training Session](StructureDefinition-neutral-buoyancy-session.md) and [Underwater Emergency Response](StructureDefinition-underwater-emergency-response.md)
* Examples for this Profile: [David Florida Laboratory](Location-CSADavidFloridaLaboratory.md), [European Astronaut Centre NBL](Location-EuropeanAstronautCentreNBL.md), [NASA Neutral Buoyancy Laboratory (NBL)](Location-NASANeutralBuoyancyLaboratory.md) and [Yuri Gagarin Cosmonaut Training Center](Location-YuriGagarinCosmonautTrainingCenter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/neutral-buoyancy-facility)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-neutral-buoyancy-facility.csv), [Excel](StructureDefinition-neutral-buoyancy-facility.xlsx), [Schematron](StructureDefinition-neutral-buoyancy-facility.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "neutral-buoyancy-facility",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/neutral-buoyancy-facility",
  "version" : "0.7.0",
  "name" : "NeutralBuoyancyFacility",
  "title" : "Neutral Buoyancy Facility",
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
  "description" : "Facility for underwater astronaut training",
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
  "baseDefinition" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-location",
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
