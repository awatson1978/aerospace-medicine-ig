# Planetary Protection Category - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Planetary Protection Category**

## Extension: Planetary Protection Category 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:PlanetaryProtectionCategory |

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
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category",
  "version" : "0.6.2",
  "name" : "PlanetaryProtectionCategory",
  "title" : "Planetary Protection Category",
  "status" : "active",
  "date" : "2026-08-03T22:31:50-05:00",
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
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category"
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
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/planetary-protection-category-vs"
        }
      }
    ]
  }
}

```
