# Patient - Space Engineer - v0.5.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Space Engineer**

## Example Patient: Patient - Space Engineer

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

Space Engineer (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "space-engineer-1",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "name" : [
    {
      "family" : "Engineer",
      "given" : ["Space"]
    }
  ]
}

```
