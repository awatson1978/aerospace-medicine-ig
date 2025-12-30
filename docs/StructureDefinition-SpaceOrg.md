# Space Organization - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Organization**

## Resource Profile: Space Organization 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceOrg | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceOrg |

 
STUB - Organizations involved with astronautics and space travel. 

**Usages:**

* Examples for this Profile: [Space Force](Organization-SpaceForce.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceOrg)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceOrg.csv), [Excel](StructureDefinition-SpaceOrg.xlsx), [Schematron](StructureDefinition-SpaceOrg.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceOrg",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceOrg",
  "version" : "0.5.5",
  "name" : "SpaceOrg",
  "title" : "Space Organization",
  "status" : "draft",
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
  "description" : "STUB - Organizations involved with astronautics and space travel.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      }
    ]
  }
}

```
