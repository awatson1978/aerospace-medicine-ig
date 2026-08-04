# DHMR Sterilization at 125C/50hr - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DHMR Sterilization at 125C/50hr**

## Example Procedure: DHMR Sterilization at 125C/50hr

Profile: [Sterilization Procedure](StructureDefinition-sterilization-procedure.md)

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
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/sterilization-procedure"
    ]
  },
  "extension" : [
    {
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/planetary-protection-category",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/planetary-protection-category-cs",
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
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/sterilization-method-cs",
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
