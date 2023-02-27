<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<xsl:choose>
<xsl:when test="element-available('xsl:if')">
<p>xsl:element is supported in processor.</p>
</xsl:when>
<xsl:otherwise>
<p>xsl:Element is not supported.</p>
</xsl:otherwise>
</xsl:choose>
<xsl:choose>
<xsl:when test="element-available('xsl:function')">
<p>xsl:function is not supported.</p>
</xsl:when>
<xsl:otherwise>
<p>xsl: exit the code.</p>
</xsl:otherwise>
</xsl:choose>
</body>
</html>
</xsl:template>
</xsl:stylesheet>