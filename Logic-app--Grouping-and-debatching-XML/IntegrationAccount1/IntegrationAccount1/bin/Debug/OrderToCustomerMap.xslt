<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0" version="1.0" xmlns:s0="http://IntegrationAccount1.OrderSchemaFF" xmlns:ns0="http://IntegrationAccount1.Schema1">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Orders" />
  </xsl:template>
  <xsl:template match="/s0:Orders">
    <ns0:Customers>
      <xsl:for-each select="Order[generate-id(.)=generate-id(key('groups',CustomeId))]">


  <Customer>
    <CustomerId>
      <xsl:value-of select="CustomeId/text()" />
    </CustomerId>
    <xsl:for-each select="key('groups',CustomeId)">
    <Order>
      <!-- Another loop... -->
      
        <OrderId>
          <xsl:value-of select="OrderID" />
        </OrderId>
        <Price>
          <xsl:value-of select="Price" />
        </Price>
        <Quantity>
          <xsl:value-of select="Quantity" />
        </Quantity>
     
    </Order>
    </xsl:for-each>
  </Customer>
</xsl:for-each>
    </ns0:Customers>
  </xsl:template>
  <xsl:key name="groups" match="Order" use="CustomeId" />
</xsl:stylesheet>