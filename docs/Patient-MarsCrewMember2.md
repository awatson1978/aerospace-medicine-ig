# Mars Crew Member - Mission Specialist Okafor - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mars Crew Member - Mission Specialist Okafor**

## Example Patient: Mars Crew Member - Mission Specialist Okafor

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [Astronaut Patient Profile](StructureDefinition-astronaut.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

Daniel Okafor Male, DoB: 1992-11-08 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-2029-002)

-------

| | |
| :--- | :--- |
| Active: | true |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "MarsCrewMember2",
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
      "value" : "AST-2029-002"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Okafor",
      "given" : ["Daniel"],
      "prefix" : ["MS"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1992-11-08"
}

```
