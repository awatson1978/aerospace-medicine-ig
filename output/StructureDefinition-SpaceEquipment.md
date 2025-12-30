# Commercial Space Equipment - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commercial Space Equipment**

## Resource Profile: Commercial Space Equipment 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceEquipment |

 
STUB - Device profile for commercial space equipment. 

**Usages:**

* Derived from this Profile: [Diving Equipment](StructureDefinition-DivingEquipment.md) and [Underwater Communication System](StructureDefinition-underwater-communication-system.md)
* Refer to this Profile: [Space Suit Configuration](StructureDefinition-suit-configuration.md)
* Examples for this Profile: [Device/AscentEntrySpacesuit](Device-AscentEntrySpacesuit.md), [Device/AstroSpacesuit](Device-AstroSpacesuit.md), [Device/CislunarHighwayPatrolSystem](Device-CislunarHighwayPatrolSystem.md), [Device/DeviceAirLock](Device-DeviceAirLock.md)...Show 17 more,[Device/DeviceCyberTruck](Device-DeviceCyberTruck.md),[Device/DeviceFlightRecorder](Device-DeviceFlightRecorder.md),[Device/DeviceFlightSuit](Device-DeviceFlightSuit.md),[Device/DeviceHospitalBed](Device-DeviceHospitalBed.md),[Device/DeviceLunarRover](Device-DeviceLunarRover.md),[Device/DeviceOrbitalReef](Device-DeviceOrbitalReef.md),[Device/DeviceRadiotelescope](Device-DeviceRadiotelescope.md),[Device/DeviceSmartClothing](Device-DeviceSmartClothing.md),[Device/DeviceSpaceGarage](Device-DeviceSpaceGarage.md),[Device/DeviceSpaceSuit](Device-DeviceSpaceSuit.md),[Device/DeviceSpaceTent](Device-DeviceSpaceTent.md),[Device/DeviceTelehealthMonitor](Device-DeviceTelehealthMonitor.md),[Device/DeviceVitalSignsMonitor](Device-DeviceVitalSignsMonitor.md),[Device/DreamChaserVehicle](Device-DreamChaserVehicle.md),[Device/JamesWebTelescope](Device-JamesWebTelescope.md),[Device/xEMUSpacesuit](Device-xEMUSpacesuit.md)and[Device/xEVASSpacesuit](Device-xEVASSpacesuit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceEquipment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceEquipment.csv), [Excel](StructureDefinition-SpaceEquipment.xlsx), [Schematron](StructureDefinition-SpaceEquipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceEquipment",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceEquipment",
  "version" : "0.5.6",
  "name" : "SpaceEquipment",
  "title" : "Commercial Space Equipment",
  "status" : "draft",
  "date" : "2025-12-30T13:15:27-07:00",
  "publisher" : "MITRE",
  "contact" : [
    {
      "name" : "MITRE",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.mitre.org/"
        }
      ]
    }
  ],
  "description" : "STUB - Device profile for commercial space equipment.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device"
      }
    ]
  }
}

```
