# Mars Crew Member - Commander Chen - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Crew Member - Commander Chen**

## Example Patient: Mars Crew Member - Commander Chen

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Astronaut Patient Profile](StructureDefinition-astronaut.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

Sarah Chen Female, DoB: 1990-03-15 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-2029-001)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "MarsCrewMember1",
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
      "value" : "AST-2029-001"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Chen",
      "given" : ["Sarah"],
      "prefix" : ["CDR"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1990-03-15"
}

```
