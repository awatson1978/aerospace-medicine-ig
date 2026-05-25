Add bibliography URLs to references in a page content file. Follow these steps:

1. Ask the user which page content file to process if not already specified. Read the target file and locate the **References** section (typically a `## References` or `**References**` heading near the end).

2. Identify references that are **plain text** — they have no `[text](url)` markdown link. Skip any references already containing a markdown hyperlink.

3. Read the master bibliography at `input/pagecontent/references.md`. This file contains ~500 linked reference entries that serve as the authoritative URL source.

4. For each unlinked reference, **fuzzy-match** against entries in `references.md`. Match on:
   - Paper/report titles or key title phrases
   - Author names or organization names (NASA, ESA, NCRP, etc.)
   - Standard identifiers (DOI patterns, report numbers like "NCRP Report No. 180")
   - Year + author combinations

   A match means the reference in `references.md` clearly refers to the same source, even if the wording differs slightly.

5. For each match found: wrap the page's original reference text (or the most meaningful portion) in a markdown link using the URL from `references.md`. Keep the page's existing display text — do not replace it with text from `references.md`. For example:
   - Before: `- NASA Human Research Program – Cardiovascular Countermeasures slides`
   - After: `- [NASA Human Research Program – Cardiovascular Countermeasures slides](https://example.com/url-from-references-md)`

6. For references with **no match** in `references.md`, report them to the user:
   ```
   Unmatched references (need manual URL lookup):
   - "Aerospace Medicine FHIR IG (MITRE-approved)"
   ```

7. Show a summary of results:
   ```
   Linked: 3 references
   Unmatched: 1 reference (listed above)
   ```
   Apply the matched links after showing the summary.

8. If the page also has **unlinked FHIR resource mentions** (profile names, CodeSystem names, etc.), mention that `/link-artifacts` can be run as a follow-up to add those hyperlinks.
