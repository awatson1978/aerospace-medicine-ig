# Areographic Coordinates - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Areographic Coordinates**

## Extension: Areographic Coordinates 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/areographic-coordinates | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:AreographicCoordinates |

Mars latitude and longitude for surface locations

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/areographic-coordinates)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-areographic-coordinates.csv), [Excel](StructureDefinition-areographic-coordinates.xlsx), [Schematron](StructureDefinition-areographic-coordinates.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "areographic-coordinates",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/areographic-coordinates",
  "version" : "0.4.2",
  "name" : "AreographicCoordinates",
  "title" : "Areographic Coordinates",
  "status" : "active",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Mars latitude and longitude for surface locations",
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
        "short" : "Areographic Coordinates",
        "definition" : "Mars latitude and longitude for surface locations"
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
        "short" : "Areographic latitude (degrees, -90 to +90)",
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
        "short" : "Areographic longitude (degrees, 0 to 360)",
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
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/areographic-coordinates"
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
