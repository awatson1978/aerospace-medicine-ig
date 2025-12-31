# Isolation Syndrome Factors Value Set - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Isolation Syndrome Factors Value Set**

## ValueSet: Isolation Syndrome Factors Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/ValueSet/isolation-syndrome-factors-vs | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:IsolationSyndromeFactorsVS |

 
Risk factors related to isolation and confinement that affect behavioral health. 

 **References** 

* [Isolation Risk Factor](StructureDefinition-isolation-risk.md)

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
  "id" : "isolation-syndrome-factors-vs",
  "url" : "http://hl7.org/fhir/uv/aerospace/ValueSet/isolation-syndrome-factors-vs",
  "version" : "0.5.6",
  "name" : "IsolationSyndromeFactorsVS",
  "title" : "Isolation Syndrome Factors Value Set",
  "status" : "active",
  "date" : "2025-12-30T19:11:20-07:00",
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
  "description" : "Risk factors related to isolation and confinement that affect behavioral health.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/isolation-syndrome-factor-cs"
      }
    ]
  }
}

```
