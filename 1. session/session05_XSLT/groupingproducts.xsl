<!-- Example XSLT stylesheet --> 
<!-- Define the XML namespace for XSLT --> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"> 
    <!-- Define a template for the root element 'products' --> 
    <xsl:template match="/"> 
        <html> 
            <body> 
                <h1>Product List</h1> 
                <table border="true"> 
                    <caption>Expensive Products</caption> 
                    <tr> 
                        <th>Name</th> 
                        <th>Price</th> 
                    </tr> 
                    <!-- Apply the following template to each 'product' 
                    element --> 
                    <xsl:for-each select="products/product[price &gt; 50]"> 
                        <tr> 
                            <td>
                                <xsl:value-of select="name"/>
                            </td> 
                            <td>
                                <xsl:value-of select="price"/>
                            </td> 
                        </tr> 
                    </xsl:for-each> 
                </table> 
                <br> 
                </br> 
                <table border="true"> 
                    <caption>Affordable Products</caption> 
                    <tr> 
                        <th>Name</th> 
                        <th>Price</th> 
                    </tr> 
                    <!-- Filter and display affordable products --> 
                    <xsl:for-each select="products/product[price &lt;= 50]"> 
                        <tr> 
                            <td>
                                <xsl:value-of select="name"/>
                            </td> 
                            <td>
                                <xsl:value-of select="price"/>
                            </td> 
                        </tr> 
                    </xsl:for-each> 
                </table> 
            </body> 
        </html> 
    </xsl:template> 
</xsl:stylesheet>