# Space insurance - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space insurance**

## Resource Profile: Space insurance 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-insurance | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceInsurance |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
STUB - Insurance plan for space travel 

**Usages:**

* Examples for this Profile: [InsurancePlan/SpaceTourismTravelInsurance](InsurancePlan-SpaceTourismTravelInsurance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-insurance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-insurance.csv), [Excel](StructureDefinition-space-insurance.xlsx), [Schematron](StructureDefinition-space-insurance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-insurance",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-insurance",
  "version" : "0.7.0",
  "name" : "SpaceInsurance",
  "title" : "Space insurance",
  "status" : "draft",
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
  "description" : "STUB - Insurance plan for space travel",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
  "type" : "InsurancePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/InsurancePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "InsurancePlan",
        "path" : "InsurancePlan"
      }
    ]
  }
}

```
