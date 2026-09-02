# Patient - Catherine Janeway - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - Catherine Janeway**

## Example Patient: Patient - Catherine Janeway

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional](https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional)

Profile: [Astronaut Patient Profile](StructureDefinition-astronaut.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

Catherine Janeway (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "janeway",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional",
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
  "name" : [
    {
      "family" : "Janeway",
      "given" : ["Catherine"]
    }
  ]
}

```
