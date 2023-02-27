<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:key name = "itemname-find" match = "pharma" use = "itemname"/>
<xsl:template match = "/">
<html>
<body>
<h2>Pharma details</h2>
<table border = "2">
<tr bgcolor = "brown">
<th>ID No</th>
<th>Item Name</th>
<th>ItemPrice</th>
<th>Net Qty</th>
<th>Item Discount</th>
</tr>
<xsl:for-each select = "key('itemname-find', 'Calpol')">
<tr>
<td><xsl:value-of select = "@idno"/></td>
<td><xsl:value-of select = "itemprize"/></td>
<td><xsl:value-of select = "netqty"/></td>
<td><xsl:value-of select = "itemdiscount"/></td>
<td><xsl:value-of select = "itemname"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>