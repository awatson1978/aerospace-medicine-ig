# FHIR Implementation Guide Scripts

This directory contains utility scripts for generating downloadable resource files from the HL7 FHIR Aerospace Medicine Implementation Guide.

## Overview

The Implementation Guide defines numerous FHIR resources (CodeSystems, ValueSets, Profiles, etc.) that are generated from FSH (FHIR Shorthand) definitions. These scripts extract specific subsets of resources and package them into downloadable formats for implementers.

## Purpose

Scripts in this directory serve to:

1. **Extract Resource Subsets**: Pull specific groups of resources based on clinical/functional domains
2. **Generate NDJSON Files**: Create newline-delimited JSON files for bulk data exchange
3. **Maintain Consistency**: Ensure download files stay synchronized with IG content
4. **Support Reusability**: Provide templates for generating additional resource bundles

## NDJSON Generation Pattern

### Standard Workflow

1. **Identify Source Content**: Determine which Implementation Guide pages define the resources
2. **Extract Resource IDs**: Parse the "Standardized Terminologies" sections to find CodeSystem/ValueSet IDs
3. **Locate JSON Files**: Find the corresponding JSON files in `fsh-generated/resources/`
4. **Generate NDJSON**: Convert each JSON file to a single-line minified format
5. **Write Output**: Save to `input/images/` for inclusion in the published IG

### NDJSON Format Requirements

- **One resource per line**: Each line is a complete, valid JSON object
- **Minified JSON**: No formatting, whitespace, or newlines within each object
- **No trailing newline**: File should end immediately after the last JSON object
- **Valid JSON**: Each line must parse as valid JSON independently

### File Naming Convention

```
SpaceHealth.<ResourceType>.<Subset>.ndjson
```

Examples:
- `SpaceHealth.CodeSystems.ndjson` - All terminology CodeSystems
- `SpaceHealth.ValueSets.ndjson` - All terminology ValueSets
- `SpaceHealth.Devices.ndjson` - Device resources
- `SpaceHealth.Locations.ndjson` - Location resources

### Source Directories

- **Input**: `fsh-generated/resources/` - Generated FHIR resources from FSH definitions
- **Output**: `input/images/` - Published with the IG for user downloads

## Existing Scripts

### generate_artemis_ndjson.py

**Purpose**: Generate downloadable NDJSON files for Artemis mission CodeSystems and ValueSets.

**Source Pages**:
- `input/pagecontent/missions-artemis.md` (section 15.2.3)

**Output Files**:
- `input/images/Artemis.CodeSystems.ndjson` (4 CodeSystems)
- `input/images/Artemis.ValueSets.ndjson` (5 ValueSets)

**Usage**:
```bash
cd scripts
python3 generate_artemis_ndjson.py
```

**Resources Extracted**:

*CodeSystems (4):*
- artemis-mission-cs: Mission codes (ARTEMIS-I through ARTEMIS-V)
- artemis-landing-region-cs: 13 candidate south pole landing regions
- artemis-certified-devices-cs: Flight-qualified hardware (Orion, SLS, xEMU, etc.)
- artemis-prototype-devices-cs: Developmental/test hardware

*ValueSets (5):*
- artemis-mission-vs: All Artemis program missions I-V
- artemis-landing-region-vs: Landing region bindings
- artemis-certified-devices-vs: Certified Artemis devices
- artemis-prototype-devices-vs: Prototype Artemis devices
- artemis-all-devices-vs: Combined certified and prototype devices

### generate_marsdirect_ndjson.py

**Purpose**: Generate downloadable NDJSON files for Mars Direct mission CodeSystems and ValueSets.

**Source Pages**:
- `input/pagecontent/missions-marsdirect.md` (section 16.4.3)

**Output Files**:
- `input/images/MarsDirect.CodeSystems.ndjson` (5 CodeSystems)
- `input/images/MarsDirect.ValueSets.ndjson` (6 ValueSets)

**Usage**:
```bash
cd scripts
python3 generate_marsdirect_ndjson.py
```

**Resources Extracted**:

*CodeSystems (5):*
- mars-missions-cs: Robotic missions (Mariner 4, Viking, Pathfinder, Spirit, Opportunity, Curiosity, Perseverance)
- crewed-mars-missions-cs: Architectures (Mars Direct, DRM 3.0, DRA 5.0, Starship, Olympus)
- mars-landing-sites-cs: Candidate sites with coordinates (Jezero, Arcadia, Gale, Elysium, Hellas, Mawrth)
- mars-devices-certified-cs: Flight-qualified hardware (Orion, Crew Dragon, ISS ECLSS, EMU, Bio-Monitor)
- mars-devices-prototype-cs: Developmental (Starship, Mars Habitat, xEMU, ISRU Plant, Kilopower, Rovers)

*ValueSets (6):*
- mars-missions-vs: All Mars missions
- crewed-mars-missions-vs: Human mission plans
- mars-landing-sites-vs: Landing site selection
- mars-devices-certified-vs: Certified devices
- mars-devices-prototype-vs: Prototype devices
- mars-all-devices-vs: Combined devices

### generate_terminology_ndjson.py

**Purpose**: Generate downloadable NDJSON files for CodeSystems and ValueSets from astronaut health pages.

**Source Pages**:
- `input/pagecontent/fitness.md` (section 11.5)
- `input/pagecontent/mentalhealth.md` (section 10.2.3)
- `input/pagecontent/neutral-buoyancy.md` (section 13.2.3)
- `input/pagecontent/radiation-tracking.md` (section 12.2.3)
- `input/pagecontent/nutrition.md` (section 14.2.3)

**Output Files**:
- `input/images/SpaceHealth.CodeSystems.ndjson` (19 CodeSystems)
- `input/images/SpaceHealth.ValueSets.ndjson` (16 ValueSets)

**Usage**:
```bash
cd scripts
python generate_terminology_ndjson.py
```

**Resources Extracted**:

*CodeSystems (19):*
- Fitness: space-exercise-modality-cs, space-performance-metric-cs
- Mental Health: aerospace-behavioral-state-cs, behavioral-biomarker-cs, isolation-syndrome-factor-cs, psychological-countermeasure-cs
- Neutral Buoyancy: neutral-buoyancy-training-cs, diving-medicine-cs, decompression-protocol-cs, underwater-communication-cs, regulatory-compliance-cs
- Radiation: space-radiation-type-cs, radiation-countermeasures-cs, radiation-detector-type-cs, aerospace-code-system-enhanced
- Nutrition: space-nutrition-type-cs, macronutrient-metrics-cs, hydration-type-cs, nutrition-inventory-status-cs

*ValueSets (16):*
- Fitness: space-exercise-modality-vs, space-performance-metric-vs, evs-units-vs
- Mental Health: behavioral-health-metrics-vs, cognitive-performance-indicators-vs, stress-countermeasures-vs, isolation-syndrome-factors-vs
- Neutral Buoyancy: neutral-buoyancy-training-activities, underwater-training-procedures, diving-contraindicated-conditions
- Radiation: organ-dose-codes-vs-complete
- Nutrition: space-nutrition-type-vs, macronutrient-metrics-vs, hydration-type-vs, nutrition-inventory-status-vs, calorie-deficit-risk-vs

## Creating New Scripts

### Template Structure

```python
#!/usr/bin/env python3
"""
Script Name: generate_<resource-type>_ndjson.py

Purpose:
Describe what this script does and why it exists.

Source Pages:
- List the IG pages that define the resources
- Include section numbers for reference

Output Files:
- List the NDJSON files this script generates

Resources Extracted:
- List the specific resource IDs included
"""

import json
import os
from pathlib import Path

# Define resource IDs to extract
RESOURCE_IDS = [
    'resource-id-1',
    'resource-id-2',
    # ... etc
]

def generate_ndjson(resource_type, resource_ids, output_file):
    """
    Generate NDJSON file from FHIR resources.

    Args:
        resource_type: Type of FHIR resource (e.g., 'CodeSystem', 'ValueSet')
        resource_ids: List of resource IDs to include
        output_file: Path to output NDJSON file
    """
    # Implementation here
    pass

if __name__ == '__main__':
    # Execute generation
    pass
```

### Best Practices

1. **Document Source Pages**: Always include comments showing which IG pages define the resources
2. **List Resource IDs**: Explicitly list all resource IDs being extracted for easy maintenance
3. **Error Handling**: Check for missing files and report clearly
4. **Validation**: Verify JSON validity and NDJSON format
5. **Path Independence**: Use relative paths from project root
6. **Count Verification**: Report expected vs. actual resource counts

### Testing New Scripts

1. Run the script and verify output file creation
2. Check line count matches expected resource count: `wc -l <output-file>`
3. Validate NDJSON format: `jq -c . <output-file> > /dev/null`
4. Spot-check a few resources: `head -1 <output-file> | jq .`
5. Verify file is referenced in downloads page

## Future Script Ideas

Based on existing NDJSON files in `input/images/`, consider creating scripts for:

- **SpaceHealth.Devices.ndjson** - Exercise equipment, dosimeters, medical devices
- **SpaceHealth.Locations.ndjson** - Training facilities, spacecraft, habitats
- **SpaceHealth.Organizations.ndjson** - Space agencies, research institutions
- **SpaceHealth.Procedures.ndjson** - Medical procedures, training activities
- **SpaceHealth.Observations.ndjson** - Vital signs, radiation measurements
- **SpaceHealth.Conditions.ndjson** - Space-specific medical conditions
- **SpaceHealth.Patients.Crew.ndjson** - Astronaut/crew patient examples

## Maintenance

### When to Re-run Scripts

- After updating FSH definitions for included resources
- After running `sushi` or `_genonce` to rebuild the IG
- When adding new resources to the terminology sections
- Before publishing a new version of the IG

### Updating Scripts

When modifying which resources are included:

1. Update the resource ID lists in the script
2. Update the count in script documentation
3. Update this CLAUDE.md file with new totals
4. Update the IG page that references the download links
5. Re-run the script to regenerate output files

## References

- [FHIR NDJSON Format](https://www.hl7.org/fhir/nd-json.html)
- [Bulk Data Export](https://hl7.org/fhir/uv/bulkdata/)
- [FHIR Shorthand (FSH)](https://fshschool.org/)
