# LBNP Session at -30 mmHg During Microgravity - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LBNP Session at -30 mmHg During Microgravity**

## Example Procedure: LBNP Session at -30 mmHg During Microgravity

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Lower Body Negative Pressure Procedure](StructureDefinition-lower-body-negative-pressure-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**LBNP Pressure Level**: -30 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

**status**: Completed

**code**: Lower Body Negative Pressure

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2025-09-05 10:30:00+0000

**note**: 

> 

LBNP at -30 mmHg during 0g phase, parabola set 3 of 6, 87th ESA PFC


**usedReference**: [Device: status = active; manufacturer = ESA Life Sciences; serialNumber = LBNP-ESA-2025-001; modelNumber = LBNP-PFC-2025; type = Suction device](Device-LBNP-Chamber-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "LBNP-Session-Microgravity-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lower-body-negative-pressure-procedure"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/gravity-context-cs",
            "code" : "microgravity",
            "display" : "Microgravity"
          }
        ]
      }
    },
    {
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/lbnp-pressure-level",
      "valueQuantity" : {
        "value" : -30,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/microgravity-countermeasure-cs",
        "code" : "lbnp",
        "display" : "Lower Body Negative Pressure"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedDateTime" : "2025-09-05T10:30:00Z",
  "note" : [
    {
      "text" : "LBNP at -30 mmHg during 0g phase, parabola set 3 of 6, 87th ESA PFC"
    }
  ],
  "usedReference" : [
    {
      "reference" : "Device/LBNP-Chamber-001"
    }
  ]
}

```
