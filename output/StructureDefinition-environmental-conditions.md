# Environmental Conditions - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Environmental Conditions**

## Extension: Environmental Conditions 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/environmental-conditions | *Version*:0.4.2 |
| Draft as of 2025-12-24 | *Computable Name*:EnvironmentalConditions |

Environmental conditions during training session

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Enhanced Neutral Buoyancy Training Session](StructureDefinition-enhanced-neutral-buoyancy-session.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/environmental-conditions)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-environmental-conditions.csv), [Excel](StructureDefinition-environmental-conditions.xlsx), [Schematron](StructureDefinition-environmental-conditions.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "environmental-conditions",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/environmental-conditions",
  "version" : "0.4.2",
  "name" : "EnvironmentalConditions",
  "title" : "Environmental Conditions",
  "status" : "draft",
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
  "description" : "Environmental conditions during training session",
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
      "expression" : "Element"
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
        "short" : "Environmental Conditions",
        "definition" : "Environmental conditions during training session"
      },
      {
        "id" : "Extension.extension:waterTemperature",
        "path" : "Extension.extension",
        "sliceName" : "waterTemperature",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:waterTemperature.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:waterTemperature.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "waterTemperature"
      },
      {
        "id" : "Extension.extension:waterTemperature.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:visibility",
        "path" : "Extension.extension",
        "sliceName" : "visibility",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:visibility.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:visibility.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "visibility"
      },
      {
        "id" : "Extension.extension:visibility.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:currentStrength",
        "path" : "Extension.extension",
        "sliceName" : "currentStrength",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:currentStrength.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:currentStrength.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "currentStrength"
      },
      {
        "id" : "Extension.extension:currentStrength.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:poolConfiguration",
        "path" : "Extension.extension",
        "sliceName" : "poolConfiguration",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:poolConfiguration.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:poolConfiguration.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "poolConfiguration"
      },
      {
        "id" : "Extension.extension:poolConfiguration.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://mitre.org/fhir/space-health/StructureDefinition/environmental-conditions"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
