---
title: Downloads
layout: default
active: downloads
---

### Package File

The following package file includes an NPM package file used by many of the FHIR tools.  It contains all the value sets, profiles, extensions, list of pages and urls in the IG, etc defined as part of the this version of the Implementation Guides. This file should be the first choice whenever generating any implementation artifacts since it contains all of the rules about what makes the profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation. See the overview on validating [FHIR profiles and resources]({{site.data.fhir.path}}validation.html):

- [Package](package.tgz){::download="true"}


### Registry Collections

Data collection from news sources and otherwise in public domain is provided below.  The following bulk-data files can be loaded directly into a JSON collection or table, using a tool such as [Mongo Compass](https://www.mongodb.com/products/compass).  

- [SpaceHealth.Conditions.ndjson](SpaceHealth.Conditions.ndjson)
- [SpaceHealth.Devices.ndjson](SpaceHealth.Devices.ndjson)
- [SpaceHealth.Organizations.ndjson](SpaceHealth.Organizations.ndjson)
- [SpaceHealth.Patients.StarTrek.ndjson](SpaceHealth.Patients.StarTrek.ndjson)
- [SpaceHealth.Patients.Astronauts.ndjson](SpaceHealth.Patients.Astronauts.ndjson)
- [SpaceHealth.Procedures.ndjson](SpaceHealth.Procedures.ndjson)


### Examples

all the examples that are used in this Implementation Guide available for download:

- [XML](space-health-registry-examples.xml.zip)
- [JSON](space-health-registry-examples.json.zip)


<!-- ### Postman Examples

Examples of the API calls in this guide are available in [Postman](https://www.postman.com/) format.

- [Postman Collection](NationalDirectory.PostmanCollection.json.zip)

### Downloadable Copy of Entire Specification

A downloadable version of this IG is available so it can be hosted locally:

- [Downloadable Copy](full-ig.zip) -->
