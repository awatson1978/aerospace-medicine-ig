# Planetary Protection Category - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Planetary Protection Category**

## Extension: Planetary Protection Category 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/planetary-protection-category | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:PlanetaryProtectionCategory |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

COSPAR planetary protection category applicable to the procedure, device, or observation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Microbial Contamination Condition](StructureDefinition-microbial-contamination-condition.md), [Microbial Contamination Risk](StructureDefinition-microbial-contamination-risk.md), [Microbial Viability Assay](StructureDefinition-microbial-viability-assay.md) and [Sterilization Procedure](StructureDefinition-sterilization-procedure.md)
* Examples for this Extension: [Observation/MicrobialAssay-SurfaceSwab-001](Observation-MicrobialAssay-SurfaceSwab-001.md), [Procedure/Sterilization-DHMR-001](Procedure-Sterilization-DHMR-001.md) and [RiskAssessment/ContaminationRisk-MarsLander-001](RiskAssessment-ContaminationRisk-MarsLander-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/planetary-protection-category)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-planetary-protection-category.csv), [Excel](StructureDefinition-planetary-protection-category.xlsx), [Schematron](StructureDefinition-planetary-protection-category.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "planetary-protection-category",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/planetary-protection-category",
  "version" : "0.7.0",
  "name" : "PlanetaryProtectionCategory",
  "title" : "Planetary Protection Category",
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
  "description" : "COSPAR planetary protection category applicable to the procedure, device, or observation",
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
      "expression" : "Procedure"
    },
    {
      "type" : "element",
      "expression" : "Device"
    },
    {
      "type" : "element",
      "expression" : "Observation"
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
        "short" : "Planetary Protection Category",
        "definition" : "COSPAR planetary protection category applicable to the procedure, device, or observation"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/planetary-protection-category"
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
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/planetary-protection-category-vs"
        }
      }
    ]
  }
}

```
