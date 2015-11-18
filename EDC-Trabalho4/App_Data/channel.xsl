<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="rss">
    <channel>
      <xsl:attribute name="title">
        <xsl:value-of select="channel/title"/>
      </xsl:attribute>
      <xsl:attribute name="link">
        <xsl:value-of select="channel/link"/>
      </xsl:attribute>
      <xsl:attribute name="description">
        <xsl:value-of select="channel/description"/>
      </xsl:attribute>
      <xsl:attribute name="language">
        <xsl:value-of select="channel/language"/>
      </xsl:attribute>
      <xsl:attribute name="managingEditor">
        <xsl:value-of select="channel/managingEditor"/>
      </xsl:attribute>
      <xsl:attribute name="webMaster">
        <xsl:value-of select="channel/webMaster"/>
      </xsl:attribute>
      <xsl:attribute name="lastBuildDate">
        <xsl:value-of select="channel/lastBuildDate"/>
      </xsl:attribute>
      <xsl:attribute name="category">
        <xsl:value-of select="channel/category"/>
      </xsl:attribute>
    </channel>
  </xsl:template>



</xsl:stylesheet>