# Training Session Duration - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Training Session Duration**

## Extension: Training Session Duration 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/session-duration | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SessionDuration |

Duration of the neutral buoyancy training session

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Neutral Buoyancy Training Session](StructureDefinition-NeutralBuoyancySession.md) and [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/session-duration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-session-duration.csv), [Excel](StructureDefinition-session-duration.xlsx), [Schematron](StructureDefinition-session-duration.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "session-duration",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/session-duration",
  "version" : "0.4.2",
  "name" : "SessionDuration",
  "title" : "Training Session Duration",
  "status" : "draft",
  "date" : "2025-12-24T17:35:27-07:00",
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
  "description" : "Duration of the neutral buoyancy training session",
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
        "short" : "Training Session Duration",
        "definition" : "Duration of the neutral buoyancy training session"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/session-duration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      }
    ]
  }
}

```
