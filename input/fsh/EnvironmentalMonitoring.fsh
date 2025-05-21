// // This is a simple example of a FSH file.
// // This file can be renamed, and additional FSH files can be added.
// // SUSHI will look for definitions in any file using the .fsh ending.

Profile: EnvironmentalMonitoring
Parent: Observation
Description: "Profile for environmental monitoring."
Title: "Environmental Monitoring"
// * name 1..* MS

Instance: Observation.Environmental-1
InstanceOf: EnvironmentalMonitoring
Title: "Observation - Environmental"
Description: "Environmental monitoring status report"
* status = #final
* code = http://loinc.org#environmental "Environmental Status"
// * name
//   * given[0] = "James"
//   * family = "Pond"


Alias: $ucum = http://unitsofmeasure.org

// Main Logical Model for Environmental Monitoring in Closed Biome Systems
Logical: EnvironmentalMonitoringLogicalModel
Title: "Environmental Monitoring API for Closed Biome Systems"
Description: "A logical model representing the comprehensive environmental monitoring parameters for closed biome systems, including space habitats, lunar/Mars colonies, and Earth-based smart greenhouses."

// Solar Input/Output Measurements
* solarInputOutput 1..1 BackboneElement "Solar radiation and PAR measurements"
  * parTopUmol 0..1 decimal "PAR light intensity at top of canopy (μmol·m⁻²·s⁻¹)" 
  * parTopUmolAvg 0..1 decimal "Average PAR at top canopy over recent period (μmol·m⁻²·s⁻¹)"
  * parMidUmol 0..1 decimal "PAR intensity at mid-canopy (μmol·m⁻²·s⁻¹)"
  * parBottomUmol 0..1 decimal "PAR intensity at bottom of canopy (μmol·m⁻²·s⁻¹)"
  * solarIrradianceWm2 0..1 decimal "Total solar radiation on the biome exterior (W/m²)"
  * solarIrradianceWm2Avg 0..1 decimal "Average solar irradiance over a period (W/m²)"

// Thermal Mass & Heat Storage Sensors
* thermalMass 1..1 BackboneElement "Thermal mass and heat storage measurements"
  * concreteLoopInTempC 0..1 decimal "Inlet water temperature (°C) into a concrete thermal mass"
  * concreteLoopOutTempC 0..1 decimal "Outlet water temperature (°C) from the concrete mass"
  * waterTankInTempC 0..1 decimal "Inlet water temperature (°C) to a dedicated water thermal storage"
  * waterTankOutTempC 0..1 decimal "Outlet water temperature (°C) from the thermal storage tank"
  * internalTempC 0..1 decimal "General interior air temperature (°C) at a representative location"
  * internalTempCAvg 0..1 decimal "Average interior air temperature over a period (°C)"
  * internalTempTopC 0..1 decimal "Temperature at top of habitat (°C) to measure stratification"
  * internalTempBottomC 0..1 decimal "Temperature at bottom of habitat (°C) to measure stratification"

// Atmospheric Life-Support Metrics
* atmosphericLifeSupport 1..1 BackboneElement "Atmospheric conditions for life support"
  * co2Ppm 0..1 decimal "Carbon dioxide concentration in air (parts per million)"
  * co2PpmAvg 0..1 decimal "Average CO₂ concentration (ppm) over a recent interval"
  * o2Percent 0..1 decimal "Oxygen level in the air (% by volume)"
  * o2PercentAvg 0..1 decimal "Average O₂ level (%) over time"
  * n2Percent 0..1 decimal "Nitrogen level in the air (% by volume) - ISS parameter"
  * pressureKPa 0..1 decimal "Internal atmospheric pressure (kilopascals)"
  * humidityPercent 0..1 decimal "Relative humidity of air (%)"
  * humidityPercentAvg 0..1 decimal "Average relative humidity (%) over time"
  * temperatureAirC 0..1 decimal "Air temperature (°C) inside habitat"
  * temperatureAirCAvg 0..1 decimal "Average air temperature (°C) over time"
  * h2Ppm 0..1 decimal "Hydrogen level (ppm) - ISS parameter for leak detection"
  * ch4Ppm 0..1 decimal "Methane level (ppm) - ISS parameter for metabolic byproduct"

// HVAC & Pressure Regulation
* hvacPressureControl 1..1 BackboneElement "HVAC and pressure regulation parameters"
  * pressureDiffPa 0..1 decimal "Differential pressure between interior and exterior (Pa)"
  * lungPositionPercent 0..1 decimal "Expansion level of the external lung chamber (% of capacity)"
  * airflowRateCms 0..1 decimal "Air circulation flow rate through the HVAC system (m³/s)"
  * heatExchangerInC 0..1 decimal "Air or fluid temperature into a heat exchanger unit (°C)"
  * heatExchangerOutC 0..1 decimal "Outlet temperature after the exchanger (°C)"

// Biome Health Indicators
* biomeHealth 1..1 BackboneElement "Biome health indicators for water and air quality"
  * waterPH 0..1 decimal "pH level of habitat's water supply or nutrient solution"
  * ozonePpm 0..1 decimal "Ozone concentration in the air (ppm)"
  * habitatHumidityPercent 0..1 decimal "Habitat living-area relative humidity (%)"
  * soilMoisturePercent 0..1 decimal "Soil or growth-medium moisture content (% volumetric water content)"
  * vocPpm 0..1 decimal "Volatile Organic Compounds level (ppm of VOCs)"

// External Environment (Weather API Integration)
* externalEnvironment 1..1 BackboneElement "External environment parameters"
  * externalTempC 0..1 decimal "Outside ambient temperature (°C)"
  * externalHumidityPercent 0..1 decimal "Outside relative humidity (%)"
  * externalPressureHPa 0..1 decimal "External barometric pressure (hPa)"
  * externalSolarWm2 0..1 decimal "Solar irradiance outside (W/m²)"

// Metadata
* timestamp 1..1 dateTime "Timestamp of data collection"
* deviceId 0..1 string "ID of monitoring system or sensor network"
* location 0..1 string "Location identifier (habitat section, greenhouse zone, etc.)"