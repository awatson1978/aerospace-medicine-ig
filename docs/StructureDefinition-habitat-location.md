# Habitat Location - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitat Location**

## Resource Profile: Habitat Location 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/habitat-location | *Version*:0.5.3 |
| Active as of 2025-12-29 | *Computable Name*:HabitatLocation |

 
Location profile for lunar habitats, Gateway modules, and landing sites with selenographic coordinates and region code 

**Usages:**

* Examples for this Profile: [Lunar Gateway - HALO Module](Location-Gateway-HALO-Module.md) and [Artemis III Landing Site - Malapert Massif](Location-Malapert-Massif-Landing-Site.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/habitat-location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-habitat-location.csv), [Excel](StructureDefinition-habitat-location.xlsx), [Schematron](StructureDefinition-habitat-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "habitat-location",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/habitat-location",
  "version" : "0.5.3",
  "name" : "HabitatLocation",
  "title" : "Habitat Location",
  "status" : "active",
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Location profile for lunar habitats, Gateway modules, and landing sites with selenographic coordinates and region code",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      },
      {
        "id" : "Location.extension",
        "path" : "Location.extension",
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
        "id" : "Location.extension:lunarCoordinates",
        "path" : "Location.extension",
        "sliceName" : "lunarCoordinates",
        "short" : "Selenographic latitude/longitude",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/lunar-coordinates"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.extension:radiationShielding",
        "path" : "Location.extension",
        "sliceName" : "radiationShielding",
        "short" : "Habitat shielding characteristics",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/uv/aerospace/StructureDefinition/radiation-shielding"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "short" : "Habitat or location name (e.g., Malapert Massif Landing Site, Gateway HALO)",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Location.description",
        "path" : "Location.description",
        "short" : "Detailed description of location including terrain, features, environmental conditions",
        "mustSupport" : true
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "short" : "Location type (orbital station, surface habitat, landing site)",
        "mustSupport" : true
      },
      {
        "id" : "Location.position",
        "path" : "Location.position",
        "short" : "Selenographic coordinates (latitude/longitude)",
        "mustSupport" : true
      }
    ]
  }
}

```
