# Energy Expenditure - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Energy Expenditure**

## Extension: Energy Expenditure 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.org/fhir/uv/aerospace/StructureDefinition/energy-expenditure | *Version*:0.5.0 |
| Active as of 2025-12-25 | *Computable Name*:EnergyExpenditure |

Total daily energy expenditure in kcal/day

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Calorie Deficit Assessment](StructureDefinition-calorie-deficit-assessment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/energy-expenditure)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-energy-expenditure.csv), [Excel](StructureDefinition-energy-expenditure.xlsx), [Schematron](StructureDefinition-energy-expenditure.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "energy-expenditure",
  "url" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/energy-expenditure",
  "version" : "0.5.0",
  "name" : "EnergyExpenditure",
  "title" : "Energy Expenditure",
  "status" : "active",
  "date" : "2025-12-25T11:43:35-07:00",
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
  "description" : "Total daily energy expenditure in kcal/day",
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
        "short" : "Energy Expenditure",
        "definition" : "Total daily energy expenditure in kcal/day"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.org/fhir/uv/aerospace/StructureDefinition/energy-expenditure"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "patternUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "patternCode" : "kcal/d"
      }
    ]
  }
}

```
