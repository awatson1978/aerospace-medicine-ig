#!/usr/bin/env python3
"""
generate_artemis_ndjson.py

Purpose:
Generate downloadable NDJSON files containing CodeSystems and ValueSets from the
Artemis mission section of the HL7 FHIR Aerospace Medicine IG.

Source Pages:
- input/pagecontent/missions-artemis.md (section 15.2.3)

Output Files:
- input/images/Artemis.CodeSystems.ndjson (4 CodeSystems)
- input/images/Artemis.ValueSets.ndjson (5 ValueSets)

Resources Extracted:

CodeSystems (4 total):
- artemis-mission-cs: Mission codes (ARTEMIS-I through ARTEMIS-V)
- artemis-landing-region-cs: 13 candidate south pole landing regions
- artemis-certified-devices-cs: Flight-qualified hardware (Orion, SLS, xEMU, etc.)
- artemis-prototype-devices-cs: Developmental/test hardware

ValueSets (5 total):
- artemis-mission-vs: All Artemis program missions I-V
- artemis-landing-region-vs: Landing region bindings
- artemis-certified-devices-vs: Certified Artemis devices
- artemis-prototype-devices-vs: Prototype Artemis devices
- artemis-all-devices-vs: Combined certified and prototype devices

Usage:
    cd scripts
    python3 generate_artemis_ndjson.py
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

# CodeSystems to extract (4 total)
CODESYSTEMS = [
    'artemis-mission-cs',
    'artemis-landing-region-cs',
    'artemis-certified-devices-cs',
    'artemis-prototype-devices-cs',
]

# ValueSets to extract (5 total)
VALUESETS = [
    'artemis-mission-vs',
    'artemis-landing-region-vs',
    'artemis-certified-devices-vs',
    'artemis-prototype-devices-vs',
    'artemis-all-devices-vs',
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
    print("FHIR Aerospace Medicine IG - Artemis NDJSON Generator")
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
    print(f"Generating Artemis CodeSystems NDJSON ({len(CODESYSTEMS)} expected)...")
    print("=" * 70)
    cs_output = OUTPUT_DIR / 'Artemis.CodeSystems.ndjson'
    cs_success, cs_missing, cs_missing_ids = generate_ndjson(
        'CodeSystem',
        CODESYSTEMS,
        cs_output
    )

    print()

    # Generate ValueSets NDJSON
    print("=" * 70)
    print(f"Generating Artemis ValueSets NDJSON ({len(VALUESETS)} expected)...")
    print("=" * 70)
    vs_output = OUTPUT_DIR / 'Artemis.ValueSets.ndjson'
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
        print("✅ All Artemis resources successfully generated!")
        print()
        print("Output files:")
        print(f"  - {cs_output}")
        print(f"  - {vs_output}")
        sys.exit(0)


if __name__ == '__main__':
    main()
