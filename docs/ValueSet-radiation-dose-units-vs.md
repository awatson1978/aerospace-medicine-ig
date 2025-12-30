# Radiation Dose Units - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Radiation Dose Units**

## ValueSet: Radiation Dose Units 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/radiation-dose-units-vs | *Version*:0.5.3 |
| Draft as of 2025-12-29 | *Computable Name*:RadiationDoseUnitsVS |

 
Units for radiation dose measurements 

 **References** 

* [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)

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
  "id" : "radiation-dose-units-vs",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/radiation-dose-units-vs",
  "version" : "0.5.3",
  "name" : "RadiationDoseUnitsVS",
  "title" : "Radiation Dose Units",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-12-29T22:23:37-07:00",
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
  "description" : "Units for radiation dose measurements",
  "compose" : {
    "include" : [
      {
        "system" : "http://unitsofmeasure.org",
        "concept" : [
          {
            "code" : "mSv",
            "display" : "Millisievert"
          },
          {
            "code" : "uSv",
            "display" : "Microsievert"
          },
          {
            "code" : "Sv",
            "display" : "Sievert"
          },
          {
            "code" : "mGy",
            "display" : "Milligray"
          },
          {
            "code" : "uGy",
            "display" : "Microgray"
          },
          {
            "code" : "Gy",
            "display" : "Gray"
          }
        ]
      }
    ]
  }
}

```
