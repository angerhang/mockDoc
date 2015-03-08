<?xml version="1.0" encoding="utf-8"?>
<!-- customized for mockDoc conversion -->

<!-- style sheet declration -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:mock = "https://kwarc.info/projects/mockDoc"
    exclude-result-prefixes="mock">

<!-- associate the template with the root of xml -->
<xsl:template match="/">
  <html>
    <head>
      <xsl:comment>automatically generated, handle with care</xsl:comment>
    </head>
    <xsl:apply-templates/>
  </html>
</xsl:template>

<xsl:template match="mock:document">
  <body>
    <xsl:apply-templates/>
  </body>
</xsl:template>

<xsl:template match="mock:section">
  <h1>
    <xsl:value-of select="mock:title" />
  </h1>
  <p>
    <xsl:value-of select="mock:p" />
  </p>
  <xsl:for-each select="mock:subsection">
    <h2>
      <xsl:value-of select="mock:title" />
    </h2>
    <xsl:for-each select="mock:paragraph">
      <h3>
	<xsl:value-of select="mock:title" />
      </h3>
      <p>
	<xsl:value-of select="mock:p" />
      </p>
    </xsl:for-each>
  </xsl:for-each>
</xsl:template>	

</xsl:stylesheet>
