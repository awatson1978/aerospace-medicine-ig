# Crew Coordination Assessment - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Crew Coordination Assessment**

## Extension: Crew Coordination Assessment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/crew-coordination | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:CrewCoordination |

Assessment of crew coordination during simulation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Underwater EVA Simulation](StructureDefinition-UnderwaterEVASimulation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/crew-coordination)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-crew-coordination.csv), [Excel](StructureDefinition-crew-coordination.xlsx), [Schematron](StructureDefinition-crew-coordination.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "crew-coordination",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/crew-coordination",
  "version" : "0.4.2",
  "name" : "CrewCoordination",
  "title" : "Crew Coordination Assessment",
  "status" : "draft",
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Assessment of crew coordination during simulation",
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
        "short" : "Crew Coordination Assessment",
        "definition" : "Assessment of crew coordination during simulation"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/crew-coordination"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
