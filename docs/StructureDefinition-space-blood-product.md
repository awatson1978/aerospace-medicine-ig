# Space Blood Product - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Blood Product**

## Resource Profile: Space Blood Product 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-blood-product | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:SpaceBloodProduct |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Blood products adapted for spaceflight including lyophilized RBCs and freeze-dried plasma 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-blood-product)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-blood-product.csv), [Excel](StructureDefinition-space-blood-product.xlsx), [Schematron](StructureDefinition-space-blood-product.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-blood-product",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-blood-product",
  "version" : "0.7.0",
  "name" : "SpaceBloodProduct",
  "title" : "Space Blood Product",
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
  "description" : "Blood products adapted for spaceflight including lyophilized RBCs and freeze-dried plasma",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
  "type" : "BiologicallyDerivedProduct",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "BiologicallyDerivedProduct",
        "path" : "BiologicallyDerivedProduct"
      },
      {
        "id" : "BiologicallyDerivedProduct.productCategory",
        "path" : "BiologicallyDerivedProduct.productCategory",
        "patternCode" : "cells",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.productCode",
        "path" : "BiologicallyDerivedProduct.productCode",
        "short" : "Type of space-adapted blood product",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/space-blood-product-vs"
        }
      },
      {
        "id" : "BiologicallyDerivedProduct.collection",
        "path" : "BiologicallyDerivedProduct.collection",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.collection.source",
        "path" : "BiologicallyDerivedProduct.collection.source",
        "short" : "Donor reference",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.collection.collected[x]",
        "path" : "BiologicallyDerivedProduct.collection.collected[x]",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.processing",
        "path" : "BiologicallyDerivedProduct.processing",
        "short" : "Processing steps (lyophilization, rehydration, irradiation)",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.processing.description",
        "path" : "BiologicallyDerivedProduct.processing.description",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.processing.procedure",
        "path" : "BiologicallyDerivedProduct.processing.procedure",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.storage",
        "path" : "BiologicallyDerivedProduct.storage",
        "short" : "Storage conditions",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.storage.temperature",
        "path" : "BiologicallyDerivedProduct.storage.temperature",
        "mustSupport" : true
      },
      {
        "id" : "BiologicallyDerivedProduct.storage.duration",
        "path" : "BiologicallyDerivedProduct.storage.duration",
        "mustSupport" : true
      }
    ]
  }
}

```
