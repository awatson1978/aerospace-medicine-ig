# Habitat Environmental Monitoring - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Habitat Environmental Monitoring**

## Resource Profile: Habitat Environmental Monitoring 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/habitat-environmental-observation | *Version*:0.4.2 |
| Active as of 2025-12-24 | *Computable Name*:HabitatEnvironmentalObservation |

 
Observation of environmental conditions inside Mars habitat (pressure, O2, CO2, temperature, humidity, dust) 

**Usages:**

* Examples for this Profile: [Observation/HabitatEnvironment-Sol125](Observation-HabitatEnvironment-Sol125.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/habitat-environmental-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-habitat-environmental-observation.csv), [Excel](StructureDefinition-habitat-environmental-observation.xlsx), [Schematron](StructureDefinition-habitat-environmental-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "habitat-environmental-observation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/habitat-environmental-observation",
  "version" : "0.4.2",
  "name" : "HabitatEnvironmentalObservation",
  "title" : "Habitat Environmental Monitoring",
  "status" : "active",
  "date" : "2025-12-24T19:44:53-07:00",
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
  "description" : "Observation of environmental conditions inside Mars habitat (pressure, O2, CO2, temperature, humidity, dust)",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:environmental",
        "path" : "Observation.category",
        "sliceName" : "environmental",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
              "code" : "environmental"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Type of environmental measurement (pressure, O2%, CO2, temp, humidity, dust)",
        "mustSupport" : true
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "Mars habitat (modeled as Location or Group)",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Location",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "Multiple environmental metrics measured simultaneously",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "mustSupport" : true
      },
      {
        "id" : "Observation.component.value[x]",
        "path" : "Observation.component.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      }
    ]
  }
}

```
