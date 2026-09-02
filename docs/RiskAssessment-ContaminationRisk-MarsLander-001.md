# Mars Lander Contamination Risk - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Lander Contamination Risk**

## Example RiskAssessment: Mars Lander Contamination Risk

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Microbial Contamination Risk](StructureDefinition-microbial-contamination-risk.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/microbial-contamination-risk"
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
            "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/microbial-contaminant-type-cs",
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
