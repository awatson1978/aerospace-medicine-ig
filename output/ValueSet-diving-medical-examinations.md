# Diving Medical Examinations - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Diving Medical Examinations**

## ValueSet: Diving Medical Examinations 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/diving-medical-examinations | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:DivingMedicalExaminations |

 
Types of medical examinations for diving fitness 

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
  "id" : "diving-medical-examinations",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/diving-medical-examinations",
  "version" : "0.4.2",
  "name" : "DivingMedicalExaminations",
  "title" : "Diving Medical Examinations",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-24T13:59:08-07:00",
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
  "description" : "Types of medical examinations for diving fitness",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "dive-medical-exam"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "hyperbaric-clearance"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "fitness-assessment"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "post-incident-eval"
          }
        ]
      },
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/diving-medicine-cs",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "annual-recert"
          }
        ]
      }
    ]
  }
}

```
