Update NDJSON download files after new FSH resources are added. Follow these steps:

1. Scan recently-added or modified `.fsh` files in `input/fsh/` for `CodeSystem:` and `ValueSet:` declarations. For each, extract the `Id:` value. Report a summary like:
   ```
   Found in CardiovascularCountermeasures.fsh:
     CodeSystems: microgravity-countermeasure-cs, ijv-flow-grade-cs, parabolic-flight-phase-cs
     ValueSets: microgravity-countermeasure-vs, ijv-flow-grade-vs, parabolic-flight-phase-vs
   ```

2. Determine which Python script in `scripts/` should contain these resources. Use these routing rules:
   - **General health terminologies** (fitness, mental health, nutrition, radiation, cardiovascular, neutral buoyancy, etc.) → `scripts/generate_terminology_ndjson.py`
   - **Artemis mission** resources → `scripts/generate_artemis_ndjson.py`
   - **Mars Direct mission** resources → `scripts/generate_marsdirect_ndjson.py`
   - **NASA questionnaires** → `scripts/generate_nasa_ndjson.py`
   - **New domain** that doesn't fit the above → ask the user before creating a new script. Follow the template in `scripts/CLAUDE.md` under "Creating New Scripts".

3. Open the target script and add the new resource IDs to the `CODESYSTEMS` and/or `VALUESETS` arrays. Follow these conventions:
   - Group new entries under a **topic comment** (e.g., `# Cardiovascular (3)`).
   - Place the new group logically among existing groups.
   - Update the inline count comment in each group header.
   - Update the total count comment on the array (e.g., change `# CodeSystems to extract (19 total)` to reflect the new count).

4. Update the script's **docstring** at the top of the file:
   - Add the new source page to the "Source Pages" list.
   - Update the CodeSystem/ValueSet counts in the "Output Files" line.
   - Add the new resource IDs to the "Resources Extracted" list under the appropriate topic heading.

5. Check whether `fsh-generated/resources/` already contains the compiled JSON for the new resources. If not, run sushi:
   ```
   sushi .
   ```

6. Run the Python script to regenerate the NDJSON files:
   ```
   cd scripts && python3 <script-name>.py
   ```

7. Verify the script output reports all resources processed successfully. If any are missing, report the issue to the user.

8. If a **brand-new NDJSON file** was created (not just updating an existing one), add download links to `input/pagecontent/downloads.md` in the appropriate section (General Data Model, NASA, Artemis, Mars Direct, etc.).

9. Update `scripts/CLAUDE.md` to reflect the new counts and resource lists. Specifically update:
   - The script's entry under "Existing Scripts" with new counts, source pages, and resource IDs.
   - Any summary counts that changed.
