# Almonds - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Almonds**

## Example Binary: Almonds

This content is an example of the [Nutrition Product (logical model)](StructureDefinition-NutritionProduct.md) Logical Model and is not a FHIR Resource

```

{
  "resourceType": "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/NutritionProduct",
  "id": "artemis-025",
  "meta": {
    "source": "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "tag": [
      {
        "code": "HTEST",
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "display": "test health data"
      }
    ]
  },
  "status": "active",
  "code": {
    "text": "Almonds"
  },
  "category": [
    {
      "text": "snack"
    }
  ],
  "instance": [
    {
      "name": "Almonds"
    }
  ],
  "note": [
    {
      "text": "Published Artemis II example menu item"
    }
  ]
}

```



## Resource Binary Content

application/fhir+json:

```
{snip}
```
