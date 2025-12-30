# Stress and Physiological Factors - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stress and Physiological Factors**

## ValueSet: Stress and Physiological Factors 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/SpaceflightStressFactors | *Version*:0.5.4 |
| Draft as of 2025-12-29 | *Computable Name*:SpaceflightStressFactors |

 
Concepts related to stress, physiological, and psychological factors during spaceflight analog missions. 

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
  "id" : "SpaceflightStressFactors",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/SpaceflightStressFactors",
  "version" : "0.5.4",
  "name" : "SpaceflightStressFactors",
  "title" : "Stress and Physiological Factors",
  "status" : "draft",
  "date" : "2025-12-29T23:18:22-07:00",
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
  "description" : "Concepts related to stress, physiological, and psychological factors during spaceflight analog missions.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "364565004",
            "display" : "joint stress test response"
          },
          {
            "code" : "72353004",
            "display" : "psychosocial procedure"
          },
          {
            "code" : "315722006",
            "display" : "[v]isolation"
          },
          {
            "code" : "278994005",
            "display" : "hormonal"
          },
          {
            "code" : "258395000",
            "display" : "levels"
          },
          {
            "code" : "158149000",
            "display" : "sleep disturbances"
          },
          {
            "code" : "4452006",
            "display" : "adaptation"
          },
          {
            "code" : "90780006",
            "display" : "individual bone"
          },
          {
            "code" : "76746007",
            "display" : "cardiovascular stress testing"
          },
          {
            "code" : "37523008",
            "display" : "immunological"
          },
          {
            "code" : "123036008",
            "display" : "endocrine function"
          },
          {
            "code" : "128928004",
            "display" : "neuroendocrine neoplasm"
          },
          {
            "code" : "30920001",
            "display" : "circadian rhythm"
          },
          {
            "code" : "84229001",
            "display" : "fatigue"
          },
          {
            "code" : "38237000",
            "display" : "anxiety"
          },
          {
            "code" : "35489007",
            "display" : "depression"
          },
          {
            "code" : "288005",
            "display" : "cognitive function finding"
          },
          {
            "code" : "30910006",
            "display" : "emotional disorder"
          },
          {
            "code" : "85256008",
            "display" : "mood"
          },
          {
            "code" : "271893008",
            "display" : "o/e - behavioral"
          },
          {
            "code" : "227616006",
            "display" : "mars bar"
          },
          {
            "code" : "42341009",
            "display" : "loss of perception of sensory stimuli"
          },
          {
            "code" : "68130003",
            "display" : "physical activity"
          }
        ]
      }
    ]
  }
}

```
