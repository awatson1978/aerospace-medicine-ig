# Environmental Monitoring API for Closed Biome Systems - v0.5.5

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Environmental Monitoring API for Closed Biome Systems**

## Logical Model: Environmental Monitoring API for Closed Biome Systems 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoringLogicalModel | *Version*:0.5.5 |
| Draft as of 2025-12-30 | *Computable Name*:EnvironmentalMonitoringLogicalModel |

 
A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/EnvironmentalMonitoringLogicalModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-EnvironmentalMonitoringLogicalModel.csv), [Excel](StructureDefinition-EnvironmentalMonitoringLogicalModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "EnvironmentalMonitoringLogicalModel",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoringLogicalModel",
  "version" : "0.5.5",
  "name" : "EnvironmentalMonitoringLogicalModel",
  "title" : "Environmental Monitoring API for Closed Biome Systems",
  "status" : "draft",
  "date" : "2025-12-30T10:45:53-07:00",
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
  "description" : "A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://mitre.org/fhir/space-health/StructureDefinition/EnvironmentalMonitoringLogicalModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "EnvironmentalMonitoringLogicalModel",
        "path" : "EnvironmentalMonitoringLogicalModel",
        "short" : "Environmental Monitoring API for Closed Biome Systems",
        "definition" : "A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses."
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput",
        "short" : "Solar radiation and PAR measurements",
        "definition" : "Solar radiation and PAR measurements",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parTopUmol",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parTopUmol",
        "short" : "PAR light intensity at top of canopy (μmol·m⁻²·s⁻¹)",
        "definition" : "PAR light intensity at top of canopy (μmol·m⁻²·s⁻¹)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parTopUmolAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parTopUmolAvg",
        "short" : "Average PAR at top canopy over recent period (μmol·m⁻²·s⁻¹)",
        "definition" : "Average PAR at top canopy over recent period (μmol·m⁻²·s⁻¹)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parMidUmol",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parMidUmol",
        "short" : "PAR intensity at mid-canopy (μmol·m⁻²·s⁻¹)",
        "definition" : "PAR intensity at mid-canopy (μmol·m⁻²·s⁻¹)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parBottomUmol",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.parBottomUmol",
        "short" : "PAR intensity at bottom of canopy (μmol·m⁻²·s⁻¹)",
        "definition" : "PAR intensity at bottom of canopy (μmol·m⁻²·s⁻¹)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.solarIrradianceWm2",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.solarIrradianceWm2",
        "short" : "Total solar radiation on the biome exterior (W/m²)",
        "definition" : "Total solar radiation on the biome exterior (W/m²)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.solarIrradianceWm2Avg",
        "path" : "EnvironmentalMonitoringLogicalModel.solarInputOutput.solarIrradianceWm2Avg",
        "short" : "Average solar irradiance over a period (W/m²)",
        "definition" : "Average solar irradiance over a period (W/m²)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass",
        "short" : "Thermal mass and heat storage measurements",
        "definition" : "Thermal mass and heat storage measurements",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.concreteLoopInTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.concreteLoopInTempC",
        "short" : "Inlet water temperature (°C) into a concrete thermal mass",
        "definition" : "Inlet water temperature (°C) into a concrete thermal mass",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.concreteLoopOutTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.concreteLoopOutTempC",
        "short" : "Outlet water temperature (°C) from the concrete mass",
        "definition" : "Outlet water temperature (°C) from the concrete mass",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.waterTankInTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.waterTankInTempC",
        "short" : "Inlet water temperature (°C) to a dedicated water thermal storage",
        "definition" : "Inlet water temperature (°C) to a dedicated water thermal storage",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.waterTankOutTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.waterTankOutTempC",
        "short" : "Outlet water temperature (°C) from the thermal storage tank",
        "definition" : "Outlet water temperature (°C) from the thermal storage tank",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempC",
        "short" : "General interior air temperature (°C) at a representative location",
        "definition" : "General interior air temperature (°C) at a representative location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempCAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempCAvg",
        "short" : "Average interior air temperature over a period (°C)",
        "definition" : "Average interior air temperature over a period (°C)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempTopC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempTopC",
        "short" : "Temperature at top of habitat (°C) to measure stratification",
        "definition" : "Temperature at top of habitat (°C) to measure stratification",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempBottomC",
        "path" : "EnvironmentalMonitoringLogicalModel.thermalMass.internalTempBottomC",
        "short" : "Temperature at bottom of habitat (°C) to measure stratification",
        "definition" : "Temperature at bottom of habitat (°C) to measure stratification",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport",
        "short" : "Atmospheric conditions for life support",
        "definition" : "Atmospheric conditions for life support",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.co2Ppm",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.co2Ppm",
        "short" : "Carbon dioxide concentration in air (parts per million)",
        "definition" : "Carbon dioxide concentration in air (parts per million)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.co2PpmAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.co2PpmAvg",
        "short" : "Average CO₂ concentration (ppm) over a recent interval",
        "definition" : "Average CO₂ concentration (ppm) over a recent interval",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.o2Percent",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.o2Percent",
        "short" : "Oxygen level in the air (% by volume)",
        "definition" : "Oxygen level in the air (% by volume)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.o2PercentAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.o2PercentAvg",
        "short" : "Average O₂ level (%) over time",
        "definition" : "Average O₂ level (%) over time",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.n2Percent",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.n2Percent",
        "short" : "Nitrogen level in the air (% by volume) - ISS parameter",
        "definition" : "Nitrogen level in the air (% by volume) - ISS parameter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.pressureKPa",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.pressureKPa",
        "short" : "Internal atmospheric pressure (kilopascals)",
        "definition" : "Internal atmospheric pressure (kilopascals)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.humidityPercent",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.humidityPercent",
        "short" : "Relative humidity of air (%)",
        "definition" : "Relative humidity of air (%)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.humidityPercentAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.humidityPercentAvg",
        "short" : "Average relative humidity (%) over time",
        "definition" : "Average relative humidity (%) over time",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.temperatureAirC",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.temperatureAirC",
        "short" : "Air temperature (°C) inside habitat",
        "definition" : "Air temperature (°C) inside habitat",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.temperatureAirCAvg",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.temperatureAirCAvg",
        "short" : "Average air temperature (°C) over time",
        "definition" : "Average air temperature (°C) over time",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.h2Ppm",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.h2Ppm",
        "short" : "Hydrogen level (ppm) - ISS parameter for leak detection",
        "definition" : "Hydrogen level (ppm) - ISS parameter for leak detection",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.ch4Ppm",
        "path" : "EnvironmentalMonitoringLogicalModel.atmosphericLifeSupport.ch4Ppm",
        "short" : "Methane level (ppm) - ISS parameter for metabolic byproduct",
        "definition" : "Methane level (ppm) - ISS parameter for metabolic byproduct",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl",
        "short" : "HVAC and pressure regulation parameters",
        "definition" : "HVAC and pressure regulation parameters",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.pressureDiffPa",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.pressureDiffPa",
        "short" : "Differential pressure between interior and exterior (Pa)",
        "definition" : "Differential pressure between interior and exterior (Pa)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.lungPositionPercent",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.lungPositionPercent",
        "short" : "Expansion level of the external lung chamber (% of capacity)",
        "definition" : "Expansion level of the external lung chamber (% of capacity)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.airflowRateCms",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.airflowRateCms",
        "short" : "Air circulation flow rate through the HVAC system (m³/s)",
        "definition" : "Air circulation flow rate through the HVAC system (m³/s)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.heatExchangerInC",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.heatExchangerInC",
        "short" : "Air or fluid temperature into a heat exchanger unit (°C)",
        "definition" : "Air or fluid temperature into a heat exchanger unit (°C)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.heatExchangerOutC",
        "path" : "EnvironmentalMonitoringLogicalModel.hvacPressureControl.heatExchangerOutC",
        "short" : "Outlet temperature after the exchanger (°C)",
        "definition" : "Outlet temperature after the exchanger (°C)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth",
        "short" : "Biome health indicators for water and air quality",
        "definition" : "Biome health indicators for water and air quality",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth.waterPH",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth.waterPH",
        "short" : "pH level of habitat's water supply or nutrient solution",
        "definition" : "pH level of habitat's water supply or nutrient solution",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth.ozonePpm",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth.ozonePpm",
        "short" : "Ozone concentration in the air (ppm)",
        "definition" : "Ozone concentration in the air (ppm)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth.habitatHumidityPercent",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth.habitatHumidityPercent",
        "short" : "Habitat living-area relative humidity (%)",
        "definition" : "Habitat living-area relative humidity (%)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth.soilMoisturePercent",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth.soilMoisturePercent",
        "short" : "Soil or growth-medium moisture content (% volumetric water content)",
        "definition" : "Soil or growth-medium moisture content (% volumetric water content)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.biomeHealth.vocPpm",
        "path" : "EnvironmentalMonitoringLogicalModel.biomeHealth.vocPpm",
        "short" : "Volatile Organic Compounds level (ppm of VOCs)",
        "definition" : "Volatile Organic Compounds level (ppm of VOCs)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.externalEnvironment",
        "path" : "EnvironmentalMonitoringLogicalModel.externalEnvironment",
        "short" : "External environment parameters",
        "definition" : "External environment parameters",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalTempC",
        "path" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalTempC",
        "short" : "Outside ambient temperature (°C)",
        "definition" : "Outside ambient temperature (°C)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalHumidityPercent",
        "path" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalHumidityPercent",
        "short" : "Outside relative humidity (%)",
        "definition" : "Outside relative humidity (%)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalPressureHPa",
        "path" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalPressureHPa",
        "short" : "External barometric pressure (hPa)",
        "definition" : "External barometric pressure (hPa)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalSolarWm2",
        "path" : "EnvironmentalMonitoringLogicalModel.externalEnvironment.externalSolarWm2",
        "short" : "Solar irradiance outside (W/m²)",
        "definition" : "Solar irradiance outside (W/m²)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.timestamp",
        "path" : "EnvironmentalMonitoringLogicalModel.timestamp",
        "short" : "Timestamp of data collection",
        "definition" : "Timestamp of data collection",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.deviceId",
        "path" : "EnvironmentalMonitoringLogicalModel.deviceId",
        "short" : "ID of monitoring system or sensor network",
        "definition" : "ID of monitoring system or sensor network",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "EnvironmentalMonitoringLogicalModel.location",
        "path" : "EnvironmentalMonitoringLogicalModel.location",
        "short" : "Location identifier (habitat section, greenhouse zone, etc.)",
        "definition" : "Location identifier (habitat section, greenhouse zone, etc.)",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
