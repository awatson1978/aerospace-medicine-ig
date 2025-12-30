# Diving Equipment - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Equipment**

## Resource Profile: Diving Equipment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/DivingEquipment | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:DivingEquipment |

 
Equipment used for diving operations and underwater training 

**Usages:**

* Refer to this Profile: [Advanced Dive Profile](StructureDefinition-advanced-dive-profile.md)
* Examples for this Profile: [Device/NeutralBuoyancyFacilityEquipment](Device-NeutralBuoyancyFacilityEquipment.md) and [Device/ScubaDivingEquipment](Device-ScubaDivingEquipment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/DivingEquipment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DivingEquipment.csv), [Excel](StructureDefinition-DivingEquipment.xlsx), [Schematron](StructureDefinition-DivingEquipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DivingEquipment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/DivingEquipment",
  "version" : "0.5.5",
  "name" : "DivingEquipment",
  "title" : "Diving Equipment",
  "status" : "draft",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "baseDefinition" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment",
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
