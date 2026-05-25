# Mars Lander Contamination Risk - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Lander Contamination Risk**

## Example RiskAssessment: Mars Lander Contamination Risk

Profile: [Microbial Contamination Risk](StructureDefinition-microbial-contamination-risk.md)

**Planetary Protection Category**: Category IV

**status**: Final

**code**: Forward Contamination Risk Assessment

**subject**: Mars Sample Return Mission - Landing Site Jezero Crater

### Predictions

| | | |
| :--- | :--- | :--- |
| - | **Outcome** | **Probability[x]** |
| * | Bacterial Spore | 0.00012 |

**mitigation**: DHMR sterilization of all lander surfaces, Category IV-b bioburden requirements met



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "ContaminationRisk-MarsLander-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/microbial-contamination-risk"
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
  "status" : "final",
  "code" : {
    "text" : "Forward Contamination Risk Assessment"
  },
  "subject" : {
    "display" : "Mars Sample Return Mission - Landing Site Jezero Crater"
  },
  "prediction" : [
    {
      "outcome" : {
        "coding" : [
          {
            "system" : "https://mitre.org/fhir/space-health/CodeSystem/microbial-contaminant-type-cs",
            "code" : "bacterial-spore",
            "display" : "Bacterial Spore"
          }
        ]
      },
      "probabilityDecimal" : 0.00012
    }
  ],
  "mitigation" : "DHMR sterilization of all lander surfaces, Category IV-b bioburden requirements met"
}

```
