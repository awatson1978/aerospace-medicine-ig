# Dried Blood Spot Specimen with Biobank Metadata - v0.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dried Blood Spot Specimen with Biobank Metadata**

## Example Specimen: Dried Blood Spot Specimen with Biobank Metadata

> **Biobank Location**
* facilityId: LSDA-JSC-BioBank-01
* storageTemperature: -80 Cel(Details: UCUM codeCel = 'Cel')
* containerBarcode: BNK-2028-DBS-00142

**status**: Available

**type**: Dried Blood Spot

**subject**: [Jane Astronaut Female, DoB: 1980-01-01 ( http://nasa.gov/astronaut-id#AST-001)](Patient-ExampleAstronaut.md)

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
      "url" : "https://mitre.org/fhir/space-health/StructureDefinition/biobank-location"
    }
  ],
  "status" : "available",
  "type" : {
    "coding" : [
      {
        "system" : "https://mitre.org/fhir/space-health/CodeSystem/expanded-specimen-type-cs",
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
