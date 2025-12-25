# Space Psychological Effects - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Space Psychological Effects**

## ValueSet: Space Psychological Effects (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/space-psychological-effects | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:SpacePsychologicalEffectsValueSet |

 
Psychological effects relevant to human spaceflight, including sleep disorders, isolation, anxiety, and depression 

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
  "id" : "space-psychological-effects",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/space-psychological-effects",
  "version" : "0.4.2",
  "name" : "SpacePsychologicalEffectsValueSet",
  "title" : "Space Psychological Effects",
  "status" : "draft",
  "experimental" : true,
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
  "description" : "Psychological effects relevant to human spaceflight, including sleep disorders, isolation, anxiety, and depression",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "39898005",
            "display" : "Sleep disorder"
          },
          {
            "code" : "111489007",
            "display" : "Breathing-related sleep disorder"
          },
          {
            "code" : "3745000",
            "display" : "Circadian rhythm sleep disorder"
          },
          {
            "code" : "16197009",
            "display" : "Social isolation"
          },
          {
            "code" : "64441002",
            "display" : "Social isolation"
          },
          {
            "code" : "29903003",
            "display" : "Sensory deprivation isolation"
          },
          {
            "code" : "126943008",
            "display" : "Separation anxiety"
          },
          {
            "code" : "109006",
            "display" : "Anxiety disorder of childhood OR adolescence"
          },
          {
            "code" : "832007",
            "display" : "Moderate major depression"
          },
          {
            "code" : "80216008",
            "display" : "Cognitive disturbance"
          },
          {
            "code" : "102891000",
            "display" : "Age-related cognitive decline"
          },
          {
            "code" : "62577008",
            "display" : "Insomnia"
          },
          {
            "code" : "8614008",
            "display" : "Vocal fatigue"
          },
          {
            "code" : "17099003",
            "display" : "Peripheral muscle fatigue"
          },
          {
            "code" : "22171002",
            "display" : "Neuromuscular fatigue"
          }
        ]
      }
    ]
  }
}

```
