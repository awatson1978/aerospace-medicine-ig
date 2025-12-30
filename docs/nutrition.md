# Nutrition - v0.5.3

* [**Table of Contents**](toc.md)
* **Nutrition**

## Nutrition

## Nutrition and Calorie-Deficient Diets

### Overview

When the crew of **Biosphere 2** emerged after two years of sealed-habitat living, researchers were astonished: despite a chronic caloric deficit, the team exhibited **improved cardiometabolic markers, reduced inflammatory profiles, and enhanced insulin sensitivity**findings later championed by Dr. Roy Walford and colleagues at the University of Chicago. Their experiment foreshadowed a truth that space agencies now confront directly: **astronauts often operate at an energetic deficit**, sometimes unintentionally, sometimes as a result of mission constraints, and sometimes as a managed physiologic strategy.

On the **International Space Station**, astronauts routinely burn **2,5003,500 kcal/day** yet may consume significantly less due to appetite suppression, shelf-life constraints, or inventory shortages. Every unaccounted calorie becomes an operational variable: mass budgeting, hydration balance, micro- and macronutrient sufficiency, muscle and bone preservation, cognitive performance, and long-term metabolic health. Tracking intake is therefore as mission-critical as monitoring radiation dose or EVA suit pressure.

This module extends the HL7 Aerospace Medicine Implementation Guideincluding the architectural principles demonstrated in [Neutral Buoyancy](neutral-buoyancy.md) and [Radiation Tracking](radiation-tracking.md)into a comprehensive **Nutrition and Calorie Deficit Management** framework leveraging **FHIR NutritionIntake, NutritionProduct, Observation, InventoryItem, Device**, and mission-context extensions.

### FHIR Implementation Architecture

#### Core Profiles

| | | |
| :--- | :--- | :--- |
| **SpaceNutritionIntake** | Document actual daily intake and hydration events | Macronutrient breakdown, micronutrient sufficiency, hydration type/volume, route |
| **SpaceNutritionProduct** | Describe space-rated food, supplements, electrolytes | Shelf-life, rehydration requirements, preparation method, hazard analysis |
| **SpaceNutritionInventoryItem** | Track stores aboard spacecraft or planetary habitats | Lot number, mass, burn rate, expired/shortage flags |
| **CalorieDeficitAssessment** | Quantify acute and cumulative calorie deficits | Resting metabolic rate, total expenditure, intake vs. requirement |
| **MetabolicRiskSummary** | Evaluate risk from prolonged deficits | Muscle wasting, bone turnover, hormonal signs of underfeeding |

These profiles parallel the architectural pattern used in radiation trackingseparating individual measurement, device/product specification, and longitudinal summaries.

#### Data Architecture

Nutrition tracking incorporates multiple concurrent dimensions:

* **Temporal Context**: Per-meal, per-day, weekly, expedition-level summaries
* **Macronutrient Spectrum**: Carbohydrates, proteins, fats, fiber
* **Micronutrient Sufficiency**: Iron, B12, vitamin D, electrolytes
* **Hydration Balance**: Water, electrolyte mixes, IV hydration events
* **Inventory State**: Store levels, consumption rates, spoilage, supply chain limits
* **Mission Context**: EVA days, exercise workloads, planetary gravity differences

All measurements link to **MissionContext** extensions used in other IG modules.

#### Standardized Terminologies

New code systems and value sets:

* **[SpaceNutritionTypeCS](CodeSystem-space-nutrition-type-cs.md)**: freeze-dried meal, thermo-stabilized entrée, fresh produce payload, supplemental electrolyte mix
* **[SpaceNutritionTypeVS](ValueSet-space-nutrition-type-vs.md)**: ValueSet for space food types
* **[MacronutrientMetricsCS](CodeSystem-macronutrient-metrics-cs.md)**: kcal, carb-grams, fat-grams, protein-grams
* **[MacronutrientMetricsVS](ValueSet-macronutrient-metrics-vs.md)**: ValueSet for macronutrient measurements
* **[HydrationTypeCS](CodeSystem-hydration-type-cs.md)**: potable water, ORS, electrolyte packet, IV saline
* **[HydrationTypeVS](ValueSet-hydration-type-vs.md)**: ValueSet for hydration types
* **[NutritionInventoryStatusCS](CodeSystem-nutrition-inventory-status-cs.md)**: adequate, low, critical, expired
* **[NutritionInventoryStatusVS](ValueSet-nutrition-inventory-status-vs.md)**: ValueSet for inventory status
* **[CalorieDeficitRiskVS](ValueSet-calorie-deficit-risk-vs.md)**: mild (<300 kcal/day), moderate (300–600), severe (>600), extreme (>1,000 kcal/day)

Integration with existing terminologies:

* **LOINC**: Nutritional observations, dietary intake measurements
* **SNOMED CT**: Nutritional disorders, dietary patterns
* **NASA Standards**: Nutritional requirements for spaceflight

### Physiologic and Environmental Considerations

Caloric deficit in space is not merely a dietary inconvenienceit is a **whole-system physiologic perturbation**. Picture an astronaut floating through the ISS after a six-hour EVA: their muscles are fatigued from fighting against the stiff spacesuit joints, their appetite is suppressed by the fluid shift that makes their face puffy and sinuses congested, and the pre-packaged meal floating nearby holds little appeal despite their body's desperate need for fuel. This is the daily reality of space nutritiona constant battle between physiologic needs and environmental constraints.

#### Microgravity Effects

* Loss of mechanical loading accelerates **muscle atrophy** and **bone resorption**, amplifying nutritional demands for protein and calcium
* Appetite suppression is common, partly due to **fluid shifts**, a phenomenon also seen in underwater training analogs

#### Energy Expenditure

* Resistance exercise (ARED), treadmill running, and cycling increase metabolic load by **400800 kcal/day**, especially during EVA prep
* Planetary surface operations (Moon/Mars) significantly increase caloric expenditure due to suit mass and reduced-but-nonzero gravity

#### Cognitive and Immune Function

Chronic deficits degrade reaction time, stress tolerance, and immune resistancecritical for long-duration missions.

#### Hydration

Dehydration exacerbates orthostatic intolerance, kidney stone risk, and thermoregulation challenges during EVA.

#### Biosphere 2 as an Analog

Long-term calorie deficit produced **improved metabolic markers** but also measurable **loss of lean mass**requiring careful management in space analogs and missions.

### Monitoring Strategy

Analogous to radiation dosimetry's layered detection system, nutrition monitoring integrates multiple data streams to provide comprehensive tracking of astronaut nutritional status. Think of this as creating a complete metabolic picturecombining direct measurements of what astronauts consume with physiologic markers that reveal how their bodies are responding to the space environment and dietary intake.

#### Daily Macronutrient Logging

Recorded via SpaceNutritionIntake. Includes caloric estimation error margins.

#### Device-Assisted Measurement

* Smart utensils/sensors (mass tracking)
* Rehydration water meters
* Meal scanners for barcodes/QR tags (common on ISS inventory)

#### Physiologic Observations

* Weight, circumferences
* Bone turnover markers (CTX, P1NP)
* Resting Metabolic Rate (portable indirect calorimetry)
* Hydration biomarkers: urine osmolality, Naz/Kz balance

#### Inventory Telemetry

Habitat systems continuously track **remaining consumables**, mirroring ECLSS environmental data integration in radiation tracking.

#### Risk Threshold Alerts

* Greater than 600 kcal/day deficit for 3 consecutive days
* Less than 1.2 g/kg protein
* Fluid deficit greater than 1.5 L/day

Alerts feed mission control decision algorithms.

### Data Model Architecture

#### Core FHIR Resources

* **NutritionIntake** � SpaceNutritionIntake
* **NutritionProduct** � SpaceNutritionProduct
* **Observation** � CalorieDeficitAssessment, HydrationStatusObservation
* **InventoryItem** � SpaceNutritionInventoryItem
* **DiagnosticReport** � MetabolicRiskSummary

#### Extensions

* **missionContext** (consistent with radiation and NBL modules)
* **energyExpenditure** (kcal/day)
* **hydrationDeficit** (L/day)
* **inventoryRiskFlag** (critical, caution, nominal)

### Use Cases

Modeled after the 6-category structure of radiation tracking.

#### 1. Pre-Flight Nutritional Baseline Assessment

RMR measurement, body composition, micronutrient labs, dietary pattern history.

#### 2. Mission Menu Planning and Shelf-Life Optimization

Match caloric requirements to storage mass limits; adjust based on mission length and resupply cadence.

#### 3. Real-Time Intake Monitoring and Calorie Deficit Alerts

Automated detection of chronic underfeeding; feedback to training regimens and EVA planning.

#### 4. Post-Mission Metabolic Assessment

Bone markers, endocrine recovery, lean mass changes, comparison to analog missions (NEEMO, NBL).

#### 5. Career Nutrition Profile Management

Trends across multiple missions; risk accumulation for osteoporosis, metabolic disease.

#### 6. Research and Epidemiology

Study effects of long-term calorie deficit, nutrient timing, circadian misalignment, and analog environments such as Biosphere 2.

### Enhanced Data Collection

Advanced parameters enable deeper physiologic monitoring and risk assessment:

#### Biochemical Tracking

* **Amino acid profile tracking** for muscle preservation
* **Omega-3 index** for inflammation control
* **Glycemic variability** (CGM patch)

#### Environmental Integration

* **Water reclamation telemetry** integrated with habitat ECLSS data
* **Shelf-life decay curves** for food exposed to radiation or partial gravity

#### Organ-Specific Nutritional Considerations

* **Bone metabolism**: Ca�z, PTH, vitamin D, collagen breakdown markers
* **Ocular health**: Vitamin A tracking for risk of SANS analogs
* **Cognitive load**: Omega-3, B12, folate sufficiency

### Integration with Existing Systems

#### Environmental Control and Life Support Systems (ECLSS)

* Hydration data integrates with water recycling systems (parallel to radiation area monitors)
* Food warmers, freezers, and rehydration stations report inventory and thermal stability

#### Mission Control Systems

* Deficit warnings influence EVA scheduling
* Automated menus adjust to resupply shortages
* Predictive algorithms forecast protein/water depletion

#### Longitudinal Study of Astronaut Health

* Nutritional intake inputs population-level studies, similar to LSAH radiation datasets

#### Space Logistics and Supply Chain Systems

* FHIR InventoryItem records synchronize with manifest systems for lunar/Mars surface caches

### Implementation Examples

#### Example 1: SpaceNutritionIntake

```
{
  "resourceType": "NutritionIntake",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/space-nutrition-intake"
    ]
  },
  "status": "completed",
  "subject": { "reference": "Patient/AstronautExample" },
  "occurenceDateTime": "2025-06-01T12:30:00Z",
  "consumedItem": [
    {
      "nutritionProduct": {
        "reference": "NutritionProduct/FD-Lasagna-01"
      },
      "amount": { "value": 1, "unit": "package" },
      "nutrient": [
        {
          "nutrientCode": { "text": "Energy" },
          "amount": { "value": 420, "unit": "kcal" }
        },
        {
          "nutrientCode": { "text": "Protein" },
          "amount": { "value": 28, "unit": "g" }
        },
        {
          "nutrientCode": { "text": "Carbohydrate" },
          "amount": { "value": 45, "unit": "g" }
        }
      ]
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueCode": "iss-expedition-72"
    }
  ]
}

```

#### Example 2: CalorieDeficitAssessment

```
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "http://hl7.org/fhir/uv/aerospace/StructureDefinition/calorie-deficit-assessment"
    ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/uv/aerospace/CodeSystem/macronutrient-metrics-cs",
        "code": "calorie-deficit",
        "display": "Daily Calorie Balance"
      }
    ]
  },
  "subject": { "reference": "Patient/AstronautExample" },
  "effectiveDateTime": "2025-06-01T23:59:00Z",
  "valueQuantity": {
    "value": -650,
    "unit": "kcal"
  },
  "component": [
    {
      "code": { "text": "Energy Expenditure" },
      "valueQuantity": { "value": 3100, "unit": "kcal" }
    },
    {
      "code": { "text": "Energy Intake" },
      "valueQuantity": { "value": 2450, "unit": "kcal" }
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/aerospace/StructureDefinition/mission-context",
      "valueCode": "eva-day"
    }
  ]
}

```

### Regulatory and Standards Alignment

Although nutritional regulation in space is not governed by the same frameworks as radiation exposure, several terrestrial standards apply:

* **NASA-STD-3001 Vol. 1 & 2**: Nutritional and metabolic requirements integrated with crew health and human factors
* **DoD & USDA Military Nutrition Standards**: Macronutrient and hydration guidelines for operational environments
* **Codex Alimentarius**: Food safety and shelf-life requirements for packaged foods
* **FDA Nutritional Labeling Standards**: Applied to mission foods and supplements
* **Human Research Program Nutritional Biochemistry Requirements**: NASA metabolic and biochemical surveillance protocols

### Future Directions

#### Adaptive Menu Systems

AI-driven adjustments to inventory, crew preference, and metabolic needs.

#### Next-Generation Food Production

In-situ agriculture on lunar/Martian surfaces; hydroponics and algal bioreactors.

#### Personalized Nutrition

Genotype-informed macronutrient ratios, microbiome analysis, and precision supplementation.

#### Smart Packaging

Embedded RFID, ripeness sensors, radiation-induced degradation tracking.

#### Behavioral Nudging

Interfaces that promote adequate intake during appetite suppression phases.

### References

#### Biosphere 2 Calorie Restriction Studies

* [Calorie restriction in Biosphere 2: physiology, hematology, hormones](https://academic.oup.com/biomedgerontology/article/57/6/B211/573699)
* [Changes in plasma lipids and lipoproteins during Biosphere 2 diet](https://jamanetwork.com/journals/jamainternalmedicine/fullarticle/484893)
* [Nutrient-dense low-calorie diets in Biosphere 2](https://www.pnas.org/doi/10.1073/pnas.89.23.11533)
* [The legacy of Roy Walford and Biosphere 2](https://www.thelancet.com/pdfs/journals/lancet/PIIS0140-6736%2804%2917699-7.pdf)

#### Space Food Systems and Standards

* [Space Food Systems - NASA](https://www.nasa.gov/directorates/esdmd/hhp/space-food-systems/)
* [NASA's Food for Space Flight](https://www.nasa.gov/sites/default/files/atoms/files/food_for_space_flight_tagged.pdf)
* [Space Station 20th: Food on ISS](https://www.nasa.gov/history/space-station-20th-food-on-iss/)
* [Dining in Space: How astronauts eat aboard ISS](https://www.nasa.gov/audience/forstudents/5-8/features/nasa-knows/what-do-astronauts-eat-58.html)
* [Historical NASA menus from Apollo & Shuttle](https://airandspace.si.edu/stories/editorial/astronaut-food-then-and-now)
* [Daily rations and caloric needs in space](https://www.nasa.gov/pdf/146558main_Space_Food.pdf)
* [Developing the NASA Food System for Long-Duration Missions (Journal of Food Science)](https://ift.onlinelibrary.wiley.com/doi/10.1111/j.1750-3841.2010.01982.x)

#### Long-Duration Mission Nutrition

* [Long-Term Space Nutrition: A Scoping Review (PMC)](https://pmc.ncbi.nlm.nih.gov/articles/PMC8747021/)
* [Initial assessment of nutritional quality over 3 years storage (npj Microgravity)](https://www.nature.com/articles/s41526-017-0022-z)
* [The Menu for Mars: Designing a Deep Space Food System](https://www.nasa.gov/humans-in-space/the-menu-for-mars-designing-a-deep-space-food-system/)
* [Space Food for Thought: Challenges and Considerations for Food and Nutrition on Exploration Missions (The Journal of Nutrition)](https://jn.nutrition.org/article/S0022-3166(22)02310-0/fulltext)

#### Food Production in Space

* [NASA's Veggie Plant Growth System on ISS](https://www.nasa.gov/content/growing-plants-in-space)
* [NASA astronauts eat first lettuce grown in space](https://www.nasa.gov/mission_pages/station/research/news/meals_ready_to_eat)
* [NASA/Fairchild "Growing Beyond Earth" program](https://fairchildgarden.org/gbe)
* [Innovation Studio for space farming R&D](https://www.nasa.gov/centers-and-facilities/kennedy/nasa-and-partners-open-first-public-space-agriculture-makerspace/)
* [NASA Harvests Lettuce for Space Station Study](https://www.nasa.gov/image-article/nasa-harvests-lettuce-for-space-station-study/)
* [Deep Space Food Challenge](https://www.nasa.gov/prizes-challenges-and-crowdsourcing/centennial-challenges/deep-space-food-challenge/)
* [Mission to Mars: food production and processing (PubMed)](https://pubmed.ncbi.nlm.nih.gov/22136130/)

#### Food Waste and Trash Management

* [Managing trash and food waste on the ISS](https://www.nasa.gov/mission_pages/station/research/news/trash_in_space)
* [The dirty job of space garbage](https://www.nasa.gov/feature/space-station-trash)

