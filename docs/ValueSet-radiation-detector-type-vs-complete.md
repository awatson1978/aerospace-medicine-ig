# Complete Radiation Detector Types - v0.5.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Complete Radiation Detector Types**

## ValueSet: Complete Radiation Detector Types 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/radiation-detector-type-vs-complete | *Version*:0.5.3 |
| Active as of 2025-12-29 | *Computable Name*:RadiationDetectorTypeVSComplete |

 
Comprehensive list of radiation detection devices used in space 

 **References** 

* [Radiation Detection Device (Fixed)](StructureDefinition-radiation-detector.md)

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
  "id" : "radiation-detector-type-vs-complete",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/radiation-detector-type-vs-complete",
  "version" : "0.5.3",
  "name" : "RadiationDetectorTypeVSComplete",
  "title" : "Complete Radiation Detector Types",
  "status" : "active",
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
  "description" : "Comprehensive list of radiation detection devices used in space",
  "compose" : {
    "include" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/radiation-detector-type-cs"
      },
      {
        "system" : "http://hl7.org/fhir/uv/aerospace/CodeSystem/aerospace-code-system",
        "concept" : [
          {
            "code" : "tld",
            "display" : "Thermoluminescent Dosimeter"
          },
          {
            "code" : "osld",
            "display" : "Optically Stimulated Luminescence Detector"
          },
          {
            "code" : "epd",
            "display" : "Electronic Personal Dosimeter"
          },
          {
            "code" : "tepc",
            "display" : "Tissue Equivalent Proportional Counter"
          },
          {
            "code" : "area-monitor",
            "display" : "Area Radiation Monitor"
          },
          {
            "code" : "neutron-detector",
            "display" : "Neutron Detection System"
          },
          {
            "code" : "spectrometer",
            "display" : "Radiation Spectrometer"
          }
        ]
      }
    ]
  }
}

```
