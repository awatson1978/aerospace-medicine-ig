# Space Agriculture - v0.6.2

* [**Table of Contents**](toc.md)
* **Space Agriculture**

## Space Agriculture

## Space Agriculture Microbiology – VEG-05 Hydroponics Study

### Overview

The NASA HRP VEG-05 investigation characterized the microbial communities, food safety profile, and transcriptomic responses of tomato plants grown in the Veggie plant growth chamber on the International Space Station. This work directly supports closed-loop life support systems, pick-and-eat crop production, and food safety surveillance for future lunar and Mars missions. Key findings include comparable (but slightly elevated) microbial loads on flight-grown produce, lighting-spectrum effects on the microbiome and gene expression, and extensive adventitious root formation under microgravity.

This page documents the microbiology results, transcriptomics, and FHIR modeling guidance for space agriculture monitoring.

### Food Safety Microbiology

**Key Findings**

* Culturable microbial levels on flight-grown produce are comparable to store-bought produce but higher than ground controls.
* Sanitizing with wipes only moderately reduced microbial levels on already-low-count produce.
* Only one plant (VEG-04B) showed a possible human pathogen (**Staphylococcus aureus**), detected at levels below concern; the organism persisted between harvests.
* Testing yielded negative results on both VEG-04 and VEG-05.
* Tomato fruit maintained low microbial counts even when plants were stressed and showed visible microbial growth on other tissues.

**Operational Context** Comparisons included market produce, CE chamber, VEG-03D, VEG-03E, VEG-04A EVT/Ground/Flight, VEG-04B EVT/Ground/Flight, and VEG-05.

### Relative Abundance of Bacteria in VEG-05 Plant Tissues

**Key Findings**

* Flight tissue samples had greater relative abundance than ground tissue samples.
* Fruit had more genera in flight samples.
* **Pseudomonas** was found only in ground fruit samples but was identified in all leaf samples.
* **Burkholderia-Caballeronia-Paraburkholderia** was common in flight root and adventitious root samples.

**Plant Compartments:** Fruit, Leaf, Root, Adventitious Root **Lighting Conditions:** Red-rich and Blue-rich **Experimental Conditions:** Flight vs Ground

**Bacterial Genera Identified in VEG-05**

**Red-Rich Flight** Acinetobacter, Rhizobium, Azospirillum, Burkholderia, Curtobacterium, Dyadobacter, Erwiniaceae, Mesorhizobium, Methylobacterium-Methylorubrum, Paenarthrobacter, Paenibacillus, Pseudomonas, Sphingomonas

**Blue-Rich Flight** Afipia, Rhizobium, Azospirillum, Burkholderia, Dyadobacter, Edaphobacter, Erwiniaceae, Hydrotalea, Leifsonia, Methylobacterium-Methylorubrum, Nevskia, Rhizobiaceae, Sphingomonas

**Ground Samples** Lower diversity, dominated by **Pseudomonas**.

### Fungi Recovered from VEG-05

**Flight Fungi** Aspergillus, Cladorrhinum, Fusarium, Hypoxylon, Leucoagaricus, Kneiffiella, Paecilomyces, Penicillium, Trichoderma

**Ground Fungi** Aspergillus, Blumeria, Cladorrhinum, Colletotrichum, Fusarium, Hypoxylon, Paecilomyces, Penicillium, Purpureocillium, Trichoderma, Ustilaginoidea

**Key Finding** More fungi were recovered from ground samples than flight samples.

### Key Phenotype & Global Expression Overview

**Observations**

* Extensive adventitious root formation observed on ISS-grown tomatoes.
* Tissue-specific programs dominated expression profiles.
* Blue-rich lighting caused greater divergence between flight and ground samples.
* Red-rich lighting produced tighter clustering and stabilized expression.

**Differentially Expressed Genes: Flight vs Ground**

| | | | |
| :--- | :--- | :--- | :--- |
| Leaf | 198 | 2075 | 292 |
| Adventitious Root | 305 | 803 | 389 |

**Regulatory Patterns** Flight consistently produced more upregulated genes. Adventitious roots showed lower overall DEG counts but a stronger upregulation bias.

### FHIR Implementation Guidance

#### Recommended Resources

* `Observation` – microbial counts, relative abundance, transcriptomics
* `Specimen` – plant tissue samples (fruit, leaf, root, adventitious root)
* `DiagnosticReport` – food safety assessments
* `Procedure` – sampling and sanitization protocols
* `Condition` / `Location` – growth chamber environment
* `Device` – Veggie chamber / hydroponic system

#### Suggested Profiles

* `SpaceAgricultureMicrobiology` (Observation)
* `HydroponicPlantSample` (Specimen)
* `FoodSafetyAssessment` (DiagnosticReport)
* `PlantTranscriptomics` (Observation)
* `SpaceCropEnvironmentalConditions` (Observation)
* `ISSVeggieGrowthChamber` (Device or Location)

#### Recommended CodeSystems & ValueSets

**CodeSystems**

* `space-agriculture-microbiology-cs`
* `space-agriculture-fungi-cs`
* `space-agriculture-lighting-cs`
* `space-agriculture-phenotype-cs`

**ValueSets**

* `space-agriculture-bacterial-taxa-vs`
* `space-agriculture-fungal-taxa-vs`
* `space-agriculture-plant-tissue-vs`
* `space-agriculture-lighting-condition-vs`
* `space-agriculture-food-safety-vs`

### Architectural Alignment

This content extends the **ECLSS** and **Nutrition** sections of the Aerospace Medicine IG and supports:

* Closed-loop life support monitoring
* Food safety surveillance for pick-and-eat crops
* Environmental microbiology in habitats
* Integration with radiation, cardiovascular, and neurocognitive countermeasures (via longitudinal crew health records)

It contributes to a generalized **Space Agriculture & Environmental Microbiology** framework for Artemis and Mars missions.

### References

1. [Bunchek et al. (2024). Pick-and-eat space crop production flight testing on the International Space Station.**Journal of Plant Interactions**, 19(1):2292220.](https://doi.org/10.1080/17429145.2023.2292220)DOI: 10.1080/17429145.2023.2292220
1. [Landon et al. (2025). Sustaining the Merry Space farmer with pick-and-eat crop production.**npj Microgravity**11, 72.](https://doi.org/10.1038/s41526-025-00513-9)DOI: 10.1038/s41526-025-00513-9
1. [Spern et al. (2026). The microbial communities of a tomato crop grown in Veggie under different lighting regimes on the International Space Station.**Life Sciences in Space Research**.](https://doi.org/10.1016/j.lssr.2026.01.010)DOI: 10.1016/j.lssr.2026.01.010
1. Dixit et al. (2025). Stress and light spectral quality influence the transcriptome of a tomato crop on the International Space Station.**BMC Plant Biology**. In press.

