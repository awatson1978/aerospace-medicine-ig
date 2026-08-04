# Radioprotective Medication - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radioprotective Medication**

## Resource Profile: Radioprotective Medication 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/radioprotective-medication | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:RadioprotectiveMedication |

 
Radioprotective and antioxidant medications used as countermeasures against space radiation 

**Usages:**

* Refer to this Profile: [Radioprotective Medication Administration](StructureDefinition-radioprotective-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/radioprotective-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-radioprotective-medication.csv), [Excel](StructureDefinition-radioprotective-medication.xlsx), [Schematron](StructureDefinition-radioprotective-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "radioprotective-medication",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/radioprotective-medication",
  "version" : "0.6.2",
  "name" : "RadioprotectiveMedication",
  "title" : "Radioprotective Medication",
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
  "description" : "Radioprotective and antioxidant medications used as countermeasures against space radiation",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "short" : "Radioprotective medication type",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/radioprotective-medication-vs"
        }
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "short" : "Dosage form (oral capsule, IV solution, etc.)",
        "mustSupport" : true
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "short" : "Active ingredients for combination formulations",
        "mustSupport" : true
      }
    ]
  }
}

```
