# Patient - Space Miner 1 - v0.4.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Space Miner 1**

## Example Patient: Patient - Space Miner 1

Profile: [Astronaut Patient Profile](StructureDefinition-Astronaut.md)

Space Miner (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "spaceminer1",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/Astronaut"
    ]
  },
  "name" : [
    {
      "family" : "Miner",
      "given" : ["Space"]
    }
  ]
}

```
