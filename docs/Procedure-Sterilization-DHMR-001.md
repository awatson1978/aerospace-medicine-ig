# DHMR Sterilization at 125C/50hr - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DHMR Sterilization at 125C/50hr**

## Example Procedure: DHMR Sterilization at 125C/50hr

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Sterilization Procedure](StructureDefinition-sterilization-procedure.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**Planetary Protection Category**: Category IV

**status**: Completed

**code**: Dry Heat Microbial Reduction (DHMR)

**subject**: Mars Sample Return Lander - Canister Assembly

**performed**: 2028-01-10 08:00:00+0000 --> 2028-01-12 10:00:00+0000

**outcome**: Successful

**note**: 

> 

DHMR at 125°C for 50 hours. Pre-treatment bioburden: 3.2×10⁴ spores. Post-treatment: <10 spores. 3.5-log reduction achieved.




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "Sterilization-DHMR-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/sterilization-procedure"
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
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/planetary-protection-category",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/planetary-protection-category-cs",
            "code" : "category-iv",
            "display" : "Category IV"
          }
        ]
      }
    }
  ],
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/sterilization-method-cs",
        "code" : "dhmr",
        "display" : "Dry Heat Microbial Reduction (DHMR)"
      }
    ]
  },
  "subject" : {
    "display" : "Mars Sample Return Lander - Canister Assembly"
  },
  "performedPeriod" : {
    "start" : "2028-01-10T08:00:00Z",
    "end" : "2028-01-12T10:00:00Z"
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
      "text" : "DHMR at 125°C for 50 hours. Pre-treatment bioburden: 3.2×10⁴ spores. Post-treatment: <10 spores. 3.5-log reduction achieved."
    }
  ]
}

```
