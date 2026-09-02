# Lower Body BFRT Session - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Lower Body BFRT Session**

## Example Procedure: Lower Body BFRT Session

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [BFRT Procedure](StructureDefinition-bfrt-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Occlusion Pressure**: 80 mmHg(Details: UCUM codemm[Hg] = 'mm[Hg]')

**Gravity Context**: Microgravity

**status**: Completed

**code**: Low-Load BFRT (20-30% 1RM)

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

**performed**: 2028-04-15 08:30:00+0000

**bodySite**: Thigh structure

**note**: 

> 

3 sets x 15 reps at 30% 1RM, 80 mmHg occlusion, 1-min rest between sets


**usedReference**: [Device: status = active; manufacturer = Kaatsu Global; serialNumber = BFR-ISS-2028-001; modelNumber = Nano; type = Pneumatic Cuff](Device-BFRT-Pneumatic-Cuff-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "BFRT-LowerBody-Session-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/bfrt-procedure"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/occlusion-pressure",
      "valueQuantity" : {
        "value" : 80,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    },
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
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/bfrt-protocol-cs",
        "code" : "low-load-bfrt",
        "display" : "Low-Load BFRT (20-30% 1RM)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "performedDateTime" : "2028-04-15T08:30:00Z",
  "bodySite" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "68367000",
          "display" : "Thigh structure"
        }
      ]
    }
  ],
  "note" : [
    {
      "text" : "3 sets x 15 reps at 30% 1RM, 80 mmHg occlusion, 1-min rest between sets"
    }
  ],
  "usedReference" : [
    {
      "reference" : "Device/BFRT-Pneumatic-Cuff-001"
    }
  ]
}

```
