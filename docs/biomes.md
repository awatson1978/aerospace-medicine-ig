# Biospheres - v0.5.0

* [**Table of Contents**](toc.md)
* **Biospheres**

## Biospheres

## Environmental Monitoring API for a Closed Biome System

Introduction: Closed biome habitats – whether Earth-based smart greenhouses, orbital stations, or lunar/ Martian colonies – require comprehensive real-time monitoring of environmental conditions. A JSON-based API for such a system should expose all key life-support and diagnostic variables needed to maintain a stable, habitable environment. This includes monitoring solar radiation for plant growth, thermal storage for temperature control, atmospheric composition (e.g. CO₂, O₂, humidity, pressure) for life support, HVAC parameters (including an external “lung” expansion chamber for pressure regulation), and overall biome health indicators (water pH, ozone levels, etc.). Each sensor reading can be reported as a current value along with aggregated averages to aid trend analysis and system control. The following sections outline sensor data categories, recommended JSON fields (with data types and units), and the purpose of each field in a closed-biome or space habitat context.

Example control panel from a sealed habitat test module (1988) showing multiple sensor readouts (“Now”) and their running averages (“Avg”). Key metrics include CO₂ level (~3920 ppm), wet bulb temperature (for humidity), ozone concentration, pH, and even an “external lung” position. Such comprehensive monitoring is crucial to maintain life-supporting conditions in closed systems.

### Solar Input/Output Measurements

Closed ecosystems often rely on sunlight (or artificial light) for plant photosynthesis and heat. **Photosynthetically Active Radiation (PAR)** sensors at different heights help ensure light penetrates the plant canopy evenly, and solar radiation sensors track overall energy input. These fields inform lighting control (e.g. supplemental LED lights or shades) and thermal management.

Here's the information converted into a markdown table:

| | | |
| :--- | :--- | :--- |
| par_top_umol | float | PAR light intensity at top of canopy (μmol·m⁻²·s⁻¹). Ensures plants receive adequate light at the upper level for photosynthesis. Multiple height measurements are used to verify light distribution through the canopy. |
| par_mid_umol | float | PAR intensity at mid-canopy (μmol·m⁻²·s⁻¹). Helps determine how much light reaches lower leaves; critical for uniform plant growth. (Additional PAR sensors at various heights – e.g. par_bottom_umol – can be included as needed.) |
| solar_irradiance_wm2 | float | Total solar radiation on the biome exterior (W/m²). Represents incoming energy from sunlight (or artificial lights); important for heating calculations and energy balance. |
| par_top_umol_avg | float | Average PAR at top canopy over a recent period (e.g. last 1 hour, μmol·m⁻²·s⁻¹). Used to calculate daily light integral and ensure plants get sufficient cumulative light. (Averaged or integrated values can be provided for other light sensors similarly.) |
| solar_irradiance_wm2_avg | float | Average solar irradiance over a period (W/m²). Helps track trends in available solar energy (e.g. distinguishing a cloudy vs. sunny day), which informs climate control and power management. |

Purpose: Light measurements drive plant growth and influence interior heat. By monitoring PAR at multiple levels, the system can adjust lighting or plant spacing to optimize photosynthesis and prevent lower canopy shading. Tracking overall solar input supports managing shutters, supplemental lighting, and thermal load (since sunlight also adds heat to the habitat).

### Thermal Mass & Heat Storage Sensors

Closed habitats often use thermal mass (e.g. concrete floors, water tanks) to stabilize temperature. Sensors monitoring the temperatures of these materials and their heat exchange fluid loops (inlet/outlet) are essential for diagnostics and control of heating/cooling.

Here's the information converted into a markdown table:

| | | |
| :--- | :--- | :--- |
| concrete_loop_out_temp_C | float | Outlet water temperature (°C) from the concrete mass. The difference between inlet and outlet reflects heat absorption or release by the concrete. This helps assess how effectively the slab is buffering temperature swings. |
| water_tank_in_temp_C | float | Inlet water temperature (°C) to a dedicated water thermal storage (if present). Water is often used as thermal mass due to its high heat capacity. Monitoring inlet/outlet helps manage charging (heating) or discharging (cooling) of the water heat reservoir. |
| water_tank_out_temp_C | float | Outlet water temperature (°C) from the thermal storage tank. Together with inlet temp, this shows the heat exchanged with the tank. A small delta-T implies the tank is nearing thermal equilibrium (fully charged or discharged). |
| internal_temp_C | float | General interior air temperature (°C) at a representative location. (Often multiple thermometers are placed throughout the habitat to check for stratification; additional fields like internal_temp_top_C, internal_temp_bottom_C could be used.) This baseline temperature, along with thermal mass sensor data, is used to regulate HVAC and ensure comfort. |
| internal_temp_C_avg | float | Average interior air temperature over a period (°C). Smoothing out short-term fluctuations, this helps evaluate overall thermal stability and the performance of passive heat storage over day/night cycles. |

Purpose: Thermal sensors provide insight into how well the habitat retains and distributes heat. For example, a concrete slab or water tank can absorb excess heat during the day and release it at night. Monitoring inlet/outlet temperatures on these thermal masses allows the control system to gauge heat transfer rates and adjust pump flows or insulation. Maintaining a stable interior temperature is critical for both crew comfort and biological processes, making these readings fundamental for climate control automation.

### Atmospheric Life-Support Metrics

The atmospheric conditions inside the biome must be kept within narrow ranges for human and plant life. Key gas concentrations, pressure, temperature, and humidity are continuously monitored. These fields mirror those tracked in spacecraft life support systems (ISS ECLSS monitors O₂, N₂, CO₂, H₂O, etc.) and in smart greenhouses.

Here's the information converted into a properly formatted markdown table:

| | | |
| :--- | :--- | :--- |
| co2_ppm | float | Carbon dioxide concentration in air (parts per million). Critical for life support: high CO₂ impairs crew cognition and plant respiration. This value is actively managed via CO₂ scrubbers or plant uptake – without removal, CO₂ can accumulate to dangerous levels. (The ISS, for example, keeps cabin CO₂ in the range of ~1500–3000 ppm for crew safety.) |
| o2_percent | float | Oxygen level in the air (% by volume). O₂ must be sufficient for human breathing (around 21% at sea-level pressure). This field helps ensure the habitat's oxygen generation system (e.g. electrolysis or stored O₂) maintains safe levels. A drop in O₂ would indicate consumption or leak, requiring intervention (adding O₂ or reducing CO₂ removal if using plants). |
| pressure_kPa | float | Internal atmospheric pressure (kilopascals). Typically around 101 kPa (1 atm) for Earth-like conditions, or slightly lower in space habitats. Pressure is held stable to maintain crew comfort and prevent structural stress. Sudden changes could signify a leak or a failing pressure regulator. (In Biosphere 2, a slight positive pressure ~125 Pa above ambient was maintained to prevent outside contamination.) |
| humidity_percent | float | Relative humidity of air (%). Vital for both human comfort and plant transpiration. High humidity (>70%) can lead to condensation and mold, while too low (<30%) causes dehydration of plants and people. This sensor ensures humidity stays in an optimal band (e.g. 40–60% for crew areas, potentially higher for plant zones). Water vapor is a major component tracked in spacecraft cabins. |
| temperature_air_C | float | Air temperature (°C) inside habitat. Kept in a range comfortable for humans (roughly 18–26 °C) and suitable for plant growth. Temperature works in tandem with humidity (e.g. via dew point considerations) for climate control. Multiple temperature sensors may be deployed at various heights or rooms, if needed (see internal_temp_C in Thermal section). |
| co2_ppm_avg | float | Average CO₂ concentration (ppm) over a recent interval (e.g. 1 hour). This smooths out short-term fluctuations and reveals trends in CO₂ levels – useful for adjusting scrubber settings or plant ventilation. A rising 24-hour average might indicate crew activity exceeding plant CO₂ uptake or a scrubbing system issue. |
| o2_percent_avg | float | Average O₂ level (%) over time. Confirms that oxygen supply is keeping up with consumption. In a healthy system this should remain roughly constant; any downward trend would alert operators to O₂ usage outpacing production. |
| humidity_percent_avg | float | Average relative humidity (%). Helps verify long-term moisture balance. For example, a consistently climbing humidity average might indicate insufficient dehumidification or excessive transpiration, whereas dips might point to overactive drying. |
| temperature_air_C_avg | float | Average air temperature (°C) over time. Indicates overall thermal stability. This is useful in evaluating whether thermal control and insulation are adequate (e.g. comparing day vs night averages to see how well temperature is held). |

Purpose: Atmospheric metrics are the core of life support monitoring. CO₂ and O₂ levels must be tightly controlled – too much CO₂ is toxic, and too little O₂ is obviously fatal. Pressure and humidity must stay within human-safe limits, as defined by crew health standards (for instance, cabin humidity and temperature are kept within specific ranges to protect crew health). The API’s atmospheric fields enable automated life support systems to inject oxygen, scrub CO₂, remove moisture, or adjust temperature as needed. They are also critical for diagnostics: for example, an unexplained pressure drop would immediately signal a leak or breach, and a spike in CO₂ could indicate a scrubber failure or sudden influx of CO₂ (e.g. from many people exercising). Providing both instantaneous readings and time-averaged values allows controllers to differentiate between transient spikes and sustained shifts, which is important for alarm logic and trend analysis.

### HVAC & Pressure Regulation (External "Lung" Integration)

In a sealed environment, the HVAC system not only manages air quality and temperature, but also must accommodate pressure changes. An external lung – a flexible volume or expandable chamber – is often used to keep internal pressure stable as the air expands or contracts with temperature changes. The API exposes sensors related to this lung mechanism and overall airflow, enabling closed-loop control of the habitat’s atmosphere.

Here's the information converted into a properly formatted markdown table:

| | | |
| :--- | :--- | :--- |
| pressure_diff_pa | float | Differential pressure between the habitat interior and the external environment (Pa). In normal operation this should be near zero, meaning the internal pressure equals the external reference (or a slight positive offset as a safety margin). This field is crucial for structural safety – it ensures the habitat isn't under dangerous pressure that could cause leaks or implosion/explosion. The external lung absorbs pressure swings to keep this difference low. A deviation (e.g. > ±100 Pa) would flag that the lung is at its limit or a valve has malfunctioned. |
| lung_position_percent | float | Expansion level of the external lung chamber (% of full capacity). At 0% the lung is fully contracted (minimal internal air volume in the lung), at 100% it's fully expanded (maximum volume engaged). This indicates how much buffer volume remains for pressure regulation. For instance, if the lung is nearing 100%, the habitat is at risk of over-pressurization if temperature rises further. In Biosphere 2 analogs, crew monitored lung position alongside gas levels as a key habitat parameter. |
| airflow_rate_cms | float | Air circulation flow rate through the HVAC system (m³/s). Measures how much air is being moved by fans or blowers. Adequate airflow ensures even distribution of CO₂/O₂ and temperature, preventing stratified pockets of CO₂ or humidity. A drop in flow could indicate a fan failure or blocked filter, whereas variable flow might be used actively to control temperatures. |
| heat_exchanger_in_C | float | ([Optional]) Air or fluid temperature into a heat exchanger unit (°C). If the habitat uses an air-to-air or air-to-liquid exchanger (for cooling or connecting to an external radiator), this sensor monitors the inlet temperature. Used in diagnosing HVAC performance (how effectively heat is being removed or added). |
| heat_exchanger_out_C | float | ([Optional]) Outlet temperature after the exchanger (°C). The difference between in and out helps calculate heat transfer. For example, on the ISS, heat exchangers transfer cabin heat to external radiators – similar readings would show how much cooling is achieved across the unit. |

Purpose: These HVAC fields tie the atmospheric data to the mechanical systems controlling it. The pressure_diff_pa and lung_position_percent work together to ensure the habitat’s structural integrity: the external lung mechanism holds excess air when internal pressure rises, preventing the habitat from “exploding under the immense pressure of its gases”. Monitoring lung expansion and pressure differential provides early warning if the system is reaching its limits. The airflow_rate_cms is essential for air quality and temperature consistency – without active circulation, CO₂ could accumulate in stagnating corners or temperatures could stratify (hot ceiling, cold floor). By integrating these sensors, the API allows controllers to adjust fan speeds, dampers, or the lung volume actively. For instance, if pressure_diff starts to climb, the system might proactively cool the air or vent a small volume (in an Earth greenhouse scenario) to bring pressure down. If airflow is low, an alert can be raised to check fan operations or filter clogs. Overall, this category bridges the environment measurements with the mechanical responses necessary to maintain them.

### Biome Health Indicators (Air & Water Quality)

Beyond the basic life-support variables, closed ecosystems benefit from additional sensors that track the health of plants, water, and the general habitat. These include water chemistry for hydroponics, trace gas pollutants, and zone-specific conditions. They are important for diagnosing subtle issues (e.g. nutrient imbalances, pollutant buildup) that could affect long-term sustainability.

Here's the information converted into a properly formatted markdown table:

| | | |
| :--- | :--- | :--- |
| water_pH | float | pH level of the habitat's water supply or nutrient solution (dimensionless). Critical for plant health – if the biome includes hydroponics or aquaponics, maintaining an optimal pH (typically ~5.5–6.5 for hydroponic nutrient solutions) ensures nutrient availability. Deviations in pH can stress plants or indicate bioactivity (e.g. algae growth or microbial activity) that needs correction. |
| ozone_ppm | float | Ozone concentration in the air (ppm). Ozone (O₃) is a harmful oxidant; even low levels can irritate lungs and damage plant tissues. In a closed habitat, ozone might be produced by electrical equipment or used in water sterilization, so it must be monitored to remain safe (typically near 0 ppm). For reference, aircraft cabin air is regulated to <0.25 ppm ozone for passenger safety. An elevated ozone_ppm reading would trigger scrubbing or filtering because ozone above safe levels can degrade air quality and materials. |
| habitat_humidity_percent | float | Habitat living-area relative humidity (%). In designs where the crew living quarters are separate from the plant growing area, this field represents humidity in the human habitat zone. It may be kept at a different setpoint (e.g. drier for human comfort) than the greenhouse zone. Monitoring it separately ensures both zones remain in their ideal ranges. (If the habitat is a single zone, this overlaps with the main humidity_percent field.) |
| soil_moisture_percent | float | ([Optional]) Soil or growth-medium moisture content (% volumetric water content). Applicable if plants are grown in soil or substrate. This indicates whether plants have sufficient water and helps automate irrigation. In a closed system, maintaining proper soil moisture is important to prevent plant stress and to manage water resources efficiently. |
| voc_ppm | float | ([Optional]) Volatile Organic Compounds level (ppm of VOCs). This is a general air quality indicator covering pollutants like ethylene (which can affect plant development) or off-gassed chemicals from plastics. While not a single gas, a broad-spectrum VOC sensor can warn of accumulating contaminants that the basic life support might not catch (e.g. a chemical spill or excessive plant emissions). |

Purpose: Biome health sensors go a step further into ensuring a long-term viable ecosystem. The water_pH field, for instance, safeguards the nutrient cycles – plants in hydroponics have optimal pH windows for nutrient uptake 9 , and fish or microbial communities also need specific pH ranges. This is crucial in space or closed habitats where you cannot easily replace water or soil; the chemistry must be carefully balanced. The ozone_ppm sensor protects both life and equipment – ozone can be a byproduct of certain sterilization systems or intense UV lights, and it can damage lungs and sensitive electronics if unchecked. By monitoring ozone, the habitat control can activate charcoal filters or UV off-switches to keep ozone at trace levels. The separate habitat_humidity_percent acknowledges that multi-zone habitats might have different climate requirements (for example, a hydroponic greenhouse might run at 70% RH for plant growth, while the crew cabins stay at 50% to prevent mold and discomfort). Providing a field for each zone’s humidity (and temperature if needed) allows targeted climate control in each area. Additional optional fields like soil_moisture_percent or voc_ppm illustrate how the system can be extended – soil moisture feedback can drive automated watering, and VOC levels can indicate when to refresh air or adjust filters (important in tightly sealed spaces where any buildup of toxins could be harmful).

### External Integration & Extensibility

The JSON API is designed to be extensible and integrable with other systems, from space station telemetry to terrestrial weather services. Each field name is clear and self-descriptive (often including units for clarity), which aids integration with external data sources or protocols:

• ISS Environmental Integration: The chosen fields align well with those used on the International Space Station and similar life support systems. For example, ISS telemetry monitors major atmospheric constituents O₂, N₂, CO₂, and H₂O (humidity) in real time – our o2_percent, co2_ppm , and humidity_percent directly correspond. If needed, additional fields can be introduced to match spacecraft data, such as n2_percent (for nitrogen level, usually stable in a closed system) or trace gases like h2_ppm and ch4_ppm for leak detection (ISS watches for H₂ from equipment and CH₄ as a trace metabolic byproduct). Unit conversions may be applied (e.g. NASA often uses partial pressures in mmHg or kPa for gases; the API could either output those directly or provide a known conversion from the given units).

• Commercial Weather API Integration: For Earth deployments (e.g. a sealed greenhouse), external weather data provides valuable context. The API can include fields for outside conditions obtained from services like AmbientWeather or Weather Underground. For instance:

Here's the information converted into a properly formatted markdown table:

| | | |
| :--- | :--- | :--- |
| external_temp_C | float | Outside ambient temperature (°C) from a local weather station or API. Useful for predicting heat gain/loss (e.g. a cold front might increase heating demand). |
| external_humidity_percent | float | Outside relative humidity (%). Helps in managing ventilation or dehumidification – e.g. bringing in extremely humid outside air could raise indoor humidity. |
| external_pressure_hPa | float | External barometric pressure (hPa). Provides weather context (high/low pressure systems) for Earth-based biomes; also useful if the habitat is not at sea level. (For space or lunar deployments, this would typically be near 0 or not used.) |
| external_solar_wm2 | float | Solar irradiance outside (W/m²). This might come from an external pyranometer or weather service and indicates potential available sunlight for the biome. It can inform how much to adjust artificial lighting or predict passive heating. |

By using common naming (temperature, humidity, etc.), the API can map these directly from popular weather APIs, easing integration. For example, Ambient Weather’s JSON might provide tempf (temperature in °F) or Weather Underground might have UV index or solarradiation ; these can be converted to the unified metric fields above. This two-way integration means the biome’s data could also be uploaded to such services or combined with them for analysis (e.g. comparing internal vs. external climate).

• Data Grouping and Access Patterns: The JSON structure can be organized to improve clarity and integration. One approach is to group fields into nested objects by category or physical zone. For instance, an alternate schema could be:

```
{
"atmosphere": {
"co2_ppm": 1200.5,
"co2_ppm_avg": 1100.0,
"o2_percent": 20.8,
"pressure_kPa": 98.5,
...
},
"thermal": {
"concrete_loop_in_temp_C": 25.0,
"concrete_loop_out_temp_C": 22.5,
...
},
"solar": {
"par_top_umol": 300.0,
"par_mid_umol": 250.0,
9
...
},
"hvac": {
"pressure_diff_pa": 10,
"lung_position_percent": 30,
...
},
"biome_health": {
"water_pH": 6.2,
"ozone_ppm": 0.01,
...
},
"external": {
"external_temp_C": 5.0,
"external_humidity_percent": 80,
...
}
}

```

Grouping can make it easier for clients to subscribe to or query just the subset they need (for example, a mobile app might poll atmosphere frequently for life support status, but solar or external only periodically). It also mirrors how systems are divided (sensors on different controllers, etc.), which can simplify protocol integration (e.g. topics in an MQTT broker could be habitat/atmosphere/co2_ppm and so on).

• Current and Aggregate Values: Each sensor field is primarily defined for the real-time reading (e.g. co2_ppm for the latest CO₂ level). However, to support diagnostics and trending, the API defines parallel fields for averages (and potentially other aggregates like min/max). These could be computed on the habitat control system and served via the API. The convention used in this design is a simple suffix (e.g. _avg ) for average values, but it can be extended. For example, one might include co2_ppm_min_24h and co2_ppm_max_24h or use a nested structure:

```
"co2_ppm": {
"current": 1200.5,
"avg_24h": 1100.0,
"min_24h": 900.0,
"max_24h": 1300.0
}

```

The flat vs. nested approach can be chosen based on what’s easier for consumers of the API. The key is that the API makes these aggregates explicit so that external systems (or operators) don’t all have to recompute them. This is especially useful in space or remote habitats where bandwidth may be limited sending an already-averaged value saves transmit volume and ensures consistency in what different clients see.

• Extensibility: The JSON field list is not static; new sensors or calculated fields can be added as the system evolves. For instance, if a methane detector is installed later, a field ch4_ppm could be appended. Because JSON is schemaless, clients that do not recognize a new field can ignore it, while those that need it can start using it. It’s advisable to maintain a clear naming scheme (as done above) for any new fields, and to document units in either the field name or a separate metadata dictionary to avoid confusion. Additionally, one could incorporate metadata fields such as sensor timestamp or status if needed (e.g. "co2_ppm_timestamp": "2025-05-14T07:00:00Z" or "co2_sensor_status": "OK" ), ensuring that the API not only provides values but also confidence in those values.

In summary, this structured set of JSON fields provides a comprehensive picture of a closed biome’s environment. It balances the needs of life support (air composition, pressure), plant cultivation (light, humidity, pH), and system diagnostics (thermal flows, lung position, etc.). By organizing the data into logical groups and including both instantaneous readings and summary statistics, the API can support real-time control algorithms, crew decision-making, and integration with external monitoring services. The design is forward-compatible with both space-based habitats (aligning with ISS ECLSS parameters) and Earth-based smart greenhouse networks, facilitating a unified approach to environmental data in sealed life-support systems.

### Sources:

Aranet Wireless Sensors – Case Study on greenhouse PAR distribution Emerald Review – Biosphere 2 lung mechanism for pressure regulation Univ. of Arizona News – SAM habitat test monitoring (lung pressure, O₂/CO₂ levels) ACS (2025) – CO₂ removal is critical to prevent deadly buildup in spacecraft NASA ISS ECLSS – Monitored atmospheric constituents (O₂, N₂, CO₂, H₂O, etc.) FAA Regulations – Cabin ozone limit of 0.25 ppm for air travel safety Hydroponics Guide – Optimal nutrient solution pH (~5.5–6.5) for plant nutrient uptake

### References

*  

| | |
| :--- | :--- |
| [Becoming a multiplanetary species: Crew completes first mission in pressurized habitat at Biosphere 2 | University of Arizona News](https://news.arizona.edu/news/becoming-multiplanetary-species-crew-completes-first-mission-pressurized-habitat-biosphere-2) |

 
*  

| | |
| :--- | :--- |
| [Biosphere 2: The Futuristic Space Colony That Wasn't | The Emerald Review](https://emeraldreview.com/2024/08/biosphere-2-the-futuristic-space-colony-that-never-was/) |

 
* [The Impact of Fotoniq’s PAR+ Coating and Aranet Sensors - Aranet](https://pro.aranet.com/the-impact-of-fotoniqs-par-coating-and-aranet-sensors/)
* [Tips on Using Water Barrels in a Solar Greenhouse – Ceres Greenhouse Solutions](https://ceresgs.com/tips-on-using-water-barrels-in-a-solar-greenhouse/)
* [International Space Station (ISS) Environmental Control and Life Support (ECLS) System Overview of Events: 2010 - 2014](https://ntrs.nasa.gov/api/citations/20150022318/downloads/20150022318.pdf)
* [Dual Function Materials Enabling Human Space Flight: Carbon Dioxide Capture and Conversion for Life Support on Crewed Missions - PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC11955851/)
* [Environmental Control & Life Support System (ECLSS) - NASA](https://www.nasa.gov/wp-content/uploads/2023/07/eclss-technical-brief-ochmo.pdf)
* [Why is pH Important for Hydroponics? - Atlas Scientific](https://atlas-scientific.com/blog/ph-for-hydroponics/)
* [An Analysis of Cabin Ozone Regulations - Scholarly Commons](https://commons.erau.edu/cgi/viewcontent.cgi?article=2125&context=publication)

