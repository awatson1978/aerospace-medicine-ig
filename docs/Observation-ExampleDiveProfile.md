# Example Training Dive Profile - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Training Dive Profile**

## Example Observation: Example Training Dive Profile

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Dive Profile](StructureDefinition-dive-profile.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**code**: Dive Profile

**subject**: [Catherine Janeway (no stated gender), DoB Unknown](Patient-janeway.md)

**effective**: 2025-06-01 09:30:00+0000

> **component****code**:Maximum Depth**value**: 12 m(Details: UCUM codem = 'm')

> **component****code**:Bottom Time**value**: 180 min(Details: UCUM codemin = 'min')

> **component****code**:Water Temperature**value**: 26 Cel(Details: UCUM codeCel = 'Cel')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ExampleDiveProfile",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/dive-profile"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/diving-medicine-cs",
        "code" : "dive-profile",
        "display" : "Dive Profile"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/janeway"
  },
  "effectiveDateTime" : "2025-06-01T09:30:00Z",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/diving-medicine-cs",
            "code" : "maximum-depth",
            "display" : "Maximum Depth"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 12,
        "system" : "http://unitsofmeasure.org",
        "code" : "m"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/diving-medicine-cs",
            "code" : "bottom-time",
            "display" : "Bottom Time"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 180,
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/diving-medicine-cs",
            "code" : "water-temperature",
            "display" : "Water Temperature"
          }
        ]
      },
      "valueQuantity" : {
        "value" : 26,
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    }
  ]
}

```
