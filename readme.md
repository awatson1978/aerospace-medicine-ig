## FHIR Implementation Guide for Aerospace Medicine

This repository contains the source for the FHIR Implementation Guide for Aerospace Medicine, developed at MITRE. The guide documents a standardized approach for modeling and exchanging health and medical data in aerospace environments using the Fast Healthcare Interoperability Resources (FHIR) specification. Its goal is to bridge the gap between terrestrial healthcare informatics and the emerging needs of space medicine by enabling consistent, interoperable data exchange across mission profiles, devices, and care environments.

The guide is intended for developers, researchers, mission planners, medical device manufacturers, and clinicians who are designing, evaluating, or simulating health monitoring systems in aerospace domains, from commercial space tourism to long-duration crewed missions. It provides the data schemas, usage patterns, and practical mappings needed to support synthetic patient generation and interoperability across the continuum of spaceflight health data, from pre-launch screening to in-flight telemetry to post-mission rehabilitation.

The published guide is at https://awatson1978.github.io/aerospace-medicine-ig.

![AstronauticalHealthRecordEcosystem](input/images/AstronauticalHealthRecordEcosystem.jpg)

### Installation

```bash
# install the SUSHI FSH compiler (requires Node.js)
npm install -g fsh-sushi
sushi --help

# clone the repository
git clone https://github.com/awatson1978/aerospace-medicine-ig
cd aerospace-medicine-ig

# download the IG Publisher and build the guide
./_updatePublisher.sh
./_genonce.sh

# open the documentation (assuming Mac + Chrome)
open output/index.html
```

### Local quality checks

Before publishing, run the static checks (Python 3 standard library only, no SUSHI or publisher needed) and then a full SUSHI compile:

```bash
python3 scripts/qc_check.py      # pages, links, FSH, and NDJSON checks
python3 scripts/check_links.py   # relative link targets in pagecontent
sushi .                          # compile FSH to fsh-generated/
./_genonce.sh                    # full IG Publisher build
```

`qc_check.py` exits with status 1 when it reports any finding, so it can gate a publish step.

### Repository layout

- `input/fsh/` - FHIR Shorthand (FSH) profiles, extensions, code systems, value sets, and example instances
- `input/pagecontent/` - narrative pages (Markdown)
- `input/images/` - figures and the NDJSON download bundles
- `scripts/` - QC and NDJSON generation scripts
- `sushi-config.yaml` - IG metadata, page list, and menu

### License

Copyright 2022-2026 The MITRE Corporation and Abigail Watson. This Implementation Guide is licensed under the Creative Commons Attribution-NoDerivatives 4.0 International License (CC BY-ND 4.0): it may be shared and implemented with attribution, but modified versions may not be redistributed. See https://creativecommons.org/licenses/by-nd/4.0/ and the `LICENSE.md` file.

### Release Statement

Approved for Public Release; Distribution Unlimited. Public Release Case Number 25-1124.
