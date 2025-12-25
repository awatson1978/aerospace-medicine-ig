# Lunar Dust Toxicity - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lunar Dust Toxicity**

## ValueSet: Lunar Dust Toxicity 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/LunarDustToxicityValueSet | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:LunarDustToxicityValueSet |

 
Conditions and effects associated with lunar dust exposure, including respiratory, ocular, and systemic toxicities. 

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
  "id" : "LunarDustToxicityValueSet",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/LunarDustToxicityValueSet",
  "version" : "0.4.2",
  "name" : "LunarDustToxicityValueSet",
  "title" : "Lunar Dust Toxicity",
  "status" : "draft",
  "date" : "2025-12-24T17:35:27-07:00",
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
  "description" : "Conditions and effects associated with lunar dust exposure, including respiratory, ocular, and systemic toxicities.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "60481001",
            "display" : "Toxicity"
          },
          {
            "code" : "51615001",
            "display" : "Pulmonary fibrosis"
          },
          {
            "code" : "13645005",
            "display" : "Chronic obstructive pulmonary disease"
          },
          {
            "code" : "257553007",
            "display" : "Irritation"
          },
          {
            "code" : "4979002",
            "display" : "Dermatitis"
          },
          {
            "code" : "11214006",
            "display" : "Reactive"
          },
          {
            "code" : "2296009",
            "display" : "Iron dextran toxicity"
          },
          {
            "code" : "271794005",
            "display" : "Circadian dysregulation"
          },
          {
            "code" : "187875007",
            "display" : "Lung cancer"
          },
          {
            "code" : "805002",
            "display" : "Silicosis"
          },
          {
            "code" : "84499006",
            "display" : "Chronic inflammation"
          },
          {
            "code" : "71677004",
            "display" : "Exposure"
          },
          {
            "code" : "139175004",
            "display" : "Respiratory symptoms"
          },
          {
            "code" : "144417005",
            "display" : "Renal function tests"
          },
          {
            "code" : "195978009",
            "display" : "Exacerbation of asthma"
          },
          {
            "code" : "23583003",
            "display" : "Inflammation"
          },
          {
            "code" : "5410007",
            "display" : "Oxidative phosphorylation"
          },
          {
            "code" : "46595003",
            "display" : "Deposition"
          }
        ]
      }
    ]
  }
}

```
