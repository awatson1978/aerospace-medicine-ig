<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Procedure
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="count(f:extension[@url = 'https://mitre.org/fhir/space-health/StructureDefinition/treatment-table']) &lt;= 1">extension with URL = 'https://mitre.org/fhir/space-health/StructureDefinition/treatment-table': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure']) &lt;= 1">extension with URL = 'https://mitre.org/fhir/space-health/StructureDefinition/maximum-pressure': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://mitre.org/fhir/space-health/StructureDefinition/treatment-duration']) &lt;= 1">extension with URL = 'https://mitre.org/fhir/space-health/StructureDefinition/treatment-duration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration']) &lt;= 1">extension with URL = 'https://mitre.org/fhir/space-health/StructureDefinition/oxygen-concentration': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
