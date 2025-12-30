# xGeo Locations - v0.5.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **xGeo Locations**

## Resource Profile: xGeo Locations 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpaceLocation | *Version*:0.5.6 |
| Draft as of 2025-12-30 | *Computable Name*:SpaceLocation |

 
STUB - Locations in outerspace, past the Karman line, such as a space ship or space habitat. 

**Usages:**

* Derived from this Profile: [Neutral Buoyancy Facility](StructureDefinition-NeutralBuoyancyFacility.md)
* Examples for this Profile: [Artemis Base Camp Habitat](Location-ArtemisBaseCampHabitat.md), [Earth-Moon Lagrange Point Stations](Location-EarthMoonL4L5Stations.md), [ISS Columbus Laboratory](Location-InternationalSpaceStationColumbus.md), [ISS Cupola](Location-InternationalSpaceStationCupola.md)...Show 22 more,[ISS Destiny Laboratory](Location-InternationalSpaceStationDestiny.md),[ISS Kibo Laboratory Complex](Location-InternationalSpaceStationKibo.md),[ISS Unity Node](Location-InternationalSpaceStationUnity.md),[ISS Zvezda Service Module](Location-InternationalSpaceStationZvezda.md),[James Webb Space Telescope (L2)](Location-JamesWebbSpaceTelescope.md),[Location - Kennedy Space Center](Location-KennedySpaceCenter.md),[Location - Lab To Orbit](Location-LabToOrbit.md),[Location - Legrange Point 2](Location-LegangePoint2.md),[Location - Artemis Space Camp](Location-LocationArtemisSpaceCamp.md),[Location - ISS](Location-LocationInternationalSpaceStation.md),[Location - Gateway](Location-LocationLunarGateway.md),[Location - Lunar Village](Location-LocationLunarVillage.md),[Location - Mir](Location-LocationMirSpaceStation.md),[Location - Orbital Reef](Location-LocationOrbitalReefSpaceStation.md),[Location - Space Lab](Location-LocationSpaceLabSpaceStation.md),[Location - Palace in the Sky](Location-LocationTaingong.md),[Gateway HALO (Habitation and Logistics Outpost)](Location-LunarGatewayHALO.md),[Gateway PPE (Power and Propulsion Element)](Location-LunarGatewayPPE.md),[Lunar South Pole Research Station](Location-LunarSouthPoleBases.md),[Mars Base Alpha](Location-MarsBaseAlpha.md),[Shackleton Crater Research Station](Location-ShackletonCraterBase.md)and[Sun-Earth L1 Observatory](Location-SunEarthL1Station.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpaceLocation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpaceLocation.csv), [Excel](StructureDefinition-SpaceLocation.xlsx), [Schematron](StructureDefinition-SpaceLocation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpaceLocation",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpaceLocation",
  "version" : "0.5.6",
  "name" : "SpaceLocation",
  "title" : "xGeo Locations",
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
  "description" : "STUB - Locations in outerspace, past the Karman line, such as a space ship or space habitat.",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location"
      }
    ]
  }
}

```
