# Antiemetic Medication - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Antiemetic Medication**

## Resource Profile: Antiemetic Medication 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-medication | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:AntiemeticMedication |

 
Antiemetic medications used for space motion sickness prophylaxis and treatment 

**Usages:**

* Refer to this Profile: [Antiemetic Medication Administration](StructureDefinition-antiemetic-administration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/antiemetic-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-antiemetic-medication.csv), [Excel](StructureDefinition-antiemetic-medication.xlsx), [Schematron](StructureDefinition-antiemetic-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "antiemetic-medication",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/antiemetic-medication",
  "version" : "0.6.0",
  "name" : "AntiemeticMedication",
  "title" : "Antiemetic Medication",
  "status" : "active",
  "date" : "2026-05-25T15:07:02-06:00",
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
  "description" : "Antiemetic medications used for space motion sickness prophylaxis and treatment",
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
        "short" : "Antiemetic medication type",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/antiemetic-medication-vs"
        }
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "short" : "Dosage form (tablet, injection, transdermal patch)",
        "mustSupport" : true
      }
    ]
  }
}

```
