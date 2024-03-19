<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0"> 
    <!-- Define a template for the root element 'products' --> 
    <xsl:template match="products"> 
        <html> 
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
            </head>
            <body> 
                <h1>Product List</h1> 
                <table class="table table-bordered table-hover"> 
                    <tr> 
                        <th>No</th>
                        <th>Name</th> 
                        <th>Price</th> 
                    </tr> 
                    <!-- Apply the following template to each 'product' 
                    element --> 
                    <xsl:apply-templates select="product"/> 
                    
                    <xsl:for-each select="product"> 
                        <!-- Transformation rules for 'product' element go here --> 
                        <xsl:if test="price > 15"> 
                            <!-- Transformation rules for products with price > 50 go here 
                            --> 
                            <tr> 
                                <td>
                                    <xsl:value-of select="position()"/>
                                </td>
                                <td> 
                                    <xsl:value-of select="name"/> 
                                </td> 
                                <td> 
                                    <xsl:value-of select="price"/> 
                                </td> 
                            </tr> 
                        </xsl:if>      
                    </xsl:for-each>
                    
                    
                </table> 
            </body> 
        </html> 
    </xsl:template> 

    <!-- Define a template for 'product' elements --> 
    <xsl:template match="product"> 
        <tr> 
            <td>
                <xsl:value-of select="position()"/>
            </td>
            <td> 
                <xsl:value-of select="name"/> 
            </td> 
            <td> 
                <xsl:value-of select="price"/> 
            </td> 
        </tr> 
    </xsl:template> 

</xsl:stylesheet> 
