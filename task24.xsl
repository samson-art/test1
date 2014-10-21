<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"/>

<xsl:template match="*">
	<xsl:if test="local-name()=book or local-name()=author">
		<xsl:element name="{local-name()}">
			<xsl:copy-of select="@title|@year|@name"/>
		</xsl:element>
	</xsl:if>
</xsl:template>

<xsl:template match="/">
	<xsl:element name="library">
		<xsl:apply-templates />
	</xsl:element>
</xsl:template>

</xsl:stylesheet>

