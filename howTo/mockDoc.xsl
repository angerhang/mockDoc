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
	<body>
		<head>
			<title>MockDoc HTML SAMPLE Output</title>
		</head>
		<xsl:apply-templates/>
	</body>
	</html>
</xsl:template>	

<xsl:template match="mock:section">
	<section>
	<span style="font-size:200%">
		<xsl:apply-templates select="mock:title"/>
	</span>
	<xsl:apply-templates select="mock:p"/>
	<xsl:apply-templates select="mock:subsection"/>
	</section>
</xsl:template>

<xsl:template match="mock:subsection">
	<subsection>
	<span style="font-size:150%">
		<xsl:apply-templates select="mock:title"/>
	</span>
	<xsl:apply-templates select="mock:paragraph"/>
	</subsection>
</xsl:template>

<xsl:template match="mock:paragraph">
	<paragraph>
	<span style="font-size:120%">
	<xsl:apply-templates select="mock:title"/>
	</span>
	<xsl:apply-templates select="mock:p"/>
	</paragraph>
</xsl:template>

<xsl:template match="mock:p">
	<p>
	<xsl:value-of select="."/>
	</p>
</xsl:template>

<xsl:template match="mock:title">
	Title:
	<xsl:value-of select="."/>
	<br />
</xsl:template>


</xsl:stylesheet>
