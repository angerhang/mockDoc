<?xml version="1.0" encoding="utf-8"?>
<!-- customized for mockDoc conversion -->

<!-- style sheet declration -->
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:mock = "https://kwarc.info/projects/mockDoc"
		exclude-result-prefixes="mock">

<xsl:template match="/">
  <html>
    <head><xsl:comment>automatically generated, handle with care</xsl:comment></head>
    <xsl:apply-templates/>
  </html>
</xsl:template>

<xsl:template match="mock:document">
  <body><xsl:apply-templates/></body>
</xsl:template>

<!-- sectioning commands do not leave a trace, we deal with the headers below -->
<xsl:template match="mock:section|mock:subsection|mock:paragraph">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="mock:section/mock:title">
  <h1><xsl:apply-templates/></h1>
</xsl:template>

<xsl:template match="mock:subsection/mock:title">
  <h2><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="mock:paragraph/mock:title">
  <h3><xsl:apply-templates/></h3>
</xsl:template>

<!-- caution, we we are chaning the namespace here --> 
<xsl:template match="mock:p">
  <p><xsl:apply-templates/></p>
</xsl:template>
</xsl:stylesheet>
