# Patient - Red Shirt 1 - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Red Shirt 1**

## Example Patient: Patient - Red Shirt 1

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

One Red (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "redshirt1",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "name" : [
    {
      "family" : "Red",
      "given" : ["One"]
    }
  ]
}

```
