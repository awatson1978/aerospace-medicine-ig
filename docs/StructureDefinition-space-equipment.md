# Commercial Space Equipment - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Commercial Space Equipment**

## Resource Profile: Commercial Space Equipment 

| | |
| :--- | :--- |
| *Official URL*:https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment | *Version*:0.7.0 |
| Draft as of 2026-09-02 | *Computable Name*:SpaceEquipment |
| **Copyright/Legal**: Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124. | |

 
STUB - Device profile for commercial space equipment. 

**Usages:**

* Derived from this Profile: [Diving Equipment](StructureDefinition-diving-equipment.md) and [Underwater Communication System](StructureDefinition-underwater-communication-system.md)
* Refer to this Profile: [Space Suit Configuration](StructureDefinition-suit-configuration.md)
* Examples for this Profile: [Device/AscentEntrySpacesuit](Device-AscentEntrySpacesuit.md), [Device/AstroSpacesuit](Device-AstroSpacesuit.md), [Device/CislunarHighwayPatrolSystem](Device-CislunarHighwayPatrolSystem.md), [Device/DeviceAirLock](Device-DeviceAirLock.md)...Show 17 more,[Device/DeviceCyberTruck](Device-DeviceCyberTruck.md),[Device/DeviceFlightRecorder](Device-DeviceFlightRecorder.md),[Device/DeviceFlightSuit](Device-DeviceFlightSuit.md),[Device/DeviceHospitalBed](Device-DeviceHospitalBed.md),[Device/DeviceLunarRover](Device-DeviceLunarRover.md),[Device/DeviceOrbitalReef](Device-DeviceOrbitalReef.md),[Device/DeviceRadiotelescope](Device-DeviceRadiotelescope.md),[Device/DeviceSmartClothing](Device-DeviceSmartClothing.md),[Device/DeviceSpaceGarage](Device-DeviceSpaceGarage.md),[Device/DeviceSpaceSuit](Device-DeviceSpaceSuit.md),[Device/DeviceSpaceTent](Device-DeviceSpaceTent.md),[Device/DeviceTelehealthMonitor](Device-DeviceTelehealthMonitor.md),[Device/DeviceVitalSignsMonitor](Device-DeviceVitalSignsMonitor.md),[Device/DreamChaserVehicle](Device-DreamChaserVehicle.md),[Device/JamesWebTelescope](Device-JamesWebTelescope.md),[Device/xEMUSpacesuit](Device-xEMUSpacesuit.md)and[Device/xEVASSpacesuit](Device-xEVASSpacesuit.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/space-equipment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-space-equipment.csv), [Excel](StructureDefinition-space-equipment.xlsx), [Schematron](StructureDefinition-space-equipment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "space-equipment",
  "url" : "https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/space-equipment",
  "version" : "0.7.0",
  "name" : "SpaceEquipment",
  "title" : "Commercial Space Equipment",
  "status" : "draft",
  "date" : "2026-09-02T13:24:45-05:00",
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
  "copyright" : "Copyright 2022-2026 The MITRE Corporation and Abigail Watson. Licensed under Creative Commons Attribution-NoDerivatives 4.0 International (CC BY-ND 4.0). Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.",
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
