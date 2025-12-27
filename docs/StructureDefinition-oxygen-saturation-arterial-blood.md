# Oxygen Saturation in Arterial blood, method not specified - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Oxygen Saturation in Arterial blood, method not specified**

## Resource Profile: Oxygen Saturation in Arterial blood, method not specified 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood | *Version*:0.5.0 |
| Active as of 2022-09-11 | *Computable Name*:OxygenSaturationArterialBlood |
| **Copyright/Legal**: Logica Health, all rights reserved Creative Commons License | |

 
A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/oxygen-saturation-arterial-blood)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-oxygen-saturation-arterial-blood.csv), [Excel](StructureDefinition-oxygen-saturation-arterial-blood.xlsx), [Schematron](StructureDefinition-oxygen-saturation-arterial-blood.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "oxygen-saturation-arterial-blood",
  "url" : "http://hl7.org/fhir/us/vitals/StructureDefinition/oxygen-saturation-arterial-blood",
  "version" : "0.5.0",
  "name" : "OxygenSaturationArterialBlood",
  "title" : "Oxygen Saturation in Arterial blood, method not specified",
  "status" : "active",
  "date" : "2022-09-11T16:19:45+00:00",
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
  "description" : "A measurement of the percentage to which oxygen is bound to hemoglobin in arterial blood.",
  "copyright" : "Logica Health, all rights reserved Creative Commons License",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/oxygensat",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Oxygen saturation in Arterial blood"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vitals/ValueSet/LowOnlyNumericResultIntVS"
        }
      }
    ]
  }
}

```
