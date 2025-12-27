# Example Astronaut - v0.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Astronaut**

## Example Patient: Example Astronaut

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExampleAstronaut",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "identifier" : [
    {
      "system" : "http://nasa.gov/astronaut-id",
      "value" : "AST-001"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Astronaut",
      "given" : ["Jane"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1980-01-01"
}

```
