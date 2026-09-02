# Dried Blood Spot Specimen with Biobank Metadata - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dried Blood Spot Specimen with Biobank Metadata**

## Example Specimen: Dried Blood Spot Specimen with Biobank Metadata

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

> **Biobank Location**
* facilityId: LSDA-JSC-BioBank-01
* storageTemperature: -80 Cel(Details: UCUM codeCel = 'Cel')
* containerBarcode: BNK-2028-DBS-00142

**status**: Available

**type**: Dried Blood Spot

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( https://awatson1978.github.io/aerospace-medicine-ig/identifier/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2028-04-20 07:00:00+0000 | Finger-prick sampling |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "DBS-Specimen-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "facilityId",
          "valueString" : "LSDA-JSC-BioBank-01"
        },
        {
          "url" : "storageTemperature",
          "valueQuantity" : {
            "value" : -80,
            "unit" : "Cel",
            "system" : "http://unitsofmeasure.org",
            "code" : "Cel"
          }
        },
        {
          "url" : "containerBarcode",
          "valueString" : "BNK-2028-DBS-00142"
        }
      ],
      "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/biobank-location"
    }
  ],
  "status" : "available",
  "type" : {
    "coding" : [
      {
        "system" : "https://awatson1978.github.io/aerospace-medicine-ig/CodeSystem/expanded-specimen-type-cs",
        "code" : "dried-blood-spot",
        "display" : "Dried Blood Spot"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExampleAstronaut"
  },
  "collection" : {
    "collectedDateTime" : "2028-04-20T07:00:00Z",
    "method" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "278450005",
          "display" : "Finger-prick sampling"
        }
      ]
    }
  }
}

```
