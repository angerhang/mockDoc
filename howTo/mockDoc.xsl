<?xml version="1.0" encoding="utf-8"?>
<!-- customized for mockDoc conversion -->

<!-- style sheet declration -->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:mock = "https://kwarc.info/projects/mockDoc"
    exclude-result-prefixes="mock">

<!-- associate the template with the root of xml -->
<xsl:template match="/">
<<<<<<< HEAD
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
||||||| merged common ancestors
	<html>
	<body>
		<xsl:for-each select="mock:document/mock:section">
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
		</xsl:for-each>
	</body>
	</html>
=======
	<html>
	<body>
		<head>
			<title>MockDoc HTML SAMPLE Output</title>
		</head>
		<xsl:apply-templates/>
	</body>
	</html>
>>>>>>> 1346f220c56a53b31cc546b753b6d8188429005d
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
