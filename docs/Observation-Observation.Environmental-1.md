# Observation - Environmental - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Environmental**

## Example Observation: Observation - Environmental

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Environmental Monitoring](StructureDefinition-environmental-monitoring.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Final

**code**: Environmental Status



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Observation.Environmental-1",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/environmental-monitoring"
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
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "environmental",
        "display" : "Environmental Status"
      }
    ]
  }
}

```
