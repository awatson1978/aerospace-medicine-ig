# Observation - Environmental - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Observation - Environmental**

## Example Observation: Observation - Environmental

Profile: [Environmental Monitoring](StructureDefinition-EnvironmentalMonitoring.md)

**status**: Final

**code**: Environmental Status



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "Observation.Environmental-1",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoring"
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
