# Circadian Phase - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Circadian Phase**

## Extension: Circadian Phase 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/circadian-phase | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:CircadianPhase |

Circadian rhythm phase at the time of observation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Body Temperature Observation](StructureDefinition-space-body-temperature.md)
* Examples for this Extension: [Observation/Body-Temp-FD30-Morning](Observation-Body-Temp-FD30-Morning.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/circadian-phase)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-circadian-phase.csv), [Excel](StructureDefinition-circadian-phase.xlsx), [Schematron](StructureDefinition-circadian-phase.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "circadian-phase",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/circadian-phase",
  "version" : "0.6.2",
  "name" : "CircadianPhase",
  "title" : "Circadian Phase",
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
  "description" : "Circadian rhythm phase at the time of observation",
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
        "short" : "Circadian Phase",
        "definition" : "Circadian rhythm phase at the time of observation"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/circadian-phase"
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
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/circadian-phase-vs"
        }
      }
    ]
  }
}

```
