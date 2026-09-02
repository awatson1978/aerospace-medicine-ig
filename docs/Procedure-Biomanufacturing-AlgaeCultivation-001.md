# Algae Cultivation Procedure - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Algae Cultivation Procedure**

## Example Procedure: Algae Cultivation Procedure

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Biomanufacturing Procedure](StructureDefinition-biomanufacturing-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Gravity Context**: Microgravity

**status**: Completed

**code**: Algae Photobioreactor

**subject**: International Space Station - Columbus Module

**performed**: 2028-05-01 00:00:00+0000 --> 2028-05-15 00:00:00+0000

**outcome**: Successful

**note**: 

> 

14-day cultivation cycle. Harvested 2.1 kg wet biomass, achieving 95% O2 production target.


**usedReference**: [Device: status = active; manufacturer = Techshot Inc.; modelNumber = PBR-3000; type = ; note = Chlorella vulgaris culture, LED-illuminated, 16h:8h light-dark cycle](Device-Bioreactor-Algae-001.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "Biomanufacturing-AlgaeCultivation-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biomanufacturing-procedure"
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
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/biomanufacturing-process-cs",
        "code" : "algae-photobioreactor",
        "display" : "Algae Photobioreactor"
      }
    ]
  },
  "subject" : {
    "display" : "International Space Station - Columbus Module"
  },
  "performedPeriod" : {
    "start" : "2028-05-01T00:00:00Z",
    "end" : "2028-05-15T00:00:00Z"
  },
  "outcome" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "385669000",
        "display" : "Successful"
      }
    ]
  },
  "note" : [
    {
      "text" : "14-day cultivation cycle. Harvested 2.1 kg wet biomass, achieving 95% O2 production target."
    }
  ],
  "usedReference" : [
    {
      "reference" : "Device/Bioreactor-Algae-001"
    }
  ]
}

```
