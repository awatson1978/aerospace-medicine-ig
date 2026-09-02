# Patient - James Kirk - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient - James Kirk**

## Example Patient: Patient - James Kirk

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional](https://awatson1978.github.io/aerospace-medicine-ig/provenance/fictional)

Profile: [Astronaut Patient Profile](StructureDefinition-astronaut.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

James Kirk (no stated gender), DoB Unknown

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "kirk",
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
      "family" : "Kirk",
      "given" : ["James"]
    }
  ]
}

```
