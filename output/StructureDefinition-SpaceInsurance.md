# Space insurance - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space insurance**

## Resource Profile: Space insurance 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceInsurance | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpaceInsurance |

 
STUB - Insurance plan for space travel 

**Usages:**

* Examples for this Profile: [InsurancePlan/SpaceTourismTravelInsurance](InsurancePlan-SpaceTourismTravelInsurance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceInsurance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceInsurance.csv), [Excel](StructureDefinition-SpaceInsurance.xlsx), [Schematron](StructureDefinition-SpaceInsurance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceInsurance",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceInsurance",
  "version" : "0.4.2",
  "name" : "SpaceInsurance",
  "title" : "Space insurance",
  "status" : "draft",
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
  "description" : "STUB - Insurance plan for space travel",
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
