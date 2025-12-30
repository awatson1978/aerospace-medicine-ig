# Spacecraft Life Support Telemetry - v0.5.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spacecraft Life Support Telemetry**

## Logical Model: Spacecraft Life Support Telemetry 

| | |
| :--- | :--- |
| *Official URL*:https://mitre.org/fhir/space-health/StructureDefinition/SpacecraftLifeSupportTelemetry | *Version*:0.5.2 |
| Active as of 2025-12-29 | *Computable Name*:SpacecraftLifeSupportTelemetry |

 
A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules. 

 
To standardize telemetry data for environmental monitoring of spacecraft habitat conditions 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/mitre.fhir.spacehealth|current/StructureDefinition/SpacecraftLifeSupportTelemetry)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SpacecraftLifeSupportTelemetry.csv), [Excel](StructureDefinition-SpacecraftLifeSupportTelemetry.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SpacecraftLifeSupportTelemetry",
  "url" : "https://mitre.org/fhir/space-health/StructureDefinition/SpacecraftLifeSupportTelemetry",
  "version" : "0.5.2",
  "name" : "SpacecraftLifeSupportTelemetry",
  "title" : "Spacecraft Life Support Telemetry",
  "status" : "active",
  "date" : "2025-12-29T20:17:52-07:00",
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
  "description" : "A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules.",
  "purpose" : "To standardize telemetry data for environmental monitoring of spacecraft habitat conditions",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://mitre.org/fhir/space-health/StructureDefinition/SpacecraftLifeSupportTelemetry",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "SpacecraftLifeSupportTelemetry",
        "path" : "SpacecraftLifeSupportTelemetry",
        "short" : "Spacecraft Life Support Telemetry",
        "definition" : "A logical model representing Environmental Control and Life Support Systems (ECLSS) parameters monitored in spacecraft habitat modules."
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition",
        "short" : "Measurement of atmospheric gas composition",
        "definition" : "Measurement of atmospheric gas composition",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.o2Percent",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.o2Percent",
        "short" : "Oxygen percentage",
        "definition" : "Oxygen concentration in cabin air, typically around 21%. Crucial for breathing; must stay in safe range to avoid hypoxia or fire risk.",
        "comment" : "Target is approximately 21%. Alert if below 19.5% (hypoxia risk) or above 23% (fire hazard).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.co2Ppm",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.co2Ppm",
        "short" : "Carbon dioxide level",
        "definition" : "Carbon dioxide concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Kept low (thousands of ppm) to prevent crew headaches, dizziness. Alerts if above allowable limit (NASA 3 mmHg ≈ 4000 ppm 1-hr).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.n2Percent",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.n2Percent",
        "short" : "Nitrogen percentage",
        "definition" : "Nitrogen concentration in cabin air, typically around 78%.",
        "comment" : "Primary buffer gas to maintain pressure. Changes may indicate pressure adjustments.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.ch4Ppm",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.ch4Ppm",
        "short" : "Methane level",
        "definition" : "Methane concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Typically near 0. Monitored as part of atmospheric quality and as a flammability indicator.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.h2Ppm",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.h2Ppm",
        "short" : "Hydrogen level",
        "definition" : "Hydrogen concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Should be approximately 0; any reading flags a leak or issue as hydrogen is flammable.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.h2oPartialPressure",
        "path" : "SpacecraftLifeSupportTelemetry.atmosphericComposition.h2oPartialPressure",
        "short" : "Water vapor partial pressure",
        "definition" : "Water vapor partial pressure in cabin air, indicating absolute humidity.",
        "comment" : "Managed to prevent condensation; relates to approximately 40-60% relative humidity comfort range.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.climateControl",
        "path" : "SpacecraftLifeSupportTelemetry.climateControl",
        "short" : "Cabin pressure, temperature and humidity parameters",
        "definition" : "Cabin pressure, temperature and humidity parameters",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.climateControl.cabinPressureKPa",
        "path" : "SpacecraftLifeSupportTelemetry.climateControl.cabinPressureKPa",
        "short" : "Cabin pressure",
        "definition" : "Total cabin atmospheric pressure, nominally around 101 kPa.",
        "comment" : "Vital for habitability; deviations can cause decompression risks.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.climateControl.cabinTemperatureC",
        "path" : "SpacecraftLifeSupportTelemetry.climateControl.cabinTemperatureC",
        "short" : "Cabin temperature",
        "definition" : "Cabin air temperature, kept in 18-27°C safe range.",
        "comment" : "Optimal temperature around 22°C for crew health and comfort.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.climateControl.cabinHumidityPercent",
        "path" : "SpacecraftLifeSupportTelemetry.climateControl.cabinHumidityPercent",
        "short" : "Cabin humidity",
        "definition" : "Relative humidity in cabin air, as a percentage.",
        "comment" : "Controlled between 30-60% for comfort with limits at 25-75%. Prevents dry air or condensation issues.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.climateControl.cabinDewPointC",
        "path" : "SpacecraftLifeSupportTelemetry.climateControl.cabinDewPointC",
        "short" : "Cabin dew point",
        "definition" : "Dew point temperature of cabin air in degrees Celsius.",
        "comment" : "Useful for monitoring moisture load and condensation risk. Derived from humidity and temperature.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants",
        "short" : "Trace contaminants and VOCs in cabin air",
        "definition" : "Trace contaminants and VOCs in cabin air",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.coPpm",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.coPpm",
        "short" : "Carbon monoxide level",
        "definition" : "Carbon monoxide concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Normally 0. Toxic gas from fire or malfunctions; triggers immediate alarm if detected.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.nh3Ppm",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.nh3Ppm",
        "short" : "Ammonia level",
        "definition" : "Ammonia concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Normally 0. Toxic/irritant gas that indicates coolant leaks or contamination.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.formaldehydePpm",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.formaldehydePpm",
        "short" : "Formaldehyde level",
        "definition" : "Formaldehyde concentration in cabin air, measured in parts per million (ppm).",
        "comment" : "Target approximately 0; common off-gassed irritant. Tracked to ensure long-term exposure stays below SMAC limits.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm",
        "short" : "Other VOC measurements",
        "definition" : "Measurements of other volatile organic compounds in cabin air.",
        "comment" : "Used for specific volatile toxins (e.g., benzene, freon) to ensure air remains non-toxic.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm.compound",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm.compound",
        "short" : "Type of volatile organic compound",
        "definition" : "Type of volatile organic compound",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm.concentration",
        "path" : "SpacecraftLifeSupportTelemetry.airborneContaminants.otherVocPpm.concentration",
        "short" : "Concentration in parts per million",
        "definition" : "Concentration in parts per million",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem",
        "path" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem",
        "short" : "Status of air filtration and trace contaminant control systems",
        "definition" : "Status of air filtration and trace contaminant control systems",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.tccsStatus",
        "path" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.tccsStatus",
        "short" : "TCCS status",
        "definition" : "Operational status of the Trace Contaminant Control System.",
        "comment" : "Values may include: 'nominal', 'standby', 'off', 'fault'",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.tccsFilterLoadPercent",
        "path" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.tccsFilterLoadPercent",
        "short" : "TCCS filter load",
        "definition" : "Trace contaminant filter utilization percentage.",
        "comment" : "High values warn of reduced ability to clean air (filter saturation).",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.airFilterStatus",
        "path" : "SpacecraftLifeSupportTelemetry.airFiltrationSystem.airFilterStatus",
        "short" : "Air filter status",
        "definition" : "Condition of the cabin air filter.",
        "comment" : "Values may include: 'nominal', 'partial_clog', 'clogged'. Ensures ventilation efficacy; a clogged filter can lead to poor air quality.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.particulateMonitoring",
        "path" : "SpacecraftLifeSupportTelemetry.particulateMonitoring",
        "short" : "Particulate and microbial measurements",
        "definition" : "Particulate and microbial measurements",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.particulateMatterUgPerM3",
        "path" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.particulateMatterUgPerM3",
        "short" : "Particulate matter",
        "definition" : "Airborne particulate concentration, mass of dust/aerosol per volume.",
        "comment" : "Typically low in a clean cabin; rises if dust or smoke appears.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.particleCountPerCc",
        "path" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.particleCountPerCc",
        "short" : "Particle count",
        "definition" : "Number of particles per cubic centimeter above a certain size.",
        "comment" : "Complements mass concentration as another measure of air cleanliness.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.microbialAirCountCfuPerM3",
        "path" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.microbialAirCountCfuPerM3",
        "short" : "Airborne microbial count",
        "definition" : "Concentration of microbial colony-forming units in cabin air.",
        "comment" : "Indicates biological cleanliness of air. May be measured periodically rather than continuously.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.surfaceMicrobeCountCfuPer100cm2",
        "path" : "SpacecraftLifeSupportTelemetry.particulateMonitoring.surfaceMicrobeCountCfuPer100cm2",
        "short" : "Surface microbial count",
        "definition" : "Microbial load on surfaces from swab sampling.",
        "comment" : "High values could contribute to air contamination or crew infection risk.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment",
        "short" : "Radiation measurements and shielding status",
        "definition" : "Radiation measurements and shielding status",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "BackboneElement"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationDoseRateUSvPerHr",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationDoseRateUSvPerHr",
        "short" : "Radiation dose rate",
        "definition" : "Current ionizing radiation dose rate in the cabin.",
        "comment" : "Reflects cosmic ray/solar radiation environment; used to assess immediate radiation risk.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationCumulativeMSv",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationCumulativeMSv",
        "short" : "Cumulative radiation",
        "definition" : "Cumulative radiation dose received during the mission.",
        "comment" : "Tracks long-term exposure against established limits.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationAlertLevel",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationAlertLevel",
        "short" : "Radiation alert level",
        "definition" : "Indicates if radiation has crossed thresholds requiring crew action.",
        "comment" : "Values may include: 'nominal', 'elevated', 'storm'.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.shieldingMode",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.shieldingMode",
        "short" : "Shielding mode",
        "definition" : "Current shielding configuration of the habitat.",
        "comment" : "Indicates if extra precautions are in effect due to radiation, such as 'standard', 'storm_shelter'.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "code"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationShieldEfficiency",
        "path" : "SpacecraftLifeSupportTelemetry.radiationEnvironment.radiationShieldEfficiency",
        "short" : "Shield efficiency",
        "definition" : "Percentage of radiation being attenuated by the spacecraft structure.",
        "comment" : "Optional metric that indicates how much radiation is being blocked.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.timestamp",
        "path" : "SpacecraftLifeSupportTelemetry.timestamp",
        "short" : "Measurement timestamp",
        "definition" : "The date and time when the environmental measurements were recorded.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.location",
        "path" : "SpacecraftLifeSupportTelemetry.location",
        "short" : "Measurement location",
        "definition" : "Reference to the specific module or compartment where these measurements were taken.",
        "comment" : "Important for spacecraft with multiple habitable volumes that may have different environmental parameters.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
          }
        ]
      },
      {
        "id" : "SpacecraftLifeSupportTelemetry.spacecraft",
        "path" : "SpacecraftLifeSupportTelemetry.spacecraft",
        "short" : "Spacecraft reference",
        "definition" : "Reference to the spacecraft or habitat module where these measurements were taken.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
          }
        ]
      }
    ]
  }
}

```
