# Exercise Device - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Exercise Device**

## Extension: Exercise Device 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device | *Version*:0.5.6 |
| Active as of 2025-12-30 | *Computable Name*:ExerciseDevice |

Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Space Exercise Activity Group](StructureDefinition-space-exercise-activity-group.md)
* Examples for this Extension: [Observation/ISS-T2-Run-Group-001](Observation-ISS-T2-Run-Group-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/exercise-device)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-exercise-device.csv), [Excel](StructureDefinition-exercise-device.xlsx), [Schematron](StructureDefinition-exercise-device.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "exercise-device",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device",
  "version" : "0.5.6",
  "name" : "ExerciseDevice",
  "title" : "Exercise Device",
  "status" : "active",
  "date" : "2025-12-30T13:15:27-07:00",
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
  "description" : "Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation"
    },
    {
      "type" : "element",
      "expression" : "Procedure"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Exercise Device",
        "definition" : "Reference to the exercise equipment used (e.g., T2 Treadmill, ARED, CEVIS)"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/exercise-device"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Exercise equipment device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
          }
        ]
      }
    ]
  }
}

```
