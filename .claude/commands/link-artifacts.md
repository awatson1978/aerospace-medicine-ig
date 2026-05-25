Add FHIR artifact hyperlinks to a page content file. Follow these steps:

1. Ask the user which page content file to process if not already specified (e.g., `input/pagecontent/cardiovascular-countermeasures.md`). Read the target file.

2. Build a lookup of all FHIR resources defined in `input/fsh/*.fsh`. For each resource, extract:
   - **FSH Name** (the identifier after `Profile:`, `Extension:`, `CodeSystem:`, `ValueSet:`, etc.)
   - **Id** (the `Id:` field value)
   - **Resource type** (Profile, Extension, CodeSystem, ValueSet)

3. Scan the target page for unlinked mentions of these resource names. A mention is "unlinked" if it:
   - Is NOT already inside a markdown link `[...](...)`
   - Is NOT inside a code block (fenced ``` or indented)
   - Matches a FSH Name or a recognizable form of it (e.g., backticked `InternalJugularVeinFlowObservation` or plain text)

4. Replace each unlinked mention with the correct markdown link using these URL patterns:
   - **Profiles / Extensions**: `[Name](StructureDefinition-kebab-id.html)`
   - **CodeSystems**: `[Name](CodeSystem-kebab-id.html)`
   - **ValueSets**: `[Name](ValueSet-kebab-id.html)`

   Use the resource's `Id:` value (already in kebab-case) for the URL slug.

5. Preserve the surrounding formatting style. Follow the conventions visible in `input/pagecontent/radiation-tracking.md` and `input/pagecontent/fitness.md`:
   - In **tables**, use backtick-wrapped links: `` [`Name`](StructureDefinition-id.html) ``
   - In **bullet lists under "Standardized Terminologies"**, use bold-bracketed links: `**[`Name`](CodeSystem-id.html)**`
   - In **running prose**, use plain links: `[Name](StructureDefinition-id.html)`
   - If the mention was backticked (`` `Name` ``), keep backticks inside the link: `` [`Name`](url) ``

6. Show the user a summary of changes before saving:
   ```
   Links added (12):
   - InternalJugularVeinFlowObservation → [InternalJugularVeinFlowObservation](StructureDefinition-internal-jugular-vein-flow-observation.html)
   - MicrogravityCountermeasureCS → [MicrogravityCountermeasureCS](CodeSystem-microgravity-countermeasure-cs.html)
   ...
   ```
   Apply the changes after showing the summary.

7. If the page has a **References** section with unlinked references, mention that `/link-references` can be run as a follow-up to add bibliography URLs.
