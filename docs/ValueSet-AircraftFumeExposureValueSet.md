# Aircraft Fume Exposure - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aircraft Fume Exposure**

## ValueSet: Aircraft Fume Exposure 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/ValueSet/AircraftFumeExposureValueSet | *Version*:0.5.4 |
| Draft as of 2025-12-29 | *Computable Name*:AircraftFumeExposureValueSet |

 
Health impacts from exposure to aircraft contaminated air and fume events. 

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
  "id" : "AircraftFumeExposureValueSet",
  "url" : "https://mitre.org/fhir/space-health/ValueSet/AircraftFumeExposureValueSet",
  "version" : "0.5.4",
  "name" : "AircraftFumeExposureValueSet",
  "title" : "Aircraft Fume Exposure",
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
  "description" : "Health impacts from exposure to aircraft contaminated air and fume events.",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "36179005",
            "display" : "R.I.N.D. syndrome"
          },
          {
            "code" : "255736001",
            "display" : "Fume"
          },
          {
            "code" : "102413006",
            "display" : "Contaminated air"
          },
          {
            "code" : "139607007",
            "display" : "Transient neurological symptoms"
          },
          {
            "code" : "139175004",
            "display" : "Respiratory symptoms"
          },
          {
            "code" : "161964009",
            "display" : "Cardiovascular symptoms"
          },
          {
            "code" : "66813007",
            "display" : "Virus-like particles"
          },
          {
            "code" : "50352000",
            "display" : "Organophosphate"
          },
          {
            "code" : "262459003",
            "display" : "Low dose"
          },
          {
            "code" : "272158000",
            "display" : "Organic compounds A-C"
          },
          {
            "code" : "80216008",
            "display" : "Cognitive dysfunction"
          },
          {
            "code" : "19466003",
            "display" : "Neurotoxicity"
          },
          {
            "code" : "17762009",
            "display" : "Toxic encephalopathy"
          },
          {
            "code" : "14788002",
            "display" : "Sensitivity"
          },
          {
            "code" : "76522002",
            "display" : "Susceptibility"
          },
          {
            "code" : "67432001",
            "display" : "Endocrine disorder"
          },
          {
            "code" : "346393006",
            "display" : "Counter irritants"
          },
          {
            "code" : "246612009",
            "display" : "General visual responses"
          },
          {
            "code" : "75934005",
            "display" : "Metabolic disorder"
          },
          {
            "code" : "129681004",
            "display" : "Environmental finding"
          }
        ]
      }
    ]
  }
}

```
