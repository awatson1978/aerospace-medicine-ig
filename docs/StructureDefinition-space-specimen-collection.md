# Space Specimen Collection - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Specimen Collection**

## Resource Profile: Space Specimen Collection 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/space-specimen-collection | *Version*:0.6.0 |
| Active as of 2026-05-25 | *Computable Name*:SpaceSpecimenCollection |

 
Specimen collected during spaceflight using microgravity-adapted methods 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-specimen-collection)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-specimen-collection.csv), [Excel](StructureDefinition-space-specimen-collection.xlsx), [Schematron](StructureDefinition-space-specimen-collection.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-specimen-collection",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/space-specimen-collection",
  "version" : "0.6.0",
  "name" : "SpaceSpecimenCollection",
  "title" : "Space Specimen Collection",
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
  "description" : "Specimen collected during spaceflight using microgravity-adapted methods",
  "fhirVersion" : "4.0.1",
  "mapping" : [
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen",
        "path" : "Specimen"
      },
      {
        "id" : "Specimen.extension",
        "path" : "Specimen.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Specimen.extension:missionContext",
        "path" : "Specimen.extension",
        "sliceName" : "missionContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.extension:gravityContext",
        "path" : "Specimen.extension",
        "sliceName" : "gravityContext",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "short" : "Specimen type",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://mitre.org/fhir/space-health/ValueSet/space-specimen-type-vs"
        }
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection",
        "path" : "Specimen.collection",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.collected[x]",
        "path" : "Specimen.collection.collected[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.method",
        "path" : "Specimen.collection.method",
        "short" : "Collection method adapted for microgravity",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.collection.bodySite",
        "path" : "Specimen.collection.bodySite",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.container",
        "path" : "Specimen.container",
        "short" : "Microgravity-safe specimen container",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.container.type",
        "path" : "Specimen.container.type",
        "mustSupport" : true
      }
    ]
  }
}

```
