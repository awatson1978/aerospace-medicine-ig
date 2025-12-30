# Patient - Ambassador Sarek - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Ambassador Sarek**

## Example Patient: Patient - Ambassador Sarek

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

Sarek Kirk (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "sarek",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "name" : [
    {
      "family" : "Kirk",
      "given" : ["Sarek"]
    }
  ]
}

```
