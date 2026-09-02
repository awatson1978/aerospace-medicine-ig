# Example Astronaut - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Astronaut**

## Example Patient: Example Astronaut

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Astronaut Patient Profile](StructureDefinition-astronaut.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)

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
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/astronaut"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "identifier" : [
    {
      "system" : "https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id",
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
