# Adaptations of Bone Health - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Adaptations of Bone Health**

## ValueSet: Adaptations of Bone Health 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SpaceAdaptationBoneHealth | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceAdaptationBoneHealth |

 
Bone health adaptations observed in spaceflight conditions. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "SpaceAdaptationBoneHealth",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SpaceAdaptationBoneHealth",
  "version" : "0.5.6",
  "name" : "SpaceAdaptationBoneHealth",
  "title" : "Adaptations of Bone Health",
  "status" : "draft",
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Bone health adaptations observed in spaceflight conditions.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "20199007",
            "display" : "Bone mineral density (BMD) below expected range for age"
          },
          {
            "code" : "86198006",
            "display" : "Deconditioning of musculoskeletal system"
          },
          {
            "code" : "89348000",
            "display" : "Increased bone resorption"
          },
          {
            "code" : "52910005",
            "display" : "Hypocalcemia"
          },
          {
            "code" : "73359002",
            "display" : "Exposure to weightlessness"
          },
          {
            "code" : "89134000",
            "display" : "Long term skeletal complication"
          },
          {
            "code" : "10141000122103",
            "display" : "Bone marrow cellularity abnormal"
          },
          {
            "code" : "102200004",
            "display" : "Endocrine function of bone"
          },
          {
            "code" : "18286008",
            "display" : "Rehabilitation procedure"
          },
          {
            "code" : "101430000",
            "display" : "Bone strength improvement"
          }
        ]
      }
    ]
  }
}

```
