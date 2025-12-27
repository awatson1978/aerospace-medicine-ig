# Space Insurance Contract - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Insurance Contract**

## Resource Profile: Space Insurance Contract 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceInsuranceContract | *Version*:0.5.0 |
| Draft as of 2025-12-25 | *Computable Name*:SpaceInsuranceContract |

 
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
  "version" : "0.5.0",
  "name" : "SpaceInsuranceContract",
  "title" : "Space Insurance Contract",
  "status" : "draft",
  "date" : "2025-12-25T11:43:35-07:00",
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
