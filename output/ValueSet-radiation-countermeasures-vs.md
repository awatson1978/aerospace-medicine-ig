# Radiation Countermeasures - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Countermeasures**

## ValueSet: Radiation Countermeasures 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/radiation-countermeasures-vs | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:RadiationCountermeasuresVS |

 
Protective measures against radiation 

 **References** 

* [Radiation Countermeasures](StructureDefinition-radiation-countermeasures.md)

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
  "id" : "radiation-countermeasures-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/radiation-countermeasures-vs",
  "version" : "0.4.2",
  "name" : "RadiationCountermeasuresVS",
  "title" : "Radiation Countermeasures",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-24T13:07:45-07:00",
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
  "description" : "Protective measures against radiation",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/radiation-countermeasures-cs"
      }
    ]
  }
}

```
