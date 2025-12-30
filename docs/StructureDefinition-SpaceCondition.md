# Space Health Condition - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Health Condition**

## Resource Profile: Space Health Condition 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceCondition |

 
Health conditions specific to outerspace environment. 

**Usages:**

* Derived from this Profile: [Decompression Sickness](StructureDefinition-DecompressionSickness.md)
* Examples for this Profile: [Condition/ConditionAsphyxiation](Condition-ConditionAsphyxiation.md), [Condition/ConditionBluntTrauma](Condition-ConditionBluntTrauma.md), [Condition/ConditionBurn](Condition-ConditionBurn.md), [Condition/ConditionHeartAttack](Condition-ConditionHeartAttack.md)...Show 6 more,[Condition/ConditionHypoxia](Condition-ConditionHypoxia.md),[Condition/ConditionOccularDegeneration](Condition-ConditionOccularDegeneration.md),[Condition/ConditionOsteoporosis](Condition-ConditionOsteoporosis.md),[Condition/ConditionRadiationExposure](Condition-ConditionRadiationExposure.md),[Condition/ConditionSmokeInhalation](Condition-ConditionSmokeInhalation.md)and[Condition/ConditionStroke](Condition-ConditionStroke.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceCondition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceCondition.csv), [Excel](StructureDefinition-SpaceCondition.xlsx), [Schematron](StructureDefinition-SpaceCondition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceCondition",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceCondition",
  "version" : "0.5.5",
  "name" : "SpaceCondition",
  "title" : "Space Health Condition",
  "status" : "draft",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Health conditions specific to outerspace environment.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      }
    ]
  }
}

```
