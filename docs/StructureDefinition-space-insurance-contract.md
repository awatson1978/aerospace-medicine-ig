# Space Insurance Contract - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Insurance Contract**

## Resource Profile: Space Insurance Contract 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-insurance-contract | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceInsuranceContract |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
STUB - Specialized contract coverage for space travel 

**Usages:**

* Examples for this Profile: [Contract/SpaceTourismTravelInsuranceContract](Contract-SpaceTourismTravelInsuranceContract.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-insurance-contract)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-insurance-contract.csv), [Excel](StructureDefinition-space-insurance-contract.xlsx), [Schematron](StructureDefinition-space-insurance-contract.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-insurance-contract",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-insurance-contract",
  "version" : "0.7.0",
  "name" : "SpaceInsuranceContract",
  "title" : "Space Insurance Contract",
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
  "description" : "STUB - Specialized contract coverage for space travel",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
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
  "type" : "Contract",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Contract",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Contract",
        "path" : "Contract"
      }
    ]
  }
}

```
