#!/usr/bin/env python3
"""
generate_terminology_ndjson.py

Purpose:
Generate downloadable NDJSON files containing CodeSystems and ValueSets from the
astronaut health terminology sections of the HL7 FHIR Aerospace Medicine IG.

Source Pages:
- input/pagecontent/fitness.md (section 11.5)
- input/pagecontent/mentalhealth.md (section 10.2.3)
- input/pagecontent/neutral-buoyancy.md (section 13.2.3)
- input/pagecontent/radiation-tracking.md (section 12.2.3)
- input/pagecontent/nutrition.md (section 14.2.3)

Output Files:
- input/images/SpaceHealth.CodeSystems.ndjson (19 CodeSystems)
- input/images/SpaceHealth.ValueSets.ndjson (16 ValueSets)

Resources Extracted:

CodeSystems (19 total):
- Fitness: space-exercise-modality-cs, space-performance-metric-cs
- Mental Health: aerospace-behavioral-state-cs, behavioral-biomarker-cs,
                 isolation-syndrome-factor-cs, psychological-countermeasure-cs
- Neutral Buoyancy: neutral-buoyancy-training-cs, diving-medicine-cs,
                    decompression-protocol-cs, underwater-communication-cs,
                    regulatory-compliance-cs
- Radiation: space-radiation-type-cs, radiation-countermeasures-cs,
             radiation-detector-type-cs, aerospace-code-system-enhanced
- Nutrition: space-nutrition-type-cs, macronutrient-metrics-cs,
             hydration-type-cs, nutrition-inventory-status-cs

ValueSets (16 total):
- Fitness: space-exercise-modality-vs, space-performance-metric-vs, evs-units-vs
- Mental Health: behavioral-health-metrics-vs, cognitive-performance-indicators-vs,
                 stress-countermeasures-vs, isolation-syndrome-factors-vs
- Neutral Buoyancy: neutral-buoyancy-training-activities,
                    underwater-training-procedures, diving-contraindicated-conditions
- Radiation: organ-dose-codes-vs-complete
- Nutrition: space-nutrition-type-vs, macronutrient-metrics-vs,
             hydration-type-vs, nutrition-inventory-status-vs,
             calorie-deficit-risk-vs

Usage:
    cd scripts
    python generate_terminology_ndjson.py
"""

import json
import os
from pathlib import Path
import sys

# Define the project root (parent of scripts directory)
SCRIPT_DIR = Path(__file__).parent
PROJECT_ROOT = SCRIPT_DIR.parent

# Define paths
FSH_RESOURCES_DIR = PROJECT_ROOT / 'fsh-generated' / 'resources'
OUTPUT_DIR = PROJECT_ROOT / 'input' / 'images'

# CodeSystems to extract (17 total)
CODESYSTEMS = [
    # Fitness (2)
    'space-exercise-modality-cs',
    'space-performance-metric-cs',
    # Mental Health (4)
    'aerospace-behavioral-state-cs',
    'behavioral-biomarker-cs',
    'isolation-syndrome-factor-cs',
    'psychological-countermeasure-cs',
    # Neutral Buoyancy (5)
    'neutral-buoyancy-training-cs',
    'diving-medicine-cs',
    'decompression-protocol-cs',
    'underwater-communication-cs',
    'regulatory-compliance-cs',
    # Radiation (4)
    'space-radiation-type-cs',
    'radiation-countermeasures-cs',
    'radiation-detector-type-cs',
    'aerospace-code-system-enhanced',
    # Nutrition (4)
    'space-nutrition-type-cs',
    'macronutrient-metrics-cs',
    'hydration-type-cs',
    'nutrition-inventory-status-cs',
]

# ValueSets to extract (18 total)
VALUESETS = [
    # Fitness (3)
    'space-exercise-modality-vs',
    'space-performance-metric-vs',
    'evs-units-vs',
    # Mental Health (4)
    'behavioral-health-metrics-vs',
    'cognitive-performance-indicators-vs',
    'stress-countermeasures-vs',
    'isolation-syndrome-factors-vs',
    # Neutral Buoyancy (3)
    'neutral-buoyancy-training-activities',
    'underwater-training-procedures',
    'diving-contraindicated-conditions',
    # Radiation (1)
    'organ-dose-codes-vs-complete',
    # Nutrition (5)
    'space-nutrition-type-vs',
    'macronutrient-metrics-vs',
    'hydration-type-vs',
    'nutrition-inventory-status-vs',
    'calorie-deficit-risk-vs',
]


def load_json_resource(resource_file):
    """
    Load a JSON resource file and return its contents.

    Args:
        resource_file: Path to the JSON file

    Returns:
        dict: Parsed JSON content

    Raises:
        FileNotFoundError: If the file doesn't exist
        json.JSONDecodeError: If the file isn't valid JSON
    """
    with open(resource_file, 'r', encoding='utf-8') as f:
        return json.load(f)


def generate_ndjson(resource_type, resource_ids, output_file):
    """
    Generate an NDJSON file from FHIR resources.

    NDJSON format: One JSON object per line, minified, no trailing newline.

    Args:
        resource_type: Type of FHIR resource ('CodeSystem' or 'ValueSet')
        resource_ids: List of resource IDs to include
        output_file: Path to output NDJSON file

    Returns:
        tuple: (successful_count, missing_count, missing_ids)
    """
    lines = []
    missing = []

    for resource_id in resource_ids:
        # Construct the expected filename
        filename = f"{resource_type}-{resource_id}.json"
        filepath = FSH_RESOURCES_DIR / filename

        if not filepath.exists():
            print(f"  ⚠️  Missing: {filename}")
            missing.append(resource_id)
            continue

        try:
            # Load the JSON resource
            resource = load_json_resource(filepath)

            # Minify to a single line (no whitespace, no newlines)
            minified = json.dumps(resource, separators=(',', ':'), ensure_ascii=False)
            lines.append(minified)

            print(f"  ✓ Processed: {filename}")

        except json.JSONDecodeError as e:
            print(f"  ❌ Invalid JSON in {filename}: {e}")
            missing.append(resource_id)
        except Exception as e:
            print(f"  ❌ Error processing {filename}: {e}")
            missing.append(resource_id)

    # Write NDJSON file (no trailing newline)
    if lines:
        output_file.parent.mkdir(parents=True, exist_ok=True)
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
        print(f"\n✅ Generated: {output_file}")
        print(f"   {len(lines)} resources written")
    else:
        print(f"\n❌ No resources found for {output_file}")

    return len(lines), len(missing), missing


def main():
    """Main execution function."""
    print("=" * 70)
    print("FHIR Aerospace Medicine IG - Terminology NDJSON Generator")
    print("=" * 70)
    print()

    # Verify directories exist
    if not FSH_RESOURCES_DIR.exists():
        print(f"❌ Error: FSH resources directory not found: {FSH_RESOURCES_DIR}")
        print("   Run 'sushi' or '_genonce' to generate FHIR resources first.")
        sys.exit(1)

    print(f"📂 Source: {FSH_RESOURCES_DIR}")
    print(f"📂 Output: {OUTPUT_DIR}")
    print()

    # Generate CodeSystems NDJSON
    print("=" * 70)
    print(f"Generating CodeSystems NDJSON ({len(CODESYSTEMS)} expected)...")
    print("=" * 70)
    cs_output = OUTPUT_DIR / 'SpaceHealth.CodeSystems.ndjson'
    cs_success, cs_missing, cs_missing_ids = generate_ndjson(
        'CodeSystem',
        CODESYSTEMS,
        cs_output
    )

    print()

    # Generate ValueSets NDJSON
    print("=" * 70)
    print(f"Generating ValueSets NDJSON ({len(VALUESETS)} expected)...")
    print("=" * 70)
    vs_output = OUTPUT_DIR / 'SpaceHealth.ValueSets.ndjson'
    vs_success, vs_missing, vs_missing_ids = generate_ndjson(
        'ValueSet',
        VALUESETS,
        vs_output
    )

    print()

    # Summary
    print("=" * 70)
    print("SUMMARY")
    print("=" * 70)
    print(f"CodeSystems: {cs_success}/{len(CODESYSTEMS)} successfully generated")
    if cs_missing_ids:
        print(f"  Missing: {', '.join(cs_missing_ids)}")

    print(f"ValueSets:   {vs_success}/{len(VALUESETS)} successfully generated")
    if vs_missing_ids:
        print(f"  Missing: {', '.join(vs_missing_ids)}")

    print()

    if cs_missing > 0 or vs_missing > 0:
        print("⚠️  Some resources were not found. Check FSH definitions and rebuild.")
        sys.exit(1)
    else:
        print("✅ All terminology resources successfully generated!")
        print()
        print("Output files:")
        print(f"  - {cs_output}")
        print(f"  - {vs_output}")
        sys.exit(0)


if __name__ == '__main__':
    main()
