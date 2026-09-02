# Risk - Mission - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Risk - Mission**

## Example RiskAssessment: Risk - Mission

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Mission Risk Assessment](StructureDefinition-space-risk-assessment.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**subject**: [Catherine Janeway](Patient-janeway.md)



## Resource Content

```json
{
  "resourceType" : "RiskAssessment",
  "id" : "RiskAssesmentMission",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-risk-assessment"
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
  "subject" : {
    "reference" : "Patient/janeway",
    "display" : "Catherine Janeway"
  }
}

```
