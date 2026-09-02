<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile NeutralBuoyancySession
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/session-duration']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/session-duration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/maximum-depth']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/maximum-depth': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/environmental-conditions']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/environmental-conditions': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/suit-configuration']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/suit-configuration': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/crew-coordination']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/crew-coordination': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-emergency-response-ext']) &lt;= 1">extension with URL = 'https://awatson1978.github.io/aerospace-medicine-ig/StructureDefinition/underwater-emergency-response-ext': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
