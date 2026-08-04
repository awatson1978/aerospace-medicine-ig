# Biomanufacturing - v0.6.2

* [**Table of Contents**](toc.md)
* **Biomanufacturing**

## Biomanufacturing

# Biomanufacturing and Bioregenerative Life Support

## Overview

In-situ biomanufacturing and bioregenerative life support systems (BLiSS) represent a critical technology for sustainable long-duration missions. By leveraging engineered microbes, algae, and cell cultures, crews can produce oxygen, food, pharmaceuticals, bioplastics, and water-recycling enzymes directly from local resources or recycled waste streams.

Bell et al. (**Space Policy**, May 2026) and related extraterrestrial infrastructure reviews highlight the transition from proof-of-concept (ISS VEG and MELiSSA programs) to operational systems for Artemis, Mars transit, and surface habitats. FHIR profiles in this section standardize the capture of bioreactor configurations, manufacturing procedures, resource outputs, and biological feedstocks so that biomanufacturing data can be consistently recorded, audited, and integrated into crew health and ECLSS records.

## Key Biomanufacturing Processes

**Primary Applications**

* Oxygen and CO₂ fixation (algae, cyanobacteria)
* Protein-rich food and nutritional supplements (microbial fermentation, single-cell protein)
* Biopolymer and material production (bacterial plastics)
* Pharmaceutical synthesis (on-demand antibiotics, monoclonal antibodies)
* Waste recycling (urine, feces, CO₂ → nutrients)

**Common Bioreactor Types**

* Photobioreactors (algae/cyanobacteria)
* Heterotrophic fermenters (bacteria/yeast)
* Hybrid systems (photo + heterotrophic)

## FHIR Implementation Guidance

### Recommended Resources

* `Device` – bioreactor hardware
* `Procedure` – biomanufacturing runs and process steps
* `Observation` – resource output metrics and feedstock characterization
* `Substance` – biological feedstocks and finished bioproducts

### New Profiles (suggested)

**Core Profiles**

* **[`BioreactorDevice`](StructureDefinition-bioreactor-device.md)** – Extends `Device` with: 
* Working volume, temperature control range, agitation parameters
* Gas exchange (O₂/CO₂), lighting spectrum (for photobioreactors)
* Sensor suite (pH, dissolved oxygen, biomass density)
* Sterility status and planetary-protection compliance level
 
* **[`BiomanufacturingProcedure`](StructureDefinition-biomanufacturing-procedure.md)** – Documents ISRU bioprocessing, algae cultivation, fermentation, or downstream processing with: 
* Process parameters (duration, temperature, feedstock input)
* Strain or cell line used
* Yield and efficiency metrics
* Quality control checkpoints
 
* **[`BLiSSResourceOutput`](StructureDefinition-bliss-resource-output.md)** – Standardized observation of system-level outputs: 
* O₂ production rate
* Food / biomass output
* Water recycling efficiency
* CO₂ fixation rate
* By-product generation (e.g., bioplastics, pharmaceuticals)
 
* **[`BiologicalFeedstock`](StructureDefinition-biological-feedstock.md)** – Characterizes input or output biological substances: 
* Feedstock type (CO₂, urine-derived nutrients, recycled biomass)
* Output bioproduct (single-cell protein, biopolymer, therapeutic compound)
* Purity, viability, and planetary-protection status
 

**Supporting Profiles (suggested)**

* `BiomanufacturingBatch` – Links procedures, bioreactor, feedstock, and output into a traceable production run
* `BLiSSPerformanceSummary` – DiagnosticReport aggregating system-level performance over a mission phase

### Candidate CodeSystems & ValueSets

* `BioreactorTypeCS` – (photobioreactor, heterotrophic-fermenter, hybrid, etc.)
* [`BiomanufacturingProcessCS`](CodeSystem-biomanufacturing-process-cs.md) – (algae-cultivation, microbial-fermentation, enzymatic-recycling, isru-biopolymer)
* `BLiSSResourceTypeVS

### References

-------

title: Biomanufacturing layout: default —

# Biomanufacturing and Bioregenerative Life Support

## Overview

In-situ biomanufacturing and bioregenerative life support systems (BLiSS) represent a critical technology for sustainable long-duration missions. By leveraging engineered microbes, algae, and cell cultures, crews can produce oxygen, food, pharmaceuticals, bioplastics, and water-recycling enzymes directly from local resources or recycled waste streams.

**Bell et al.** (**Space Policy**, May 2026) and related extraterrestrial infrastructure reviews highlight the transition from proof-of-concept (ISS VEG and MELiSSA programs) to operational systems for Artemis, Mars transit, and surface habitats. FHIR profiles in this section standardize the capture of bioreactor configurations, manufacturing procedures, resource outputs, and biological feedstocks so that biomanufacturing data can be consistently recorded, audited, and integrated into crew health and ECLSS records.

## Key Biomanufacturing Processes

**Primary Applications**

* Oxygen and CO₂ fixation (algae, cyanobacteria)
* Protein-rich food and nutritional supplements (microbial fermentation, single-cell protein)
* Biopolymer and material production (bacterial plastics)
* Pharmaceutical synthesis (on-demand antibiotics, monoclonal antibodies)
* Waste recycling (urine, feces, CO₂ → nutrients)

**Common Bioreactor Types**

* Photobioreactors (algae/cyanobacteria)
* Heterotrophic fermenters (bacteria/yeast)
* Hybrid systems (photo + heterotrophic)

## FHIR Implementation Guidance

### Recommended Resources

* `Device` – bioreactor hardware
* `Procedure` – biomanufacturing runs and process steps
* `Observation` – resource output metrics and feedstock characterization
* `Substance` – biological feedstocks and finished bioproducts

### New Profiles (suggested)

**Core Profiles**

* **[`BioreactorDevice`](StructureDefinition-bioreactor-device.md)** – Extends `Device` with: 
* Working volume, temperature control range, agitation parameters
* Gas exchange (O₂/CO₂), lighting spectrum (for photobioreactors)
* Sensor suite (pH, dissolved oxygen, biomass density)
* Sterility status and planetary-protection compliance level
 
* **[`BiomanufacturingProcedure`](StructureDefinition-biomanufacturing-procedure.md)** – Documents ISRU bioprocessing, algae cultivation, fermentation, or downstream processing with: 
* Process parameters (duration, temperature, feedstock input)
* Strain or cell line used
* Yield and efficiency metrics
* Quality control checkpoints
 
* **[`BLiSSResourceOutput`](StructureDefinition-bliss-resource-output.md)** – Standardized observation of system-level outputs: 
* O₂ production rate
* Food / biomass output
* Water recycling efficiency
* CO₂ fixation rate
* By-product generation (e.g., bioplastics, pharmaceuticals)
 
* **[`BiologicalFeedstock`](StructureDefinition-biological-feedstock.md)** – Characterizes input or output biological substances: 
* Feedstock type (CO₂, urine-derived nutrients, recycled biomass)
* Output bioproduct (single-cell protein, biopolymer, therapeutic compound)
* Purity, viability, and planetary-protection status
 

**Supporting Profiles (suggested)**

* `BiomanufacturingBatch` – Links procedures, bioreactor, feedstock, and output into a traceable production run
* `BLiSSPerformanceSummary` – DiagnosticReport aggregating system-level performance over a mission phase

### Candidate CodeSystems & ValueSets

* `BioreactorTypeCS` – (photobioreactor, heterotrophic-fermenter, hybrid, etc.)
* [`BiomanufacturingProcessCS`](CodeSystem-biomanufacturing-process-cs.md) – (algae-cultivation, microbial-fermentation, enzymatic-recycling, isru-biopolymer)
* `BLiSSResourceTypeVS`

## References

* Bell, A., Yeh, D., Garretson, P., & Roberson, L. (2026). Biomanufacturing for a Lunar base—A sustainable vision for the future. **Space Policy**. [https://doi.org/10.1016/j.spacepol.2026.101XXX](https://doi.org/10.1016/j.spacepol.2026.101XXX)
* Porterfield, D. M., et al. (2025). Critical investments in bioregenerative life support systems for bioastronautics and sustainable lunar exploration. **npj Microgravity**, 11(57). [https://doi.org/10.1038/s41526-025-00518-4](https://doi.org/10.1038/s41526-025-00518-4).
* Chander, A. M., et al. (including Fujimura, G.) (2026). Survival of NASA-cleanroom microbial isolates under simulated space and Martian conditions. **Applied and Environmental Microbiology**. [https://doi.org/10.1128/aem.02065-25](https://doi.org/10.1128/aem.02065-25).

