# Space Insurance Contract - v0.5.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Insurance Contract**

## Resource Profile: Space Insurance Contract 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceInsuranceContract | *Version*:0.5.9 |
| Draft as of 2026-02-04 | *Computable Name*:SpaceInsuranceContract |

 
STUB - Specialized contract coverage for space travel 

**Usages:**

* Examples for this Profile: [Contract/SpaceTourismTravelInsuranceContract](Contract-SpaceTourismTravelInsuranceContract.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceInsuranceContract)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceInsuranceContract.csv), [Excel](StructureDefinition-SpaceInsuranceContract.xlsx), [Schematron](StructureDefinition-SpaceInsuranceContract.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceInsuranceContract",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceInsuranceContract",
  "version" : "0.5.9",
  "name" : "SpaceInsuranceContract",
  "title" : "Space Insurance Contract",
  "status" : "draft",
  "date" : "2026-02-04T10:26:00-06:00",
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
