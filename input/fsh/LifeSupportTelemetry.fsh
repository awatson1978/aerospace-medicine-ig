Logical: SpacecraftLifeSupportTelemetry
Title: "Spacecraft Life Support Telemetry"
Description: "A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules."

* ^status = #active
* ^publisher = "Aerospace Medicine Implementation Guide"
* ^purpose = "To standardize telemetry data for environmental monitoring of spacecraft habitat conditions"

// Atmospheric Composition
* atmosphericComposition 0..1 BackboneElement "Measurement of atmospheric gas composition"
  * o2Percent 0..1 decimal "Oxygen concentration in cabin air (percentage)"
    * ^short = "Oxygen percentage"
    * ^definition = "Oxygen concentration in cabin air, typically around 21%. Crucial for breathing; must stay in safe range to avoid hypoxia or fire risk."
    * ^comment = "Target is approximately 21%. Alert if below 19.5% (hypoxia risk) or above 23% (fire hazard)."
  * co2Ppm 0..1 decimal "Carbon dioxide level (parts per million)"
    * ^short = "Carbon dioxide level"
    * ^definition = "Carbon dioxide concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Kept low (thousands of ppm) to prevent crew headaches, dizziness. Alerts if above allowable limit (NASA 3 mmHg ≈ 4000 ppm 1-hr)."
  * n2Percent 0..1 decimal "Nitrogen concentration (percentage)"
    * ^short = "Nitrogen percentage"
    * ^definition = "Nitrogen concentration in cabin air, typically around 78%."
    * ^comment = "Primary buffer gas to maintain pressure. Changes may indicate pressure adjustments."
  * ch4Ppm 0..1 decimal "Methane level (parts per million)"
    * ^short = "Methane level"
    * ^definition = "Methane concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Typically near 0. Monitored as part of atmospheric quality and as a flammability indicator."
  * h2Ppm 0..1 decimal "Hydrogen level (parts per million)"
    * ^short = "Hydrogen level"
    * ^definition = "Hydrogen concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Should be approximately 0; any reading flags a leak or issue as hydrogen is flammable."
  * h2oPartialPressure 0..1 decimal "Water vapor partial pressure (kPa)"
    * ^short = "Water vapor partial pressure"
    * ^definition = "Water vapor partial pressure in cabin air, indicating absolute humidity."
    * ^comment = "Managed to prevent condensation; relates to approximately 40-60% relative humidity comfort range."

// Climate Control
* climateControl 0..1 BackboneElement "Cabin pressure, temperature and humidity parameters"
  * cabinPressureKPa 0..1 decimal "Total cabin pressure (kPa)"
    * ^short = "Cabin pressure"
    * ^definition = "Total cabin atmospheric pressure, nominally around 101 kPa."
    * ^comment = "Vital for habitability; deviations can cause decompression risks."
  * cabinTemperatureC 0..1 decimal "Cabin air temperature (°C)"
    * ^short = "Cabin temperature"
    * ^definition = "Cabin air temperature, kept in 18-27°C safe range."
    * ^comment = "Optimal temperature around 22°C for crew health and comfort."
  * cabinHumidityPercent 0..1 decimal "Relative humidity (percentage)"
    * ^short = "Cabin humidity"
    * ^definition = "Relative humidity in cabin air, as a percentage."
    * ^comment = "Controlled between 30-60% for comfort with limits at 25-75%. Prevents dry air or condensation issues."
  * cabinDewPointC 0..1 decimal "Dew point of cabin air (°C)"
    * ^short = "Cabin dew point"
    * ^definition = "Dew point temperature of cabin air in degrees Celsius."
    * ^comment = "Useful for monitoring moisture load and condensation risk. Derived from humidity and temperature."

// Airborne Contaminants
* airborneContaminants 0..1 BackboneElement "Trace contaminants and VOCs in cabin air"
  * coPpm 0..1 decimal "Carbon monoxide level (parts per million)"
    * ^short = "Carbon monoxide level"
    * ^definition = "Carbon monoxide concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Normally 0. Toxic gas from fire or malfunctions; triggers immediate alarm if detected."
  * nh3Ppm 0..1 decimal "Ammonia level (parts per million)"
    * ^short = "Ammonia level"
    * ^definition = "Ammonia concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Normally 0. Toxic/irritant gas that indicates coolant leaks or contamination."
  * formaldehydePpm 0..1 decimal "Formaldehyde level (parts per million)"
    * ^short = "Formaldehyde level"
    * ^definition = "Formaldehyde concentration in cabin air, measured in parts per million (ppm)."
    * ^comment = "Target approximately 0; common off-gassed irritant. Tracked to ensure long-term exposure stays below SMAC limits."
  * otherVocPpm 0..* BackboneElement "Other volatile organic compounds"
    * compound 1..1 CodeableConcept "Type of volatile organic compound"
    * concentration 1..1 decimal "Concentration in parts per million"
    * ^short = "Other VOC measurements"
    * ^definition = "Measurements of other volatile organic compounds in cabin air."
    * ^comment = "Used for specific volatile toxins (e.g., benzene, freon) to ensure air remains non-toxic."

// Air Filtration System
* airFiltrationSystem 0..1 BackboneElement "Status of air filtration and trace contaminant control systems"
  * tccsStatus 0..1 code "Status of Trace Contaminant Control System"
    * ^short = "TCCS status"
    * ^definition = "Operational status of the Trace Contaminant Control System."
    * ^comment = "Values may include: 'nominal', 'standby', 'off', 'fault'"
  * tccsFilterLoadPercent 0..1 decimal "Trace contaminant filter utilization (percentage)"
    * ^short = "TCCS filter load"
    * ^definition = "Trace contaminant filter utilization percentage."
    * ^comment = "High values warn of reduced ability to clean air (filter saturation)."
  * airFilterStatus 0..1 code "Cabin air filter condition"
    * ^short = "Air filter status"
    * ^definition = "Condition of the cabin air filter."
    * ^comment = "Values may include: 'nominal', 'partial_clog', 'clogged'. Ensures ventilation efficacy; a clogged filter can lead to poor air quality."

// Particulate Monitoring
* particulateMonitoring 0..1 BackboneElement "Particulate and microbial measurements"
  * particulateMatterUgPerM3 0..1 decimal "Airborne particulate concentration (µg/m³)"
    * ^short = "Particulate matter"
    * ^definition = "Airborne particulate concentration, mass of dust/aerosol per volume."
    * ^comment = "Typically low in a clean cabin; rises if dust or smoke appears."
  * particleCountPerCc 0..1 decimal "Particle count concentration (count/cm³)"
    * ^short = "Particle count"
    * ^definition = "Number of particles per cubic centimeter above a certain size."
    * ^comment = "Complements mass concentration as another measure of air cleanliness."
  * microbialAirCountCfuPerM3 0..1 decimal "Airborne microbial count (CFU/m³)"
    * ^short = "Airborne microbial count"
    * ^definition = "Concentration of microbial colony-forming units in cabin air."
    * ^comment = "Indicates biological cleanliness of air. May be measured periodically rather than continuously."
  * surfaceMicrobeCountCfuPer100cm2 0..1 decimal "Surface microbial load (CFU/100cm²)"
    * ^short = "Surface microbial count"
    * ^definition = "Microbial load on surfaces from swab sampling."
    * ^comment = "High values could contribute to air contamination or crew infection risk."

// Radiation Environment
* radiationEnvironment 0..1 BackboneElement "Radiation measurements and shielding status"
  * radiationDoseRateUSvPerHr 0..1 decimal "Current radiation dose rate (µSv/h)"
    * ^short = "Radiation dose rate"
    * ^definition = "Current ionizing radiation dose rate in the cabin."
    * ^comment = "Reflects cosmic ray/solar radiation environment; used to assess immediate radiation risk."
  * radiationCumulativeMSv 0..1 decimal "Cumulative radiation dose (mSv)"
    * ^short = "Cumulative radiation"
    * ^definition = "Cumulative radiation dose received during the mission."
    * ^comment = "Tracks long-term exposure against established limits."
  * radiationAlertLevel 0..1 code "Radiation status indicator"
    * ^short = "Radiation alert level"
    * ^definition = "Indicates if radiation has crossed thresholds requiring crew action."
    * ^comment = "Values may include: 'nominal', 'elevated', 'storm'."
  * shieldingMode 0..1 code "Current habitat shielding configuration"
    * ^short = "Shielding mode"
    * ^definition = "Current shielding configuration of the habitat."
    * ^comment = "Indicates if extra precautions are in effect due to radiation, such as 'standard', 'storm_shelter'."
  * radiationShieldEfficiency 0..1 decimal "Effective radiation shielding percentage"
    * ^short = "Shield efficiency"
    * ^definition = "Percentage of radiation being attenuated by the spacecraft structure."
    * ^comment = "Optional metric that indicates how much radiation is being blocked."

// Sample Status Timestamp
* timestamp 1..1 dateTime "Time when measurements were recorded"
  * ^short = "Measurement timestamp"
  * ^definition = "The date and time when the environmental measurements were recorded."

// Location Information
* location 0..1 Reference(Location) "Location within the spacecraft where measurements were taken"
  * ^short = "Measurement location"
  * ^definition = "Reference to the specific module or compartment where these measurements were taken."
  * ^comment = "Important for spacecraft with multiple habitable volumes that may have different environmental parameters."

// Spacecraft Identifier
* spacecraft 0..1 Reference(Device) "Spacecraft or habitat module identifier"
  * ^short = "Spacecraft reference"
  * ^definition = "Reference to the spacecraft or habitat module where these measurements were taken."