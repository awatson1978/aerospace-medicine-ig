# Gravity Context - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gravity Context**

## Extension: Gravity Context 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:GravityContext |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Gravitational environment in which the observation, condition, or procedure occurred

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md), [BFRT Procedure](StructureDefinition-bfrt-procedure.md), [Biomanufacturing Procedure](StructureDefinition-biomanufacturing-procedure.md), [BLiSS Resource Output](StructureDefinition-bliss-resource-output.md)...Show 17 more,[Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.md),[Flow Directionality Index Observation](StructureDefinition-flow-directionality-index-observation.md),[Internal Jugular Vein Area Observation](StructureDefinition-internal-jugular-vein-area-observation.md),[Internal Jugular Vein Flow Observation](StructureDefinition-internal-jugular-vein-flow-observation.md),[Internal Jugular Vein Pressure Observation](StructureDefinition-internal-jugular-vein-pressure-observation.md),[Lower Body Negative Pressure Procedure](StructureDefinition-lower-body-negative-pressure-procedure.md),[Parabolic Flight Exposure](StructureDefinition-parabolic-flight-exposure.md),[Radioprotective Medication Administration](StructureDefinition-radioprotective-administration.md),[Space ECG Observation](StructureDefinition-space-ecg-observation.md),[Space Motion Sickness Condition](StructureDefinition-space-motion-sickness-condition.md),[Space Sleep Study Observation](StructureDefinition-space-sleep-study.md),[Space Specimen Collection](StructureDefinition-space-specimen-collection.md),[Space Surgical Procedure](StructureDefinition-space-surgical-procedure.md),[Space Transfusion Procedure](StructureDefinition-space-transfusion-procedure.md),[Spaceflight Specimen](StructureDefinition-spaceflight-specimen.md),[Sterilization Procedure](StructureDefinition-sterilization-procedure.md)and[xEVAS Suit Definition](StructureDefinition-xevas-suit-definition.md)
* Examples for this Extension: [Condition/SMS-Episode-FD2](Condition-SMS-Episode-FD2.md), [DeviceDefinition/xEVAS-LunarSuit-Def-001](DeviceDefinition-xEVAS-LunarSuit-Def-001.md), [MedicationAdministration/Promethazine-IM-Rescue](MedicationAdministration-Promethazine-IM-Rescue.md), [Observation/BLiSS-O2-Production-001](Observation-BLiSS-O2-Production-001.md)...Show 6 more,[Observation/FDI-Components-001](Observation-FDI-Components-001.md),[Observation/IJV-Flow-During-LBNP-001](Observation-IJV-Flow-During-LBNP-001.md),[Procedure/BFRT-LowerBody-Session-001](Procedure-BFRT-LowerBody-Session-001.md),[Procedure/Biomanufacturing-AlgaeCultivation-001](Procedure-Biomanufacturing-AlgaeCultivation-001.md),[Procedure/Emergency-DragonReturn-001](Procedure-Emergency-DragonReturn-001.md)and[Procedure/LBNP-Session-Microgravity-001](Procedure-LBNP-Session-Microgravity-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/gravity-context)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gravity-context.csv), [Excel](StructureDefinition-gravity-context.xlsx), [Schematron](StructureDefinition-gravity-context.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gravity-context",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context",
  "version" : "0.7.0",
  "name" : "GravityContext",
  "title" : "Gravity Context",
  "status" : "active",
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
  "description" : "Gravitational environment in which the observation, condition, or procedure occurred",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    },
    {
      "type" : "element",
      "expression" : "Condition"
    },
    {
      "type" : "element",
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "MedicationAdministration"
    },
    {
      "type" : "element",
      "expression" : "CarePlan"
    },
    {
      "type" : "element",
      "expression" : "DeviceDefinition"
    },
    {
      "type" : "element",
      "expression" : "Specimen"
    },
    {
      "type" : "element",
      "expression" : "Device"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Gravity Context",
        "definition" : "Gravitational environment in which the observation, condition, or procedure occurred"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/gravity-context-vs"
        }
      }
    ]
  }
}

```
