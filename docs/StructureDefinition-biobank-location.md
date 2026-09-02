# Biobank Location - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biobank Location**

## Extension: Biobank Location 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biobank-location | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BiobankLocation |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

Storage location details for astronaut biobank specimens

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [Specimen/DBS-Specimen-001](Specimen-DBS-Specimen-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/biobank-location)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-biobank-location.csv), [Excel](StructureDefinition-biobank-location.xlsx), [Schematron](StructureDefinition-biobank-location.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "biobank-location",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biobank-location",
  "version" : "0.7.0",
  "name" : "BiobankLocation",
  "title" : "Biobank Location",
  "status" : "active",
  "date" : "2026-09-02T13:24:45-05:00",
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
  "description" : "Storage location details for astronaut biobank specimens",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
      "expression" : "Specimen"
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
        "short" : "Biobank Location",
        "definition" : "Storage location details for astronaut biobank specimens"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:facilityId",
        "path" : "Extension.extension",
        "sliceName" : "facilityId",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:facilityId.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:facilityId.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "facilityId"
      },
      {
        "id" : "Extension.extension:facilityId.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Biobank facility identifier",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:storageTemperature",
        "path" : "Extension.extension",
        "sliceName" : "storageTemperature",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:storageTemperature.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:storageTemperature.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "storageTemperature"
      },
      {
        "id" : "Extension.extension:storageTemperature.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Storage temperature in degrees Celsius",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:storageTemperature.value[x].system",
        "path" : "Extension.extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.extension:storageTemperature.value[x].code",
        "path" : "Extension.extension.value[x].code",
        "patternCode" : "Cel"
      },
      {
        "id" : "Extension.extension:containerBarcode",
        "path" : "Extension.extension",
        "sliceName" : "containerBarcode",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:containerBarcode.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:containerBarcode.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "containerBarcode"
      },
      {
        "id" : "Extension.extension:containerBarcode.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Specimen container barcode identifier",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biobank-location"
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
