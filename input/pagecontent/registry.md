


#### Installing the Reference Implementation  

The following instructions are for installing a honeycomb node with the Space Health Registry module.  This can be used as a LunaNet node, the basis for a space habitat medical home, a vehicular medical-aware flight recorder, etc.  

```bash
# download the Meteor on FHIR Community Server
git clone http://github.com/clinical-meteor/node-on-fhir

cd node-on-fhir
cd packages

# install the FHIR server (with OAuth, UDAP, etc)
git clone https://www.github.com/clinical-meteor/vault-server

# install the Space Health Registry plugin
git clone https://..../space-health-registry

# return to the application root
cd ..

# install dependencies
meteor npm install

# run Node on FHIR Community Server
meteor run 

# run Node on FHIR using a custom settings file
meteor run --settings configs/settings.nodeonfhir.json

# add the FHIR server 
meteor add clinical:vault-server

# run the FHIR server
meteor run --settings packages/vault-server/configs/settings.fhir.server.json

# test that the FHIR server starts and is initialized (second terminal)
curl http://localhost:3000/metadata
curl http://localhost:3000/baseR4/metadata

# test a FHIR endpoint  (second terminal)
curl http://localhost:3000/baseR4/Organization

# permanently add the Space Health Registry plugin to the local build
meteor add mitre:space-health-registry

# run Node on FHIR using a custom settings file
meteor run --settings packages/space-health-registry/configs/settings.registry.json 
```


### Loading Data

Data collection from news sources and otherwise in public domain is provided below.  The following bulk-data files can be loaded directly into a JSON collection or table, using a tool such as [Mongo Compass](https://www.mongodb.com/products/compass).  

- [SpaceHealth.Conditions.ndjson](SpaceHealth.Conditions.ndjson)
- [SpaceHealth.Devices.ndjson](SpaceHealth.Devices.ndjson)
- [SpaceHealth.Organizations.ndjson](SpaceHealth.Organizations.ndjson)
- [SpaceHealth.Patients.StarTrek.ndjson](SpaceHealth.Patients.StarTrek.ndjson)
- [SpaceHealth.Patients.Astronauts.ndjson](SpaceHealth.Patients.Astronauts.ndjson)
- [SpaceHealth.Procedures.ndjson](SpaceHealth.Procedures.ndjson)





