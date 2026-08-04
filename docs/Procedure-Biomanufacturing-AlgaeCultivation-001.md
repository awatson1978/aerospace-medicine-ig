# Algae Cultivation Procedure - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Algae Cultivation Procedure**

## Example Procedure: Algae Cultivation Procedure

Profile: [Biomanufacturing Procedure](StructureDefinition-biomanufacturing-procedure.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/biomanufacturing-procedure"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/gravity-context",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/gravity-context-cs",
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/biomanufacturing-process-cs",
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
