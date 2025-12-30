# Lunar Coordinates - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Coordinates**

## Extension: Lunar Coordinates 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/lunar-coordinates | *Version*:0.5.5 |
| Active as of 2025-12-30 | *Computable Name*:LunarCoordinates |

Selenographic latitude and longitude for lunar surface locations

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Habitat Location](StructureDefinition-habitat-location.md)
* Examples for this Extension: [Artemis III Landing Site - Malapert Massif](Location-Malapert-Massif-Landing-Site.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/lunar-coordinates)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-lunar-coordinates.csv), [Excel](StructureDefinition-lunar-coordinates.xlsx), [Schematron](StructureDefinition-lunar-coordinates.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "lunar-coordinates",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/lunar-coordinates",
  "version" : "0.5.5",
  "name" : "LunarCoordinates",
  "title" : "Lunar Coordinates",
  "status" : "active",
  "date" : "2025-12-30T00:07:25-07:00",
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
  "description" : "Selenographic latitude and longitude for lunar surface locations",
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
      "expression" : "Location"
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
        "short" : "Lunar Coordinates",
        "definition" : "Selenographic latitude and longitude for lunar surface locations"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:latitude",
        "path" : "Extension.extension",
        "sliceName" : "latitude",
        "short" : "Selenographic latitude (degrees, -90 to +90)",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:latitude.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:latitude.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "latitude"
      },
      {
        "id" : "Extension.extension:latitude.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "Extension.extension:longitude",
        "path" : "Extension.extension",
        "sliceName" : "longitude",
        "short" : "Selenographic longitude (degrees, 0 to 360)",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:longitude.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:longitude.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "longitude"
      },
      {
        "id" : "Extension.extension:longitude.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/lunar-coordinates"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
