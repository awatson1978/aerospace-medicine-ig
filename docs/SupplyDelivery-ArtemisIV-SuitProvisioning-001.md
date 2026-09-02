# Artemis IV Suit Provisioning - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis IV Suit Provisioning**

## Example SupplyDelivery: Artemis IV Suit Provisioning

Information Source: [https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic](https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic)

Profile: [EVA Suit Provisioning Record](StructureDefinition-eva-suit-provisioning-record.md)

Tag: test health data (Details: ActReason code HTEST = 'test health data')

**status**: Delivered

**type**: Medical equipment

### SuppliedItems

| | | |
| :--- | :--- | :--- |
| - | **Quantity** | **Item[x]** |
| * | 2 suits | [DeviceDefinition: extension = Lunar Gravity (1/6g); manufacturer[x] = Axiom Space; modelNumber = AxEMU-v2; note = Configured for lunar surface EVA with enhanced lower-body mobility, dust-resistant seals, and integrated PLSS](DeviceDefinition-xEVAS-LunarSuit-Def-001.md) |

**occurrence**: 2028-09-15

**destination**: Artemis III HLS - Starship Lunar Lander



## Resource Content

```json
{
  "resourceType" : "SupplyDelivery",
  "id" : "ArtemisIV-SuitProvisioning-001",
  "meta" : {
    "source" : "https://awatson1978.github.io/aerospace-medicine-ig/provenance/synthetic",
    "profile" : [
      "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/eva-suit-provisioning-record"
    ],
    "tag" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST",
        "display" : "test health data"
      }
    ]
  },
  "status" : "completed",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "419891008",
        "display" : "Medical equipment"
      }
    ]
  },
  "suppliedItem" : {
    "quantity" : {
      "value" : 2,
      "unit" : "suits"
    },
    "itemReference" : {
      "reference" : "DeviceDefinition/xEVAS-LunarSuit-Def-001"
    }
  },
  "occurrenceDateTime" : "2028-09-15",
  "destination" : {
    "display" : "Artemis III HLS - Starship Lunar Lander"
  }
}

```
