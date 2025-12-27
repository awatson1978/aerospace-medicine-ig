# Cardiovascular Fitness Assessment - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cardiovascular Fitness Assessment**

## Extension: Cardiovascular Fitness Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/cardiovascular-fitness | *Version*:0.5.0 |
| Draft as of 2025-12-25 | *Computable Name*:CardiovascularFitness |

Assessment of cardiovascular fitness for diving

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Dive Medical Clearance](StructureDefinition-DiveMedicalClearance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/cardiovascular-fitness)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-cardiovascular-fitness.csv), [Excel](StructureDefinition-cardiovascular-fitness.xlsx), [Schematron](StructureDefinition-cardiovascular-fitness.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cardiovascular-fitness",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/cardiovascular-fitness",
  "version" : "0.5.0",
  "name" : "CardiovascularFitness",
  "title" : "Cardiovascular Fitness Assessment",
  "status" : "draft",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Assessment of cardiovascular fitness for diving",
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
      "expression" : "Element"
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
        "short" : "Cardiovascular Fitness Assessment",
        "definition" : "Assessment of cardiovascular fitness for diving"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/cardiovascular-fitness"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation"]
          }
        ]
      }
    ]
  }
}

```
