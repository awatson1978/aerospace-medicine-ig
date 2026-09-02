### Overview

Growing food in orbit is no longer a demonstration. The NASA Human Research Program (HRP) VEG-05 investigation characterized the microbial communities, food safety profile, and transcriptomic responses of dwarf tomato plants grown in the Veggie plant growth chamber on the International Space Station (ISS), following the leafy-green and mizuna crops of VEG-03 and VEG-04. This work directly supports closed-loop life support systems, pick-and-eat crop production, and food safety surveillance for future lunar and Mars missions. Key findings include comparable (but slightly elevated) microbial loads on flight-grown produce, lighting-spectrum effects on the microbiome and gene expression, and extensive adventitious root formation under microgravity.

This page documents the microbiology results, transcriptomics, and FHIR modeling guidance for space agriculture monitoring. The FHIR artifacts for this domain have not yet been written; the profiles and code systems listed at the end of the page are proposals, not published artifacts.

### Food Safety Microbiology

Before an astronaut is allowed to eat a crop grown on orbit, the produce is screened the way a terrestrial food-safety laboratory would screen a lettuce harvest: total culturable bacteria and fungi are counted, and samples are tested for the indicator pathogens *Escherichia coli*, *Salmonella*, and *Staphylococcus aureus*.

**Key Findings**
- Culturable microbial levels on flight-grown produce are comparable to store-bought produce but higher than ground controls.
- Sanitizing with wipes only moderately reduced microbial levels on already-low-count produce.
- Across the VEG-04A, VEG-04B, and VEG-05 flight tests, all samples were negative for *E. coli* and *Salmonella*. A single VEG-04B plant yielded a presumptive *S. aureus* isolate at a level below food-safety concern, and the organism persisted on that plant between harvests; no *S. aureus* was detected on any other VEG-04 or VEG-05 sample.
- Tomato fruit maintained low microbial counts even when plants were stressed and showed visible microbial growth on other tissues.

**Operational Context**

Comparisons included market produce, a controlled-environment (CE) chamber, VEG-03D, VEG-03E, VEG-04A (engineering verification test, ground, and flight), VEG-04B (engineering verification test, ground, and flight), and VEG-05. The earlier VEG-01 and VEG-03 lettuce crops were screened the same way and were likewise free of the target pathogens (Khodadad et al., 2020).

### Relative Abundance of Bacteria in VEG-05 Plant Tissues

Beyond counting colonies, the VEG-05 team sequenced the bacterial communities living on and in each plant tissue, comparing flight and ground plants grown under two lighting recipes.

**Key Findings**
- Flight tissue samples had greater relative abundance than ground tissue samples.
- Fruit had more genera in flight samples.
- *Pseudomonas* was found only in ground fruit samples but was identified in all leaf samples.
- *Burkholderia-Caballeronia-Paraburkholderia* was common in flight root and adventitious root samples.

**Plant Compartments:** Fruit, Leaf, Root, Adventitious Root
**Lighting Conditions:** Red-rich and Blue-rich
**Experimental Conditions:** Flight vs Ground

**Bacterial Genera Identified in VEG-05**

*Red-Rich Flight:* Acinetobacter, Rhizobium, Azospirillum, Burkholderia, Curtobacterium, Dyadobacter, Erwiniaceae, Mesorhizobium, Methylobacterium-Methylorubrum, Paenarthrobacter, Paenibacillus, Pseudomonas, Sphingomonas

*Blue-Rich Flight:* Afipia, Rhizobium, Azospirillum, Burkholderia, Dyadobacter, Edaphobacter, Erwiniaceae, Hydrotalea, Leifsonia, Methylobacterium-Methylorubrum, Nevskia, Rhizobiaceae, Sphingomonas

*Ground Samples:* Lower diversity, dominated by *Pseudomonas*.

### Fungi Recovered from VEG-05

Fungi matter for two reasons in a sealed habitat: some genera (such as *Fusarium*) are plant pathogens that can wipe out a crop, and others (such as *Aspergillus* and *Penicillium*) can become a crew health concern if they colonize the cabin.

*Flight Fungi:* Aspergillus, Cladorrhinum, Fusarium, Hypoxylon, Leucoagaricus, Kneiffiella, Paecilomyces, Penicillium, Trichoderma

*Ground Fungi:* Aspergillus, Blumeria, Cladorrhinum, Colletotrichum, Fusarium, Hypoxylon, Paecilomyces, Penicillium, Purpureocillium, Trichoderma, Ustilaginoidea

**Key Finding:** More fungal genera were recovered from ground samples than from flight samples.

### Key Phenotype & Global Expression Overview

The most visible difference between flight and ground tomatoes was not in the fruit but in the roots: plants on the ISS grew extensive adventitious roots (roots emerging from the stem rather than the primary root system). RNA sequencing of leaf and adventitious-root tissue showed how the plants reprogrammed gene expression in response to spaceflight and to the two lighting recipes.

**Observations**
- Extensive adventitious root formation observed on ISS-grown tomatoes.
- Tissue-specific programs dominated expression profiles.
- Blue-rich lighting caused greater divergence between flight and ground samples.
- Red-rich lighting produced tighter clustering and stabilized expression.

**Differentially Expressed Genes: Flight vs Ground**

The table below covers the two compartments that were sequenced, leaf and adventitious root; fruit and primary root were sampled for microbiology but not for transcriptomics. "Shared" counts genes differentially expressed under both lighting recipes; "Blue-unique" and "Red-unique" count genes that responded to flight only under that recipe.

| Tissue                  | Shared DEGs | Blue-unique | Red-unique |
|-------------------------|-------------|-------------|------------|
| Leaf                    | 198         | 2075        | 292        |
| Adventitious Root       | 305         | 803         | 389        |

**Regulatory Patterns:** Flight consistently produced more upregulated genes. Adventitious roots showed lower overall DEG counts but a stronger upregulation bias.

### FHIR Profiles and Extensions

#### Recommended Resources

The findings above map onto standard FHIR resources without any aerospace-specific structure; the proposed profiles below would constrain them.

- `Observation` – microbial counts, relative abundance, transcriptomics
- `Specimen` – plant tissue samples (fruit, leaf, root, adventitious root)
- `DiagnosticReport` – food safety assessments
- `Procedure` – sampling and sanitization protocols
- `Condition` / `Location` – growth chamber environment
- `Device` – Veggie chamber / hydroponic system

#### Proposed Profiles (not yet defined)

None of the following profiles exist in this guide yet. They are listed so that implementers can see the intended shape of the space-agriculture module.

- `SpaceAgricultureMicrobiology` (Observation) – culturable counts and pathogen screening results for a produce sample
- `HydroponicPlantSample` (Specimen) – plant tissue specimen with compartment, lighting condition, and flight/ground context
- `FoodSafetyAssessment` (DiagnosticReport) – pre-consumption food safety verdict aggregating the microbiology observations
- `PlantTranscriptomics` (Observation) – differential gene expression summary for a tissue and lighting condition
- `SpaceCropEnvironmentalConditions` (Observation) – chamber light spectrum, temperature, humidity, and CO₂ during growth
- `ISSVeggieGrowthChamber` (Device or Location) – the Veggie unit or a successor plant growth facility

### Standardized Terminologies

#### Proposed Terminology (not yet defined)

The following code systems and value sets are proposed to code the taxa, tissues, lighting conditions, and food safety outcomes above. None has been defined in FSH yet.

**CodeSystems**
- `space-agriculture-microbiology-cs` – bacterial genera and food-safety indicator organisms
- `space-agriculture-fungi-cs` – fungal genera recovered from crops
- `space-agriculture-lighting-cs` – lighting recipes (red-rich, blue-rich)
- `space-agriculture-phenotype-cs` – phenotypes such as adventitious rooting

**ValueSets**
- `space-agriculture-bacterial-taxa-vs`
- `space-agriculture-fungal-taxa-vs`
- `space-agriculture-plant-tissue-vs`
- `space-agriculture-lighting-condition-vs`
- `space-agriculture-food-safety-vs`

### Architectural Alignment

This content extends the [ECLSS](eclss.html) and [Nutrition](nutrition.html) sections of the Aerospace Medicine IG and supports:
- Closed-loop life support monitoring
- Food safety surveillance for pick-and-eat crops
- Environmental microbiology in habitats (see [Planetary Protection](planetary-protection.html))
- Integration with radiation, cardiovascular, and neurocognitive countermeasures (via longitudinal crew health records)

It contributes to a generalized Space Agriculture & Environmental Microbiology framework for Artemis and Mars missions.

### References

1. Bunchek JM, et al. Pick-and-eat space crop production flight testing on the International Space Station. *Journal of Plant Interactions* 19(1):2292220, 2024. [https://doi.org/10.1080/17429145.2023.2292220](https://doi.org/10.1080/17429145.2023.2292220)
2. Landon et al. Sustaining the Merry Space farmer with pick-and-eat crop production. *npj Microgravity* 11, 72, 2025. [https://doi.org/10.1038/s41526-025-00513-9](https://doi.org/10.1038/s41526-025-00513-9)
3. Spern et al. The microbial communities of a tomato crop grown in Veggie under different lighting regimes on the International Space Station. *Life Sciences in Space Research*, 2026. [https://doi.org/10.1016/j.lssr.2026.01.010](https://doi.org/10.1016/j.lssr.2026.01.010)
4. Dixit et al. Stress and light spectral quality influence the transcriptome of a tomato crop on the International Space Station. *BMC Plant Biology*, 2025. In press.
5. Khodadad CLM, et al. Microbiological and Nutritional Analysis of Lettuce Crops Grown on the International Space Station. *Frontiers in Plant Science* 11:199, 2020. [https://doi.org/10.3389/fpls.2020.00199](https://doi.org/10.3389/fpls.2020.00199)
6. NASA. [Veggie plant growth system](https://www.nasa.gov/content/growing-plants-in-space) – project page.
