# Patient - James Kirk - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - James Kirk**

## Example Patient: Patient - James Kirk

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

James Kirk (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "kirk",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "name" : [
    {
      "family" : "Kirk",
      "given" : ["James"]
    }
  ]
}

```
