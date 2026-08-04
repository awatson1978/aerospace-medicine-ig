# xEVAS Suit Definition - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xEVAS Suit Definition**

## Resource Profile: xEVAS Suit Definition 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/xevas-suit-definition | *Version*:0.6.2 |
| Active as of 2026-08-03 | *Computable Name*:XEVASSuitDefinition |

 
Definition of an Exploration Extravehicular Activity Suit (xEVAS) including model, capabilities, and operational parameters 

**Usages:**

* Examples for this Profile: [DeviceDefinition/xEVAS-LunarSuit-Def-001](DeviceDefinition-xEVAS-LunarSuit-Def-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/xevas-suit-definition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-xevas-suit-definition.csv), [Excel](StructureDefinition-xevas-suit-definition.xlsx), [Schematron](StructureDefinition-xevas-suit-definition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "xevas-suit-definition",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/xevas-suit-definition",
  "version" : "0.6.2",
  "name" : "XEVASSuitDefinition",
  "title" : "xEVAS Suit Definition",
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
  "description" : "Definition of an Exploration Extravehicular Activity Suit (xEVAS) including model, capabilities, and operational parameters",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DeviceDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DeviceDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DeviceDefinition",
        "path" : "DeviceDefinition"
      },
      {
        "id" : "DeviceDefinition.extension",
        "path" : "DeviceDefinition.extension",
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
        "id" : "DeviceDefinition.extension:gravityContext",
        "path" : "DeviceDefinition.extension",
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
        "id" : "DeviceDefinition.manufacturer[x]",
        "path" : "DeviceDefinition.manufacturer[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "DeviceDefinition.manufacturer[x]:manufacturerString",
        "path" : "DeviceDefinition.manufacturer[x]",
        "sliceName" : "manufacturerString",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.deviceName",
        "path" : "DeviceDefinition.deviceName",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.deviceName.name",
        "path" : "DeviceDefinition.deviceName.name",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.deviceName.type",
        "path" : "DeviceDefinition.deviceName.type",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.modelNumber",
        "path" : "DeviceDefinition.modelNumber",
        "short" : "Suit model number",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.type",
        "path" : "DeviceDefinition.type",
        "short" : "Suit type classification",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.property",
        "path" : "DeviceDefinition.property",
        "short" : "Suit properties (pressure, O2 duration, thermal limits)",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.property.type",
        "path" : "DeviceDefinition.property.type",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.property.valueQuantity",
        "path" : "DeviceDefinition.property.valueQuantity",
        "mustSupport" : true
      },
      {
        "id" : "DeviceDefinition.note",
        "path" : "DeviceDefinition.note",
        "short" : "Additional capability notes",
        "mustSupport" : true
      }
    ]
  }
}

```
