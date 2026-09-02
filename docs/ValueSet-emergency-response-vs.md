# Emergency Response Value Set - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Emergency Response Value Set**

## ValueSet: Emergency Response Value Set (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/emergency-response-vs | *Version*:0.7.0 |
| Active as of 2026-09-02 | *Computable Name*:EmergencyResponseVS |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
Emergency response and evacuation options 

 **References** 

* [Emergency Care Plan](StructureDefinition-emergency-care-plan.md)
* [Emergency Evacuation Procedure](StructureDefinition-emergency-evacuation-procedure.md)

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
  "id" : "emergency-response-vs",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/ValueSet/emergency-response-vs",
  "version" : "0.7.0",
  "name" : "EmergencyResponseVS",
  "title" : "Emergency Response Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-02T13:24:45-05:00",
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
  "description" : "Emergency response and evacuation options",
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
  "compose" : {
    "include" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/emergency-response-cs"
      }
    ]
  }
}

```
