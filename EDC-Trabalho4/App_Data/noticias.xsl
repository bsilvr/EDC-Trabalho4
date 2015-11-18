<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="rss">
    <channel>
      <xsl:for-each select="//item">
        <item>
          <xsl:attribute name="title">
            <xsl:value-of select="title"/>
          </xsl:attribute>
          <xsl:attribute name="link">
            <xsl:value-of select="link"/>
          </xsl:attribute>
          <xsl:attribute name="description">
            <xsl:value-of select="description"/>
          </xsl:attribute>
          <xsl:attribute name="pubDate">
            <xsl:value-of select="pubDate"/>
          </xsl:attribute>
          <xsl:attribute name="comments">
            <xsl:value-of select="comments"/>
          </xsl:attribute>
          <xsl:attribute name="source">
            <xsl:value-of select="source"/>
          </xsl:attribute>
          <xsl:attribute name="image">
            <xsl:value-of select="image/url"/>
          </xsl:attribute>
        </item>
      </xsl:for-each>
    </channel>
  </xsl:template>
</xsl:stylesheet>