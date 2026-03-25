Publish the FHIR Implementation Guide. Follow these steps exactly:

1. Run `_genonce.sh` from the project root. This is a long-running build (~10+ minutes). Use a timeout of at least 600000ms. Stream output so the user can see progress.

2. After the build completes, open `output/index.html` in the browser so the user can verify the build:
   ```
   open output/index.html
   ```

3. Ask the user to confirm the build looks good before proceeding. Do NOT continue until they confirm.

4. Once confirmed, delete the `docs/` directory:
   ```
   rm -rf docs/
   ```

5. Move `output/` to `docs/`:
   ```
   mv output/ docs/
   ```

6. Commit the updated docs. Stage only the `docs/` directory. Use a commit message that includes the current date and follows the project's existing commit style (e.g. "Publish IG - YYYY-MM-DD").

7. Push to origin:
   ```
   git push
   ```
