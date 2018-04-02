# Logic-app--Grouping-and-debatching-XML

This application demonstrates an example of debatching and grouping in logic app.

in this example, The orders from different customers are grouped based on the customer name and sent to the corresponding customer's file location.


You can deploy the logic app directly using "LogicAppEAItemplate.json" file along wiht parameter file "paramfile.js"

You can test the application using the test file "OderFile.txt"

======================================================================================
The below concepts are used:

Flat file schema wizard: To generate a schema from the flat file - OrderSchemaFF.xsd

XSLTMapping: to group the orders into respective customer, I have used muencian grouping method in xslt - OrderToCustomerMap.xslt

Integration account: To store the flat file schema, customer schema and xslt 

Logic app: To implement flat file decoding, execute transformationa and perform routing based on xpath.

===================================================================================

The scehams and maps can be edited from the visual studio project - IntegrationAccount1.sln


