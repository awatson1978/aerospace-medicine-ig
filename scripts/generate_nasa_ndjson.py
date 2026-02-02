#!/usr/bin/env python3
"""
generate_nasa_ndjson.py

Purpose:
Generate downloadable NDJSON file containing MEDB Questionnaires from the
NASA Medical Evaluation Documents Board (MEDB) sections of the HL7 FHIR
Aerospace Medicine IG.

Source Pages:
- input/fsh/questionnaires/MEDB-1-PhysicalExams.fsh
- input/fsh/questionnaires/MEDB-2-Laboratory.fsh
- input/fsh/questionnaires/MEDB-3-Radiation.fsh
- input/fsh/questionnaires/MEDB-5-Fitness.fsh
- input/fsh/questionnaires/MEDB-6-EVA.fsh
- input/fsh/questionnaires/MEDB-7-Behavioral.fsh

Output Files:
- input/images/NASA.Questionnaires.ndjson (18 Questionnaires)

Resources Extracted:

Questionnaires (18 total):
- MEDB 1 - Physical Exams:
  - MEDB16RestingECGQuestionnaire: Resting ECG
  - MEDB18AudiometryQuestionnaire: Audiometry
  - MEDB19DentalExamQuestionnaire: Dental Examination
  - MEDB110OphthalmologicExamQuestionnaire: Ophthalmologic Examination
  - MEDB111BodyCompositionQuestionnaire: Body Composition/DEXA
  - MEDB114BodyMassQuestionnaire: Body Mass Measurement
- MEDB 2 - Laboratory:
  - MEDB21RoutineLabPanelQuestionnaire: Routine Laboratory Panel
  - MEDB22MRSAScreeningQuestionnaire: MRSA Screening
  - MEDB23TBTestingQuestionnaire: Tuberculosis Testing
  - MEDB24HpyloriScreeningQuestionnaire: H. pylori Screening
- MEDB 3 - Radiation:
  - MEDB31RadiationMonitoringQuestionnaire: Radiation Monitoring/Crew Personal Dosimetry
- MEDB 5 - Fitness:
  - MEDB51AerobicFitnessQuestionnaire: Aerobic Fitness Assessment
  - MEDB52StrengthAssessmentQuestionnaire: Strength Assessment
  - MEDB53ExercisePrescriptionQuestionnaire: Exercise Prescription
- MEDB 6 - EVA:
  - MEDB61EVAMedicalRequirementsQuestionnaire: EVA Medical Requirements
- MEDB 7 - Behavioral:
  - MEDB71PsychStatusQuestionnaire: Preflight Psychiatric/Psychological Status Check
  - MEDB74CrewDynamicsQuestionnaire: Crew Dynamics Assessment
  - MEDB75FamilySupportQuestionnaire: Family Support Evaluation

Usage:
    cd scripts
    python3 generate_nasa_ndjson.py
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

# MEDB Questionnaires to extract (18 total)
QUESTIONNAIRES = [
    # MEDB 1 - Physical Exams (6)
    'MEDB16RestingECGQuestionnaire',
    'MEDB18AudiometryQuestionnaire',
    'MEDB19DentalExamQuestionnaire',
    'MEDB110OphthalmologicExamQuestionnaire',
    'MEDB111BodyCompositionQuestionnaire',
    'MEDB114BodyMassQuestionnaire',
    # MEDB 2 - Laboratory (4)
    'MEDB21RoutineLabPanelQuestionnaire',
    'MEDB22MRSAScreeningQuestionnaire',
    'MEDB23TBTestingQuestionnaire',
    'MEDB24HpyloriScreeningQuestionnaire',
    # MEDB 3 - Radiation (1)
    'MEDB31RadiationMonitoringQuestionnaire',
    # MEDB 5 - Fitness (3)
    'MEDB51AerobicFitnessQuestionnaire',
    'MEDB52StrengthAssessmentQuestionnaire',
    'MEDB53ExercisePrescriptionQuestionnaire',
    # MEDB 6 - EVA (1)
    'MEDB61EVAMedicalRequirementsQuestionnaire',
    # MEDB 7 - Behavioral (3)
    'MEDB71PsychStatusQuestionnaire',
    'MEDB74CrewDynamicsQuestionnaire',
    'MEDB75FamilySupportQuestionnaire',
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


def generate_ndjson(resource_ids, output_file):
    """
    Generate an NDJSON file from FHIR Questionnaire resources.

    NDJSON format: One JSON object per line, minified, no trailing newline.

    Args:
        resource_ids: List of Questionnaire instance IDs to include
        output_file: Path to output NDJSON file

    Returns:
        tuple: (successful_count, missing_count, missing_ids)
    """
    lines = []
    missing = []

    for resource_id in resource_ids:
        # Construct the expected filename
        filename = f"Questionnaire-{resource_id}.json"
        filepath = FSH_RESOURCES_DIR / filename

        if not filepath.exists():
            print(f"  Warning: Missing {filename}")
            missing.append(resource_id)
            continue

        try:
            # Load the JSON resource
            resource = load_json_resource(filepath)

            # Minify to a single line (no whitespace, no newlines)
            minified = json.dumps(resource, separators=(',', ':'), ensure_ascii=False)
            lines.append(minified)

            print(f"  OK: {filename}")

        except json.JSONDecodeError as e:
            print(f"  ERROR: Invalid JSON in {filename}: {e}")
            missing.append(resource_id)
        except Exception as e:
            print(f"  ERROR: processing {filename}: {e}")
            missing.append(resource_id)

    # Write NDJSON file (no trailing newline)
    if lines:
        output_file.parent.mkdir(parents=True, exist_ok=True)
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(lines))
        print(f"\nGenerated: {output_file}")
        print(f"   {len(lines)} resources written")
    else:
        print(f"\nNo resources found for {output_file}")

    return len(lines), len(missing), missing


def main():
    """Main execution function."""
    print("=" * 70)
    print("FHIR Aerospace Medicine IG - NASA Questionnaires NDJSON Generator")
    print("=" * 70)
    print()

    # Verify directories exist
    if not FSH_RESOURCES_DIR.exists():
        print(f"Error: FSH resources directory not found: {FSH_RESOURCES_DIR}")
        print("   Run 'sushi' or '_genonce' to generate FHIR resources first.")
        sys.exit(1)

    print(f"Source: {FSH_RESOURCES_DIR}")
    print(f"Output: {OUTPUT_DIR}")
    print()

    # Generate Questionnaires NDJSON
    print("=" * 70)
    print(f"Generating NASA MEDB Questionnaires NDJSON ({len(QUESTIONNAIRES)} expected)...")
    print("=" * 70)
    q_output = OUTPUT_DIR / 'NASA.Questionnaires.ndjson'
    q_success, q_missing, q_missing_ids = generate_ndjson(
        QUESTIONNAIRES,
        q_output
    )

    print()

    # Summary
    print("=" * 70)
    print("SUMMARY")
    print("=" * 70)
    print(f"Questionnaires: {q_success}/{len(QUESTIONNAIRES)} successfully generated")
    if q_missing_ids:
        print(f"  Missing: {', '.join(q_missing_ids)}")

    print()

    if q_missing > 0:
        print("Some resources were not found. Check FSH definitions and rebuild.")
        sys.exit(1)
    else:
        print("All NASA MEDB Questionnaire resources successfully generated!")
        print()
        print("Output files:")
        print(f"  - {q_output}")
        sys.exit(0)


if __name__ == '__main__':
    main()
