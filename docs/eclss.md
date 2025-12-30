# Environmental Control and Life Support Systems (ECLSS) - v0.5.1

* [**Table of Contents**](toc.md)
* **Environmental Control and Life Support Systems (ECLSS)**

## Environmental Control and Life Support Systems (ECLSS)

# Unified Environmental Health Telemetry Fields for Spacecraft

Maintaining a safe, Earth-like cabin environment is critical for crewed spacecraft. Environmental Control and Life Support Systems (ECLSS) on vehicles like the ISS, Space Shuttle, Artemis/Orion, Crew Dragon, and Soyuz all perform similar functions: providing breathable air, comfortable climate, and removing contaminants. Below is a structured set of JSON-based telemetry fields (with data types and units) that could be used across these spacecraft to monitor real-time environmental health parameters. Each field includes a description of its function, relevance to crew health, and any spacecraft-specific notes. (All units are metric for consistency.)

### Atmospheric Composition

Key atmospheric gases in a crewed cabin (primarily Nitrogen, Oxygen, Carbon Dioxide, plus trace gases) must be monitored to ensure a breathable and non-hazardous mix. Spacecraft like the ISS use sensors (e.g. the Major Constituent Analyzer) to continuously read out partial pressures of major gases. Fields and common ranges include:

* **o2_percent** (float, %) – Oxygen concentration in cabin air. Typically maintained around ~21% (sea-level equivalent) to support human respiration. Sufficient O₂ partial pressure (~21 kPa at 101 kPa total pressure) is vital to avoid hypoxia; too low causes dizziness and loss of consciousness. Excess O₂ (above ~23-25%) is avoided due to fire risk. Relevance: Low O₂ impairs crew health within minutes. Spacecraft keep O₂ within tight bounds and display it in real time. For example, Orion’s laser air monitor continuously tracks O₂ levels.


  **Spacecraft notes:** All listed vehicles use a roughly Earth-normal O₂/N₂ atmosphere. The Space Shuttle and ISS operated at ~101 kPa, 21% O₂ 2. (The Shuttle could temporarily lower cabin pressure to ~70 kPa for EVA prep, but O₂ percent was then raised to ~26% to maintain partial pressure). Our unified field uses percentage for clarity.
* **co2_ppm** (float, parts-per-million) – Carbon Dioxide concentration in cabin air. Nominally a few hundred to a few thousand ppm; controlled via scrubbers to stay below strict limits (NASA standard ≤3 mmHg ≈ 4000 ppm 1-hour average 5). High CO₂ can cause headaches, drowsiness, and impaired cognition, progressing to more serious symptoms if levels rise (e.g. ≥~8000 ppm causes distress). Relevance: CO₂ is the primary metabolic waste gas and must be removed to prevent hypercapnia. ECLSS continuously scrubs CO₂ (e.g. LiOH canisters in Crew Dragon and Soyuz, regenerative scrubbers on ISS) and monitors cabin CO₂ to trigger alerts if thresholds are exceeded. Real-time ppCO₂ is typically displayed to crew/ground because if CO₂ removal fails, crew can become symptomatic within hours.


  **Spacecraft notes:** ISS and Shuttle aimed for ~0.3–0.5% CO₂ (≈2300–3800 ppm) steady-state. NASA’s guidelines (SMAC and Std-3001) limit exposure (e.g. 3 mmHg / 0.4 kPa 1-hr limit). Soyuz and Apollo (short-term missions) allowed CO₂ to climb a bit higher before canister changes, but all include this field. Use of ppm aligns with common reporting and SMAC values.
* **n2_percent** (float, %) – Nitrogen concentration in cabin air. Normally ~78% in an Earth-like atmosphere. N₂ is an inert buffer gas that maintains total pressure and prevents excess oxygen. Relevance: While N₂ itself isn’t metabolically active, the total pressure and partial pressures of O₂/ N₂ are managed together. Too little N₂ results in low total pressure (risk of decompression sickness); too much N₂ at high pressure could raise risk of nitrogen narcosis, though spacecraft do not approach those levels. N₂ is typically not toxic, but its percentage drops if O₂ is increased for pressure adjustments.


  **Spacecraft notes:** All vehicles use N₂ as the primary diluent gas. Some Russian vehicles historically reported total pressure in mmHg and O₂ in partial pressure, implicitly determining N₂. This field makes N₂ explicit for completeness (optional if total pressure and O₂ are known).
* **ch4_ppm** (float, ppm) – Methane concentration in cabin air. Normally very low (a few ppm). CH₄ can be produced by human metabolism in trace amounts or released from experiments/hardware. Relevance: Methane is not highly toxic at trace levels but is monitored as part of atmospheric quality. It is also a flammability concern if concentrated (though nominal levels are far below the lower flammable limit). On ISS, the Major Constituent Analyzer tracks CH₄ continuously. An unusual rise could indicate a leak from a system or an unexpected biologic process.


  **Spacecraft notes:** All modern spacecraft have the capability to detect elevated methane as a safety metric, though nominal readings are near-zero. This field would typically read or a small value under normal conditions.
* **h2_ppm** (float, ppm) – Hydrogen concentration in cabin air. Nominally ~0 ppm; any detected H₂ is significant. Relevance: Hydrogen is a highly flammable gas, monitored to detect leaks (e.g. from fuel cells on Shuttle, water electrolysis equipment on ISS). Even small H₂ accumulations are taken seriously; readings approaching a fraction of a percent would prompt alarms due to fire/explosion risk.


  **Spacecraft notes:** ISS’s analyzer monitors H₂ 10, and Apollo/Shuttle had H₂ sensors (fuel cell byproduct). This field may often be zero; a non-zero reading triggers troubleshooting. Units in ppm (or µatm partial pressure) allow detecting tiny increases.
* **h2o_partial_pressure** (float, kPa) – Water vapor partial pressure in cabin air, i.e. moisture content. This can also be reported as humidity (see below) but is included here as a measured gas partial pressure (e.g. ISS detects H₂O via mass spectrometer). Relevance: Adequate humidity is important for crew comfort and health (avoiding dry skin or excessive condensation). Water vapor in excess leads to condensation on surfaces, which can foster microbial growth or electrical issues.


  Typically, a dew point or partial pressure corresponding to comfortable humidity (around 40–60% RH at 22°C) is maintained. This field helps indicate if dehumidification systems are working.


  **Spacecraft notes:** Orion and ISS explicitly monitor water vapor levels in real time. In practice, this may be presented as %RH to crew, but partial pressure (e.g. ~1.1–2.2 kPa at comfort range) is a fundamental measure. (You can derive %RH from this and temperature.)

### Cabin Pressure, Temperature, and Humidity

ECLSS must maintain a comfortable total pressure, temperature, and humidity for crew survival. These fields represent the core habitability conditions:

* **cabin_pressure_kPa** (float, kPa) – Total cabin air pressure. This is the overall atmospheric pressure in the habitat. Nominal is around 101 kPa (1 atm) for most spacecraft. Relevance: Proper pressure is critical to avoid hypobaric or hyperbaric effects on the human body. A drop in pressure can cause hypoxia and decompression sickness; an excessive pressure could risk barotrauma. Crewed spacecraft keep pressure in a safe range and alarm if it deviates. For instance, ISS and Crew Dragon run ~101 kPa; Soyuz and Shuttles also target sea-level pressure.


  **Spacecraft notes:** The Space Shuttle occasionally operated at ~70 kPa (10.2 psi) during pre-EVA campouts to acclimate crews for spacesuit pressure. Our unified field is in kPa (metric); historically, NASA used psi and Russia used mmHg (760 mmHg = 101 kPa) – conversion can be handled in software. Typical safe range per NASA is roughly 91–104 kPa cabin pressure (with alarms outside that).
* **cabin_temperature_C** (float, °C) – Cabin air temperature. Usually maintained in the 18°C to 27°C safe range 13, with an optimal comfort band around 22°C ±3°. Relevance: Temperature directly affects crew comfort, performance, and health. Too cold (<18°C) risks hypothermia over time; too hot (>30°C) causes heat stress and degrades the ability to work. NASA’s human health standards specify 18–27 °C as safe limits for crew health, and a narrower 20–25 °C for ideal performance and comfort 13. This telemetry field ensures thermal control systems are keeping habitat temperature within those bounds.


  **Spacecraft notes:** All crewed spacecraft have active thermal control. The ISS for example maintains roughly 22–24 °C in modules. Crew can adjust Dragon and Orion cabin temps within a set range. This field is critical during phases like re-entry or sunlight eclipse cycles when thermal swings occur.
* **cabin_humidity_percent** (float, %RH) – Relative humidity of cabin air. Controlled to stay roughly 30–60% RH for comfort 14 13, with allowable wider bounds ~25–75% . Relevance: Humidity affects respiratory comfort and prevents issues like drying of mucous membranes (if too low) or condensation and mold growth (if too high). NASA requires keeping humidity under 75% to avoid condensation on surfaces. High humidity combined with microgravity can cause water accumulation in unintended places, and too low humidity can increase susceptibility to illness. This field is monitored continuously; deviations trigger dehumidifiers or humidifiers as needed.


  **Spacecraft notes:** The ISS uses a condensing heat exchanger to remove moisture, keeping RH ~40-60%. Soyuz, being a smaller volume, relies on cabin air temperature control and lithium chloride canisters for humidity. All vehicles transmit humidity readings to ground. Water vapor/condensate metrics: If humidity gets too high, condensation sensors or accumulated condensate volume might also be tracked (e.g. liters of water collected), but those are indirect – the %RH field is the primary indicator of moisture in air.
* **cabin_dew_point_C** (float, °C) – Dew point temperature of cabin air. (Optional, derived from humidity and temperature.) This indicates the temperature at which water would condense. Relevance: Dew point gives a more absolute measure of moisture load. A rising dew point means more water vapor in air. Keeping dew point moderate (typically <15°C) ensures that surfaces cooler than cabin air won’t get wet. While not always directly telemetered, it’s often calculated from humidity and temperature to monitor risk of condensation, which ties into microbial growth concerns.


  **Spacecraft notes:** The ISS ECLSS calculates dew point and uses it to control the humidity separator. In a JSON API, this can be provided for convenience, though cabin_humidity_percent covers similar information for most uses.

### Airborne Contaminants & Trace Gases

Beyond the main gases, trace contaminants (toxic or irritating chemicals in the air) must be kept below allowable limits. These come from off-gassing materials, leaks, or byproducts of equipment and crew. Space agencies define Spacecraft Maximum Allowable Concentrations (SMACs) for many substances. Telemetry fields for key contaminants include:

* **co_ppm** (float, ppm) – Carbon Monoxide concentration. Normally 0 ppm in a healthy cabin (CO is not naturally present). Any non-zero reading is critical. Relevance: CO is a poisonous gas that binds to blood hemoglobin, causing suffocation at high levels. It could be produced by smoldering electrical components or incomplete combustion (though open fire is rare in spacecraft, a heater malfunction or a chemical reaction could release CO). ECLSS often includes a Combustion Product Monitor that watches for CO as an early fire indicator. SMAC limits for CO are very low (on the order of 10–50 ppm for short-term exposure).


  **Spacecraft notes**: The Space Shuttle had a sensor to convert any CO to CO₂ for removal, and the ISS’s Trace Contaminant Control System (TCCS) catalytically oxidizes CO to CO₂ as well 18. In Soyuz, chemical oxygen candles (if used) could produce CO if malfunctioning – hence cabin air is sampled by chemical dosimeters. Our field assumes any modern craft would report CO if detected (e.g. via an Air Quality Monitor payload).
* **nh3_ppm** (float, ppm) – Ammonia concentration. Nominally 0 ppm; any detectable ammonia is a concern. Relevance: Ammonia (NH₃) is a toxic, sharp-smelling gas that can irritate eyes and lungs even at low ppm. It might enter the cabin through coolant leaks (ISS and Shuttle used ammonia in external thermal control, but inside the cabin it could leak from an experiment or a breakdown of urea). NASA identified ammonia as one of the contaminants likely to exceed allowable limits without active scrubbing. SMAC limits for ammonia (NH₃) are on the order of 30 ppm for short-term and ~7 ppm long-term (for 180 days).


  **Spacecraft notes:** The ISS TCCS specifically targets ammonia removal if present. Crew Dragon’s ECLSS, though mostly sealed, would also monitor for any NH₃ if carried (e.g. from payloads or leaked cleaning solution). Including this field ensures any habitat with ammonia-based systems can report leaks promptly.
* **formaldehyde_ppm** (float, ppm) – Formaldehyde concentration. Target is 0, but in practice a few ppb (parts per billion, note) can occur from off-gassing plastics and fabrics. (Field can be float ppm with typically 0.000-level values.) Relevance: Formaldehyde (CH₂O) is a common off-gassed contaminant in spacecraft interiors and a known irritant/carcinogen. Chronic exposure even at low levels can cause respiratory irritation or allergic reactions. NASA toxicologists have SMAC limits for formaldehyde (e.g. ~0.1 ppm for 7-day exposure) given its health risks. ECLSS trace contaminant systems actively remove formaldehyde (often using activated charcoal and catalytic oxidizers). Continuous monitoring is done with devices like the ISS Air Quality Monitor (AQM) which can detect formaldehyde in real time.


  **Spacecraft notes:** Formaldehyde levels were notably an issue in early ISS modules until materials outgassed – it’s a prime example of why trace gas monitoring exists. This field would typically be very low or zero; if it climbs, filters or sorbents are saturated or a new source is present. (Crew Dragon’s short missions likely don’t accumulate much formaldehyde, but ISS and long-duration vehicles do over time.)

Other Trace Gases: Additional JSON fields can be defined for specific compounds as needed. For example:

* **benzene_ppm** (float) – Benzene is another hazardous VOC occasionally detected from materials or experiments (carcinogenic; SMAC ~0.1 ppm long-term).
* **freon_ppm** (float) – If a coolant leak (Freon or other refrigerant) is possible, a field for refrigerant level could be included.
* **voc_total_ppm** (float) – Some systems provide a total volatile organic compounds reading (TVOC) as an aggregate. This can be an overview of air quality when individual sensors aren’t available for each chemical.


  We highlight CO, NH₃, and formaldehyde as they are known priority contaminants, but a unified schema can extend to others (e.g. hydrogen sulfide H₂S if biological experiments produce it, etc.). All such fields represent the toxic trace gases that are monitored and controlled to stay below NASA/ESA allowable limits.
* **tccs_status** (string or enum) – Trace Contaminant Control System status. Indicates the state of the system that scrubs trace gases (e.g. "Nominal", "Standby", "Off", "Fault"). Relevance: While not an environmental level itself, this is a life support status metric. A failure or saturation of the TCCS would likely lead to rising contaminant readings over time. Monitoring this status helps ground controllers anticipate air quality changes.


  **Spacecraft notes:** On ISS, the TCCS runs continuously to keep trace contaminant levels below SMACs. If the TCCS is offline (e.g. for maintenance), crew might curtail activities that produce contaminants or rely on backup filters. Other vehicles (Orion, etc.) may have simpler systems (e.g. replaceable filter canisters for odors) – status could then be binary (present/absent or cartridge life remaining).
* **tccs_filter_load_percent** (float, %) – Trace contaminant filter usage. Represents how saturated the sorbents/catalysts are (0% = fresh, 100% = at capacity). Relevance: Directly tied to environmental health – a filter near 100% can no longer effectively scrub harmful gases, risking crew exposure. If this field trends high, it flags the need for filter replacement or regeneration.


  **Spacecraft notes:** ISS’s TCCS uses activated charcoal beds and a catalytic oxidizer which have finite capacity. On shorter missions (Shuttle, Dragon), they size filters to not saturate before mission end, so this might be always low. However, including it in a unified API is useful for long-duration habitats or future vehicles where trace contaminant loads can accumulate over months.

### Particulate and Microbial Monitoring

Airborne particles (dust, fibers, etc.) and microorganisms (bacteria, fungi) are also part of environmental health. Zero-gravity prevents normal settling of dust, so particulates float and must be filtered. Likewise, microbes can proliferate on surfaces or in air filters. Key telemetry fields:

* **particulate_matter_ug_per_m3** (float, µg/m³) – Particulate concentration in cabin air, by mass density. This typically refers to small particles (e.g. PM2.5 or PM10 – particles <2.5 µm or <10 µm in size). A healthy cabin has very low particulate levels (much lower than typical indoor air on Earth) due to HEPA filtration. Relevance: Particulates can irritate the respiratory system and also indicate issues like filter performance or ongoing cabin contamination (for example, a failing device releasing dust). Tracking particulate load helps ensure filters are working and warns if air cleanliness degrades. The ISS deployed an Airborne Particulate Monitor to continuously measure particle counts and sizes in real time, a first for station. Elevated particle readings might occur during crew activity (e.g. when dust is disturbed) but prolonged high levels would be investigated.


  **Spacecraft notes:** Historically, spacecraft relied on periodic air samples for particles, but ISS now has continuous monitors. Our field uses µg/m³ to align with Earth air quality metrics (though counts per cm³ or per liter could also be used). If needed, separate fields for pm2_5_ug_per_m3 and pm10_ug_per_m3 can specify different size fractions. In a unified schema, one could include both for detail. All crew vehicles have filtration systems, but only some have active particle sensors (ISS does; Shuttle did not continuously monitor but had filters weighed after flight). Future long-duration habitats will likely include such telemetry.
* **particle_count_per_cc** (float, count/cm³) – Particle count concentration (an alternative/complement to mass concentration). This measures number of particles above a certain size per cubic centimeter of air. Relevance: Counting particles can detect even ultrafine dust that might not weigh much but could be numerous. A spike in counts could signify a shedding material or a smoke event (if combustion, though that also shows in CO). This field complements the mass measure to give a fuller picture of air cleanliness.


  **Spacecraft notes:** The ISS APM, for example, reports counts for various size bins (0.5 µm, 2.5 µm, etc.). For a simplified API, a single aggregate count field could be provided or multiple fields for different size thresholds. We include one generic count here for completeness. Spacecraft cabins generally maintain very low counts (near-zero large particles) during normal operation, thanks to constant air circulation and filtration.
* **microbial_air_count_cfu_per_m3** (float, CFU/m³) – Airborne microbial load, often expressed in colony-forming units per cubic meter (from air samples). Real-time continuous monitoring of microbes is still emerging, but periodic sampling data can be reported via this field. Relevance: Bacteria and fungi can grow in the closed environment and pose infection or allergy risks. While HEPA filters remove many microbes (treated as particulates), some still circulate or grow on surfaces. Monitoring microbial counts helps assess sanitation and filter efficacy. A rise in airborne CFU (colony counts) might indicate a filter needs replacing or a spill (water leaks leading to mold, etc.).


  **Spacecraft notes:** Currently, ISS crew perform microbial air sampling periodically (using devices like Petri dish impactors or filter samplers) and incubate cultures; these results (CFU counts) are reported later. New technologies (e.g. gene sequencers and fluorescent detection) are being tested for real-time microbial monitoring onboard ISS. In a unified telemetry model, this field might be updated infrequently (after sampling), but future spacecraft could have continuous bioaerosol sensors. It’s included to cover the “microorganisms in cabin air” aspect of environmental health.
* **surface_microbe_count_cfu_per_100cm2** (float, CFU/100 cm²) – Surface microbial count (e.g. per swab area). While not an air telemetry value, this contextual field can be part of environmental health reports, indicating cleanliness of cabin surfaces. Relevance: High surface microbe counts could lead to air contamination or crew illness via contact. ECLSS doesn’t directly control surface microbes, but the data is relevant to overall habitat health.


  **Spacecraft notes:** This comes from crew-collected swabs and cultivation or genetic analysis (e.g. swab-to-sequencer methods on ISS). It’s an offline data point rather than real-time telemetry. Including it in the schema allows integrated environmental health monitoring (air and surfaces).
* **air_filter_status (string/enum)** – Cabin air filter status. E.g. "Nominal", "Clogged 50%", or a percentage of flow restriction. Relevance: A clogged filter can lead to increased particulate levels and reduced ventilation (which in turn can cause CO₂ pockets and uneven cooling).Monitoring filter health ensures air circulation is adequate.


  **Spacecraft notes:** ISS uses multiple HEPA filters in its ventilation loops; their condition is checked by pressure drop measurements. Most spacecraft have at least a coarse filter for debris. This field would mostly flag when a filter change is needed. It complements the particulate count field (e.g., rising particle counts with a “OK” filter might mean a new particle source; rising counts with a high clog reading means filter can’t clean effectively).

### Radiation Environment

Space is pervaded by ionizing radiation from cosmic rays and solar events. ECLSS doesn’t create shielding (beyond habitat structure), but monitoring radiation exposure is vital for crew health. Fields to include:

* **radiation_dose_rate_uSv_per_hr** (float, µSv/h) – Current radiation dose rate in the habitat, in micro-Sieverts per hour. This indicates how much ionizing radiation the crew is being exposed to at the moment. On the ISS, typical rates are on the order of ~20–100 µSv/h depending on orbital position and solar activity (equivalent to ~0.2–1 mSv per week). Relevance: Real-time dose rate lets crew and ground know if radiation is within normal bounds or spiking (as during a solar particle event). If a sudden increase occurs, it may indicate a solar flare/CME and prompt crew to take shelter in a more shielded module. Continuous dosimeters feed this field; for example, astronauts wear personal dosimeters and the ISS has area monitors, the data from which can be telemetered.


  **Spacecraft notes**: All current crew vehicles have passive dosimeters, but reporting a unified real-time dose rate is typically done on ISS (which has an array of radiation sensors). Orion has planned active radiation sensors for deep space, which would produce such a reading. We use µSv/hour as units (the Sievert accounts for biological effect). This field essentially gives a “radiation weather” report inside the craft.
* **radiation_cumulative_mSv** (float, mSv) – Cumulative mission dose received by the crew (or location) in millisieverts. This accumulative counter starts from mission begin (or could be career cumulative for each astronaut, but here likely mission-based). Relevance: Long-term health risk (cancer, etc.) correlates with total radiation dose. NASA and other agencies impose career and mission dose limits (for instance, ~600 mSv career limit, and ISS crew ~70 mSv per 6-months typically). Tracking cumulative dose ensures no crew exceeds safety limits. It also helps gauge when additional shielding or mission adjustments are needed.


  **Spacecraft notes:** On ISS, astronauts average ~0.1–0.18 Sv/year (100–180 mSv/y). The cumulative field would reflect such exposure. For short missions (Shuttle ~10 days, Dragon ~1–2 days transit), cumulative dose might stay <5 mSv. Still, including it allows comparison across missions and ensures even short excursions (like Artemis lunar missions, which might get higher dose due to deep-space radiation) are monitored. It resets each mission (unless tracking a particular individual’s lifetime dose, which is usually done in medical records rather than telemetry).
* **radiation_alert_level** (string/enum) – Radiation alert status, e.g. "Nominal", "Elevated", "Storm". This can be derived from dose rate but is a useful high-level field. Relevance: It indicates if radiation levels have crossed set thresholds. For example, if >50 µSv/h, maybe "Elevated"; if a solar event pushes it >500 µSv/h, "Storm" might be declared. Crew actions (shelter, electronics shutdown) are tied to these levels.


  **Spacecraft notes:** NASA procedures classify solar storm events and have go/no-go for EVAs based on radiation environment. An Orion deep-space mission might have a real-time "Storm Warning" indicator. In a unified API, this field distills complex data into an actio nable status (possibly fed by external space weather alerts too).
* **shielding_mode** (string) – Habitat shielding configuration. For instance, "Standard" vs "Storm Shelter". Relevance: Some spacecraft can optimize their configuration during radiation events – e.g., ISS crew can shelter in the heavily shielded Zvezda module during a solar flare. Orion plans to use its water and supplies to build a makeshift shelter. This field would indicate if the spacecraft/habitat is in a protective posture. It’s not a measure of environment, but a status that heavily influences crew dose.


  **Spacecraft notes:** ISS doesn’t physically reconfigure, but crew relocating serves as "shielding mode". Future modules might have deployable radiation barriers (this field could then toggle accordingly). Including it helps ground control and cross-vehicle systems know when the life support is in a special operating mode due to radiation.
* **radiation_shield_efficiency** (float, %) – Effective shielding percentage – an estimate of how much radiation is being blocked compared to an unshielded environment. Relevance: This gives context to dose readings. For example, in low-Earth orbit, Earth’s magnetic field already cuts a lot of radiation; inside a spacecraft, structure shields further. This percentage could be derived from instruments (inside vs outside readings). It’s a more advanced field and somewhat experimental.


  **Spacecraft notes:** Likely used in design/testing phases – e.g., “our storm shelter gives 50% dose reduction”. In real-time ops, it might always report a nominal value (like 95% shielded) until in a storm where it might drop (because spectrum of radiation changed). This field is optional in telemetry but included for completeness since the prompt asks for “shielding status if reported.”

### Thresholds and Safety Limits (SMACs & Guidelines)

Each of the above fields has associated allowable ranges or thresholds that trigger warnings. NASA’s Spacecraft Maximum Allowable Concentrations (SMACs) define exposure limits for contaminants (like CO, NH₃, formaldehyde, etc.) over various durations. Likewise, NASA-STD-3001 and vehicle specs define safe bands for pressure, O₂/CO₂, temperature, humidity, and radiation. In a unified telemetry schema, we don’t necessarily hardcode these limits as fields, but we highlight them in documentation or could provide them as a sub-object for reference. For example:

```
"thresholds": {
"co2_ppm": { "warning": 5000, "emergency": 15000 },
"co_ppm": { "warning": 10, "emergency": 50 },
"cabin_pressure_kPa": { "low_warning": 95, "low_emergency": 90,
"high_warning": 105, "high_emergency": 110 },
...
}

```

(The above is an illustrative snippet — actual values would come from NASA specifications.) Including such a structure in the API can inform software when to raise alerts. For instance, if co2_ppm exceeds the 1-hour limit (~0.7% or 7000 ppm per some standards), an alarm can be sent. In practice, ISS’s monitoring system already ties alarms to these limits. A unified API might standardize those thresholds across spacecraft for consistency in crew health management. Examples of key limits:

* **CO₂**: As noted, keep <3 mmHg (~4000 ppm) on 1-hr average ; long-term exposure should be much lower (NASA was revising standards for acceptable daily average). Crew report headaches if CO₂ goes above ~8 mmHg (~1% or 10,000 ppm), so that would be an emergency level.
* **O₂**: Nominal 21 kPa (21% at 101 kPa); emergency if drops below ~16 kPa (risk of hypoxia) or rises above ~23 kPa (increased fire risk). Spacecraft fire safety rules often set an O₂ upper limit ~30% O₂ at 10.2 psi for EVA pre-breathe scenarios – beyond that is not permitted.
* **Pressure**: Generally, a drop below 70–80 kPa is a serious decompression warning. A rise above 110 kPa could indicate over-pressurization. Hence our example threshold JSON above.
* **Temperature/Humidity**: From NASA-STD-3001: keep 18–27 °C, 25–75% RH for crew health. Outside that, crew efficiency or safety is impacted, so alarms at those boundaries (with perhaps soft warnings outside comfort range 20–25 °C, 30–60% RH).
* **Contaminants**: SMAC tables provide a wealth of limit data . For instance, formaldehyde 7-day SMAC ~0.4 ppm【6†fig】; ammonia 24-hr SMAC ~30 ppm, 7-day ~15 ppm【6†fig】; carbon monoxide 1-hr SMAC ~40 ppm. These values guide the warning and emergency levels for those fields. Typically, the “emergency” would correspond to short-term SMAC (1-hr), and “warning” to long-term SMAC (7-day) being exceeded.
* **Radiation**: Agencies have per-event and annual limits. For example, a solar particle event might have a mission halt threshold if dose exceeds certain mSv in a short time. Long-term, NASA limits astronauts to a career dose (which is not one-size-fits-all due to individual limits, but on the order of a few hundred mSv). The alert levels can be tied to current rate (e.g. >1000 µSv/h definitely "Storm") or cumulative (e.g. if someone approaches 250 mSv on a year-long mission, that’s a flag).

It’s important to note that different spacecraft can have slight differences in their nominal environmental settings or sensor availability, but the above JSON fields are chosen to be general enough for all: - The ISS has the most extensive monitoring (all listed fields are applicable; it even has specialized monitors for combustion products and trace gases). - The Space Shuttle (historical) had most of these fields except it did not have real-time formaldehyde sensors (samples were analyzed post-flight). It did measure CO₂, O₂, pressure, etc., and kept contaminants low via LiOH and activated charcoal canisters.

Orion/Artemis will have modern air monitors (O₂, CO₂, H₂O, possibly trace gas sensors) and radiation sensors, given its deep space profile. Expect all fields to be relevant; some (like shielding_mode ) particularly so for solar storm response. - Crew Dragon (SpaceX) supports short missions (~1–3 days transit to ISS). It has a simple open-loop ECLSS: pressurized oxygen tanks, LiOH cartridges for CO₂. It does monitor cabin atmosphere (O₂, CO₂, pressure, T, RH) to maintain safety, but likely not a full suite of trace gas sensors due to short duration. In a unified schema, fields like formaldehyde or NH₃ might simply remain near zero/default (no data) for Dragon unless something abnormal occurs.

Radiation is less a concern for LEO transport, but dosimeters are onboard. - Soyuz (Russian spacecraft) uses chemical oxygen generation and LiOH for CO₂, with cabin pressure ~1 atm of O₂/N₂. It has rudimentary sensors: historically a “gas analyzer” periodically measured O₂ and CO₂ levels on Soyuz. Newer Soyuz models likely have digital sensors for P, T as well. Fields like trace contaminants and particles might not be actively measured on Soyuz, but in a unified data format those fields could be left null or filled by ground analysis if needed. Radiation monitoring on Soyuz is via passive badges, so radiation_dose_rate might not update until after flight in that case.

In summary, Table 1 below outlines the core JSON fields, their types/units, and descriptions:

| | | | |
| :--- | :--- | :--- | :--- |
| `o2_percent` | float | % | Oxygen concentration in cabin air (≈21%). Crucial for breathing; must stay in safe range to avoid hypoxia/fire. |
| `co2_ppm` | float | ppm | Carbon dioxide level. Kept low (~thousands ppm) to prevent symptoms; alerts if above NASA limit (~4000 ppm/hr). |
| `n2_percent` | float | % | Nitrogen concentration (~78%). Maintains pressure; changes indicate pressure adjustments. |
| `ch4_ppm` | float | ppm | Methane level. Typically near 0. Monitored as a trace gas and flammability indicator. |
| `h2_ppm` | float | ppm | Hydrogen level. Should be ~0; any reading flags a leak or issue (flammable). |
| `h2o_partial_pressure` | float | kPa | Water vapor partial pressure. Indicates absolute humidity; prevents condensation. |
| `cabin_pressure_kPa` | float | kPa | Total cabin pressure (~101 kPa). Vital for habitability; deviations risk decompression. |
| `cabin_temperature_C` | float | °C | Cabin air temperature (18–27 °C safe range). Maintained for crew comfort and health. |
| `cabin_humidity_percent` | float | % | Relative humidity (30–60% preferred). Prevents dryness and condensation issues. |
| `cabin_dew_point_C` | float | °C | Dew point of cabin air. Indicates condensation risk; derived from temp/humidity. |
| `co_ppm` | float | ppm | Carbon monoxide level. Normally 0. Toxic; triggers alarm if detected. |
| `nh3_ppm` | float | ppm | Ammonia level. Normally 0. Toxic/irritant; indicates leaks or contamination. |
| `formaldehyde_ppm` | float | ppm | Formaldehyde level. Target ~0; common off-gassed irritant. Tracked against SMAC limits. |
| `<other VOC>_ppm` | float | ppm | For other specific volatile toxins (e.g. benzene, freon); ensures air remains non-toxic. |
| `tccs_status` | string | – | Status of Trace Contaminant Control System (“Nominal”, “Off”, etc.). |
| `tccs_filter_load_percent` | float | % | Trace contaminant filter utilization. High values warn of air scrubber inefficiency. |
| `particulate_matter_ug_per_m3` | float | µg/m³ | Particulate concentration (mass of dust/aerosol). Low in clean cabins. |
| `particle_count_per_cc` | float | count/cc | Particle count per cm³. Complements mass concentration to gauge air cleanliness. |
| `microbial_air_count_cfu_per_m3` | float | CFU/m³ | Airborne microbial count. Indicates bio-cleanliness of air. |
| `surface_microbe_count_cfu_per_100cm2` | float | CFU/100cm² | Surface microbial load from swabs. High values indicate sanitation issues. |
| `air_filter_status` | string | – | Cabin air filter status (“Nominal”, “Clogged”, etc.). Indicates filtration effectiveness. |
| `radiation_dose_rate_uSv_per_hr` | float | µSv/h | Current radiation dose rate. Used to assess acute radiation exposure. |
| `radiation_cumulative_mSv` | float | mSv | Total mission dose accumulated. Monitored against exposure limits. |
| `radiation_alert_level` | string | – | Radiation status indicator (“Nominal”, “Elevated”, “Storm”). Triggers crew procedures. |
| `shielding_mode` | string | – | Current shielding configuration (e.g. storm shelter mode). |
| `radiation_shield_efficiency` | float | % | Percentage of radiation being blocked by shielding. Optional metric. |

Sources: This unified schema is based on NASA ECLSS technical documentation and spacecraft specifications. The ISS ECLSS design, for example, explicitly monitors O₂, N₂, CO₂, CH₄, H₂, H₂O partial pressures, total pressure, temperature, and humidity in real time. It filters particulates and microorganisms and removes trace organic gases to keep levels within safe limits. NASA’s Spacecraft Maximum Allowable Concentration (SMAC) guidelines inform the threshold values for contaminants. The Orion capsule’s life support includes advanced sensors for major constituents and water vapor, and planned deep-space missions emphasize radiation monitoring and storm shelter protocols. By standardizing the telemetry fields as above, data from a Crew Dragon on a short ISS ferry flight or from a months-long ISS expedition, or even a future Lunar Gateway module, can be interpreted uniformly to ensure crew environmental health is always safeguarded.

### References

* [NASA Facts - International Space Station Environmental Control and Life Support System](https://www.nasa.gov/wp-content/uploads/2016/01/174687main_eclss_facts.pdf?emrc=0ab55e)
* [How does the Soyuz launch system work? – How It Works](https://www.howitworksdaily.com/how-does-the-soyuz-launch-system-work/)
* [OCHMO-TB-002 Environmental Control & Life Support System: Human-Centered Approach](https://www.nasa.gov/wp-content/uploads/2023/07/eclss-technical-brief-ochmo.pdf)
* [Orion LAMS Laser Absorption Spectrometer for Human Spaceflight](https://ttu-ir.tdl.org/bitstreams/cba0e6c4-87a8-4e31-9c13-d879230db36a/download)
* [International Space Station Major Constituent Analyzer On-orbit Performance](https://ntrs.nasa.gov/api/citations/20150013812/downloads/20150013812.pdf)
* [International Space Station (ISS) Major Constituent Analyzer (MCA) On-Orbit Performance (2006)](https://www.sae.org/publications/technical-papers/content/2006-01-2092/)
* [International Space Station (ISS) Major Constituent Analyzer (MCA) On-Orbit Performance (2004)](https://www.sae.org/publications/technical-papers/content/2004-01-2546/)
* [Overview of the International Space Station System Level Trace Contaminant Injection Test](https://ntrs.nasa.gov/api/citations/19980058812/downloads/19980058812.pdf)
* [Trace Contaminant Control Test Bed for Evaluation of TCC Prototypes with Vacuum Regenerable and Non-Regenerable Sorbents](https://ntrs.nasa.gov/api/citations/20240005822/downloads/2024_ICES_Manuscript_Draft_TCC_364_4-26-24.pdf)
* [CDC - Spacecraft Maximum Allowable Concentrations for Airborn Contaminants](https://www.cdc.gov/niosh/docket/archive/pdfs/NIOSH-125/125-NASAJSC205841999.pdf)
* [NASA Fact Sheet - Environmental Control and Life Support System (ECLSS)](https://www.nasa.gov/wp-content/uploads/2020/10/g-281237_eclss_0.pdf?emrc=67ffdc)
* [Air Revitalization: Trace Contaminant Control Systems (TCCS)](https://nss.org/settlement/nasa/teacher/course/tccs.html)
* [Airborne Particulate Monitor: A Real-time Reference Quality Aerosol Instrument Payload for ISS Air Pollution Quantification](https://www.researchgate.net/publication/343836842_Airborne_Particulate_Monitor_A_Real-time_Reference_Quality_Aerosol_Instrument_Payload_for_ISS_Air_Pollution_Quantification)
* [Airborne Particulate Monitor: A Real-time Reference Quality Aerosol Instrument Payload for ISS Air Pollution Quantification](https://ttu-ir.tdl.org/items/7473c238-cf27-4673-accb-f92d32df6c59)
* [NASA - Monitoring Microorganisms](https://www.nasa.gov/missions/station/iss-research/monitoring-microorganisms/)
* [A Microbial Monitoring System Demonstrated on the International Space Station Provides a Successful Platform for Detection of Targeted Microorganisms](https://pmc.ncbi.nlm.nih.gov/articles/PMC8229003/)
* [Real-Time Culture-Independent Microbial Profiling Onboard the International Space Station Using Nanopore Sequencing](https://pubmed.ncbi.nlm.nih.gov/33467183/)
* [Radiation on Earth or in Space: What Does It Change?](https://pmc.ncbi.nlm.nih.gov/articles/PMC8038356/)
* [Effects of ionizing radiation in spaceflight](https://en.wikipedia.org/wiki/Effects_of_ionizing_radiation_in_spaceflight)
* [NASA’s ISS Procedures: Responding to Space Weather](https://newspaceeconomy.ca/2023/03/28/nasas-iss-procedures-responding-to-space-weather/)
* [Solar Storm causes I.S.S crew to take extra precautions to avoid radiation](https://www.firstcoastnews.com/article/weather/solar-storm-causes-iss-crew-to-take-extra-precautions-to-avoid-radiation-aurora/77-b9e4b73b-7cd1-4d80-95c3-01bdbfbec587)
* [Spacecraft Maximum Allowable Concentrations for Airborne Contaminants](https://www.nasa.gov/wp-content/uploads/2024/06/jsc-20584-smacs-rev-c-final.pdf?emrc=17fbbc)
* [Russian Life Support Systems: Vostok, Voskhod, and Soyuz](https://link.springer.com/10.1007/978-3-319-09575-2_39-2)

