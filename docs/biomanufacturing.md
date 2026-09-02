# Biomanufacturing - Aerospace Medicine Implementation Guide v0.7.0

* [**Table of Contents**](toc.md)
* **Biomanufacturing**

## Biomanufacturing

### Overview

In-situ biomanufacturing and bioregenerative life support systems (BLiSS) represent a critical technology for sustainable long-duration missions. By leveraging engineered microbes, algae, and cell cultures, crews can produce oxygen, food, pharmaceuticals, bioplastics, and water-recycling enzymes directly from local resources or recycled waste streams.

Bell et al. (**Space Policy**, 2026) and related extraterrestrial infrastructure reviews highlight the transition from proof-of-concept (the ISS Veggie experiments and ESA's MELiSSA program) to operational systems for Artemis, Mars transit, and surface habitats. FHIR profiles in this section standardize the capture of bioreactor configurations, manufacturing procedures, resource outputs, and biological feedstocks so that biomanufacturing data can be consistently recorded, audited, and integrated into crew health and Environmental Control and Life Support System (ECLSS) records.

### Key Biomanufacturing Processes

**Primary Applications**

* Oxygen production and CO₂ fixation (algae, cyanobacteria)
* Protein-rich food and nutritional supplements (microbial fermentation, single-cell protein)
* Biopolymer and material production (bacterial plastics)
* Pharmaceutical synthesis (on-demand antibiotics, monoclonal antibodies)
* Waste recycling (urine, feces, CO₂ → nutrients)

**Common Bioreactor Types**

* Photobioreactors (algae/cyanobacteria)
* Heterotrophic fermenters (bacteria/yeast)
* Hybrid systems (photo + heterotrophic)

### FHIR Profiles and Extensions

#### Recommended Resources

* `Device` – bioreactor hardware
* `Procedure` – biomanufacturing runs and process steps
* `Observation` – resource output metrics and feedstock characterization
* `Substance` – biological feedstocks and finished bioproducts

#### Core Profiles

* **[Bioreactor Device](StructureDefinition-bioreactor-device.md)** – Extends `Device` with: 
* Working volume, temperature control range, agitation parameters
* Gas exchange (O₂/CO₂), lighting spectrum (for photobioreactors)
* Sensor suite (pH, dissolved oxygen, biomass density)
* Sterility status and planetary-protection compliance level
 
* **[Biomanufacturing Procedure](StructureDefinition-biomanufacturing-procedure.md)** – Documents in-situ resource utilization (ISRU) bioprocessing, algae cultivation, fermentation, or downstream processing with: 
* Process parameters (duration, temperature, feedstock input)
* Strain or cell line used
* Yield and efficiency metrics
* Quality control checkpoints
 
* **[BLiSS Resource Output](StructureDefinition-bliss-resource-output.md)** – Standardized observation of system-level outputs: 
* O₂ production rate
* Food / biomass output
* Water recycling efficiency
* CO₂ fixation rate
* By-product generation (e.g., bioplastics, pharmaceuticals)
 
* **[Biological Feedstock](StructureDefinition-biological-feedstock.md)** – Characterizes input or output biological substances: 
* Feedstock type (CO₂, urine-derived nutrients, recycled biomass)
* Output bioproduct (single-cell protein, biopolymer, therapeutic compound)
* Purity, viability, and planetary-protection status
 

#### Proposed Profiles (not yet defined)

* `BiomanufacturingBatch` – Links procedures, bioreactor, feedstock, and output into a traceable production run
* `BLiSSPerformanceSummary` – DiagnosticReport aggregating system-level performance over a mission phase

### Examples

The three example instances describe one algae photobioreactor, a cultivation run performed in it, and the oxygen output measured from that run.

* [Algae Photobioreactor](Device-Bioreactor-Algae-001.md)
* [Algae Cultivation Procedure](Procedure-Biomanufacturing-AlgaeCultivation-001.md)
* [BLiSS O2 Production Output](Observation-BLiSS-O2-Production-001.md)

### Standardized Terminologies

* [Biomanufacturing Process Code System](CodeSystem-biomanufacturing-process-cs.md) and [Value Set](ValueSet-biomanufacturing-process-vs.md) – algae-photobioreactor, fermentation-bioreactor, isru-processor, biocement-production, pharmaceutical-synthesis, biomass-conversion
* [BLiSS Output Code System](CodeSystem-bliss-output-cs.md) and [Value Set](ValueSet-bliss-output-vs.md) – resource categories produced by a bioregenerative life support system (o2-production, food-production, water-recycling, biofuel-production, co2-fixation, biomaterial-output)
* [Biomanufacturing Metric Code System](CodeSystem-biomanufacturing-metric-cs.md) – output-quantity, output-rate, energy-input

#### Proposed Terminology (not yet defined)

* `BioreactorTypeCS` – bioreactor hardware classes (photobioreactor, heterotrophic-fermenter, hybrid); the process codes above currently stand in for reactor type

### References

* Bell A, Yeh D, Garretson P, Roberson L. Biomanufacturing for a Lunar base—A sustainable vision for the future. **Space Policy**, 2026. [https://www.sciencedirect.com/science/article/pii/S0265964626000196](https://www.sciencedirect.com/science/article/pii/S0265964626000196)
* Porterfield DM, et al. Critical investments in bioregenerative life support systems for bioastronautics and sustainable lunar exploration. **npj Microgravity** 11(57), 2025. [https://doi.org/10.1038/s41526-025-00518-4](https://doi.org/10.1038/s41526-025-00518-4)
* Chander AM, et al. Survival of NASA-cleanroom microbial isolates under simulated space and Martian conditions. **Applied and Environmental Microbiology**, 2026. [https://doi.org/10.1128/aem.02065-25](https://doi.org/10.1128/aem.02065-25)
* Orbital biomanufacturing: the key to space resiliency, operational persistence, and ethical sustainability. **npj Microgravity**, 2026. [https://www.nature.com/articles/s41526-026-00571-7](https://www.nature.com/articles/s41526-026-00571-7)

