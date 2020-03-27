<?xml version="1.0" ?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xi="http://www.w3.org/2001/XInclude"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei">
<xsl:output method="xml" indent="yes"/>

<xsl:template match="div">
    <xsl:copy copy-namespaces="no">
      <xsl:attribute name="xml:id">
        <xsl:value-of select="generate-id()"></xsl:value-of>
      </xsl:attribute>
      <xsl:apply-templates select="./@* | node()"/>
    </xsl:copy>
  </xsl:template>


  <xsl:template match="ab">
    <xsl:copy copy-namespaces="no">
      <xsl:attribute name="xml:id">
        <xsl:value-of select="generate-id()"></xsl:value-of>
      </xsl:attribute>
      <xsl:apply-templates select="./@* | node()"/>
    </xsl:copy>
  </xsl:template>

    <!-- IdentityTransform -->

    <xsl:template match="@* | node()">
        <xsl:copy copy-namespaces="no">
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
