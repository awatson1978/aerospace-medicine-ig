---
title: Downloads
layout: default
active: downloads
---

### Package File

The following package file includes an NPM package file used by many of the FHIR tools.  It contains all the value sets, profiles, extensions, list of pages and urls in the IG, etc defined as part of the this version of the Implementation Guides. This file should be the first choice whenever generating any implementation artifacts since it contains all of the rules about what makes the profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation. See the overview on validating [FHIR profiles and resources]({{site.data.fhir.path}}validation.html):

- [Package](package.tgz){::download="true"}


### General Data Model

Terminology and example resources for the astronaut-health profiles (fitness, mental health, nutrition, radiation, diving, planetary protection, telemedicine and related topics), using SNOMED CT, LOINC and UCUM alongside the code systems defined in this guide. Each file is newline-delimited JSON (NDJSON): one FHIR resource per line, suitable for bulk import.

- [SpaceHealth.CodeSystems.ndjson](SpaceHealth.CodeSystems.ndjson)
- [SpaceHealth.ValueSets.ndjson](SpaceHealth.ValueSets.ndjson)
- [SpaceHealth.Conditions.ndjson](SpaceHealth.Conditions.ndjson)
- [SpaceHealth.Devices.ndjson](SpaceHealth.Devices.ndjson)
- [SpaceHealth.Locations.ndjson](SpaceHealth.Locations.ndjson)
- [SpaceHealth.Observations.ndjson](SpaceHealth.Observations.ndjson)
- [SpaceHealth.Organizations.ndjson](SpaceHealth.Organizations.ndjson)
- [SpaceHealth.Procedures.ndjson](SpaceHealth.Procedures.ndjson)

### NASA Medical Requirements

Questionnaires transcribed from the NASA Medical Requirements Integration Documents (MRID). See [NASA Medical Requirements](nasa-medical-requirements.html).

- [NASA.Questionnaires.ndjson](NASA.Questionnaires.ndjson)
- [NASA.CodeSystems.ndjson](NASA.CodeSystems.ndjson)
- [NASA.ValueSets.ndjson](NASA.ValueSets.ndjson)

### Artemis

- [Artemis.Locations.ndjson](Artemis.Locations.ndjson)
- [Artemis.CodeSystems.ndjson](Artemis.CodeSystems.ndjson)
- [Artemis.ValueSets.ndjson](Artemis.ValueSets.ndjson)
- [Artemis.Organizations.ndjson](Artemis.Organizations.ndjson)  
- [Artemis.Devices.ndjson](Artemis.Devices.ndjson)
- [Artemis.NutritionProducts.ndjson](Artemis.NutritionProducts.ndjson)
- [Artemis.ActivityDefinitions.ndjson](Artemis.ActivityDefinitions.ndjson)
- [Artemis.PlanDefinitions.ndjson](Artemis.PlanDefinitions.ndjson)
- [Artemis.Goals.ndjson](Artemis.Goals.ndjson)

### Mars Direct

- [MarsDirect.CodeSystems.ndjson](MarsDirect.CodeSystems.ndjson)  
- [MarsDirect.ValueSets.ndjson](MarsDirect.ValueSets.ndjson)  
- [MarsDirect.Organizations.ndjson](MarsDirect.Organizations.ndjson)  
- [MarsDirect.Devices.ndjson](MarsDirect.Devices.ndjson)  
- [MarsDirect.Locations.ndjson](MarsDirect.Locations.ndjson)  

### Commercial Space

- [CommercialSpace.Organizations.ndjson](CommercialSpace.Organizations.ndjson)  
- [CommercialSpace.Devices.ndjson](CommercialSpace.Devices.ndjson)  



### Fictional Patients

Eight Patient resources named after Star Trek characters, used as example subjects throughout the guide. They are tagged `HTEST` and carry `meta.source` ending in `/provenance/fictional`; do not load them into a production system.

- [SpaceHealth.Patients.StarTrek.ndjson](SpaceHealth.Patients.StarTrek.ndjson)



### Examples

All the examples that are used in this Implementation Guide available for download:

- [XML](examples.xml.zip)
- [JSON](examples.json.zip)

