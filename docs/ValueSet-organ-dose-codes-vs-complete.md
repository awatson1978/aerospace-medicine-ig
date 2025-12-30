# Complete Organ-Specific Dose Codes - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Complete Organ-Specific Dose Codes**

## ValueSet: Complete Organ-Specific Dose Codes 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/organ-dose-codes-vs-complete | *Version*:0.5.4 |
| Active as of 2025-12-29 | *Computable Name*:OrganDoseCodesVSComplete |

 
Comprehensive codes for organ-specific radiation dose measurements 

 **References** 

* [Space Radiation Exposure (Fixed)](StructureDefinition-space-radiation-exposure.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "organ-dose-codes-vs-complete",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/organ-dose-codes-vs-complete",
  "version" : "0.5.4",
  "name" : "OrganDoseCodesVSComplete",
  "title" : "Complete Organ-Specific Dose Codes",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Comprehensive codes for organ-specific radiation dose measurements",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
        "concept" : [
          {
            "code" : "bone-marrow-dose",
            "display" : "Bone Marrow Dose"
          },
          {
            "code" : "eye-lens-dose",
            "display" : "Eye Lens Dose"
          },
          {
            "code" : "skin-dose",
            "display" : "Skin Dose"
          },
          {
            "code" : "cns-dose",
            "display" : "Central Nervous System Dose"
          },
          {
            "code" : "thyroid-dose",
            "display" : "Thyroid Dose"
          },
          {
            "code" : "gonad-dose",
            "display" : "Gonad Dose"
          },
          {
            "code" : "lung-dose",
            "display" : "Lung Dose"
          },
          {
            "code" : "gi-tract-dose",
            "display" : "GI Tract Dose"
          }
        ]
      }
    ]
  }
}

```
