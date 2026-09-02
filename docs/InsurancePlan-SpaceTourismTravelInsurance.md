# Insurance - Plan - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Insurance - Plan**

## Example InsurancePlan: Insurance - Plan

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Space insurance](StructureDefinition-space-insurance.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')



## Resource Content

```json
{
  "resourceType" : "InsurancePlan",
  "id" : "SpaceTourismTravelInsurance",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-insurance"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  }
}

```
