# Artemis III Suit Provisioning - v0.6.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Artemis III Suit Provisioning**

## Example SupplyDelivery: Artemis III Suit Provisioning

Profile: [EVA Suit Provisioning Record](StructureDefinition-eva-suit-provisioning-record.md)

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
  "id" : "ArtemisIII-SuitProvisioning-001",
  "meta" : {
    "profile" : [
      "https://mitre.org/fhir/space-health/StructureDefinition/eva-suit-provisioning-record"
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
