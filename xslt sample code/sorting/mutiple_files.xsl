<xsl:variable name="letter" select="PriceCode">
<xsl:value-of select="$prices/Code[Letter=$letter]/Price"/>

This extracts the value of the PriceCode from the input document into a variable called $letter. Then, it uses the $letter variable to identify a particular price using an XPath query. Below is a snippet of our XSLT template that will put all of this together.
<xsl:variable name="prices" select="document(‘Price.xml’)/PriceCodes"/>

<xsl:template match="Item">
<xsl:variable name="letter" select="PriceCode">
<Item>
  <SKU><xsl:value-of select="SKU"></SKU>
  <Quantity><xsl:value-of select="Quantity"></Quantity>
  <Price><xsl:value-of select="$prices/Code[Letter=$letter]/Price"/> </Price>
</Item>
</xsl:template>