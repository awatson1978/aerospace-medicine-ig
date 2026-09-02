# Diving Equipment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Equipment**

## Resource Profile: Diving Equipment 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diving-equipment | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:DivingEquipment |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Equipment used for diving operations and underwater training 

**Usages:**

* Refer to this Profile: [Advanced Dive Profile](StructureDefinition-advanced-dive-profile.md)
* Examples for this Profile: [Device/NeutralBuoyancyFacilityEquipment](Device-NeutralBuoyancyFacilityEquipment.md) and [Device/ScubaDivingEquipment](Device-ScubaDivingEquipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/diving-equipment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-diving-equipment.csv), [Excel](StructureDefinition-diving-equipment.xlsx), [Schematron](StructureDefinition-diving-equipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "diving-equipment",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/diving-equipment",
  "version" : "0.7.0",
  "name" : "DivingEquipment",
  "title" : "Diving Equipment",
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
  "description" : "Equipment used for diving operations and underwater training",
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
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      },
      {
        "id" : "Device.status",
        "path" : "Device.status",
        "mustSupport" : true
      },
      {
        "id" : "Device.type",
        "path" : "Device.type",
        "mustSupport" : true
      }
    ]
  }
}

```
