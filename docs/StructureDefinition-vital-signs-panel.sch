<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile observation-vitalspanel
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:dataAbsentReason) &lt;= 0">dataAbsentReason: maximum cardinality of 'dataAbsentReason' is 0</sch:assert>
      <sch:assert test="count(f:bodySite) &lt;= 0">bodySite: maximum cardinality of 'bodySite' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 0">method: maximum cardinality of 'method' is 0</sch:assert>
      <sch:assert test="count(f:specimen) &lt;= 0">specimen: maximum cardinality of 'specimen' is 0</sch:assert>
      <sch:assert test="count(f:device) &lt;= 0">device: maximum cardinality of 'device' is 0</sch:assert>
      <sch:assert test="count(f:referenceRange) &lt;= 0">referenceRange: maximum cardinality of 'referenceRange' is 0</sch:assert>
      <sch:assert test="count(f:component) &lt;= 0">component: maximum cardinality of 'component' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
