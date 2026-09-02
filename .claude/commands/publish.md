Publish the FHIR Implementation Guide. Follow these steps exactly:

1. Run the static QC gate and stop if it reports findings:
   ```
   python3 scripts/qc_check.py
   ```

2. Run `_genonce.sh` from the project root. This is a long-running build (~10+ minutes). Use a timeout of at least 600000ms. Stream output so the user can see progress.

3. After the build completes, regenerate the NDJSON downloads from the fresh `fsh-generated/resources/` and re-run the QC gate:
   ```
   cd scripts && python3 generate_terminology_ndjson.py && python3 generate_artemis_ndjson.py && python3 generate_marsdirect_ndjson.py && python3 generate_nasa_ndjson.py && python3 normalize_ndjson.py && cd ..
   python3 scripts/qc_check.py --section ndjson
   ```
   If any generator reports resources taken "from docs" or "from existing", the build did not produce them; investigate before continuing. Because the downloads live in `input/images/`, re-run `_genonce.sh` if any NDJSON file changed so the published copies match.

4. Open `output/index.html` in the browser so the user can verify the build:
   ```
   open output/index.html
   ```

5. Ask the user to confirm the build looks good before proceeding. Do NOT continue until they confirm.

6. Once confirmed, delete the `docs/` directory:
   ```
   rm -rf docs/
   ```

7. Move `output/` to `docs/`; then restore `docs/.nojekyll` and `docs/package-list.json` if the build did not carry them over:
   ```
   mv output/ docs/
   ```

8. Commit the updated docs. Stage only the `docs/` directory. Use a commit message that includes the current date and follows the project's existing commit style (e.g. "Publish IG - YYYY-MM-DD").

9. Push to origin:
   ```
   git push
   ```
