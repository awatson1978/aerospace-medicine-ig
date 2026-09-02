# Biological Feedstock - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Biological Feedstock**

## Resource Profile: Biological Feedstock 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biological-feedstock | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:BiologicalFeedstock |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Biological feedstock or bioproduct used in or produced by biomanufacturing processes 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/biological-feedstock)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-biological-feedstock.csv), [Excel](StructureDefinition-biological-feedstock.xlsx), [Schematron](StructureDefinition-biological-feedstock.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "biological-feedstock",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biological-feedstock",
  "version" : "0.7.0",
  "name" : "BiologicalFeedstock",
  "title" : "Biological Feedstock",
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
  "description" : "Biological feedstock or bioproduct used in or produced by biomanufacturing processes",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "orim",
      "uri" : "http://hl7.org/orim",
      "name" : "Ontological RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Substance",
        "path" : "Substance"
      },
      {
        "id" : "Substance.status",
        "path" : "Substance.status",
        "mustSupport" : true
      },
      {
        "id" : "Substance.category",
        "path" : "Substance.category",
        "short" : "Classification (feedstock, intermediate, product)",
        "mustSupport" : true
      },
      {
        "id" : "Substance.code",
        "path" : "Substance.code",
        "short" : "Feedstock or bioproduct identity",
        "mustSupport" : true
      },
      {
        "id" : "Substance.description",
        "path" : "Substance.description",
        "short" : "Description of the biological material",
        "mustSupport" : true
      },
      {
        "id" : "Substance.instance",
        "path" : "Substance.instance",
        "mustSupport" : true
      },
      {
        "id" : "Substance.instance.quantity",
        "path" : "Substance.instance.quantity",
        "short" : "Available quantity",
        "mustSupport" : true
      }
    ]
  }
}

```
