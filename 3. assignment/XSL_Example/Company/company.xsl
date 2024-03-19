<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="brands">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
                <title>Company</title>
            </head>
            <body>
                <h1>Brands List</h1> 
                <table class="table table-bordered table-hover"> 
                    <tr> 
                        <th>No</th>
                        <th>Name</th> 
                        <th>Amount</th> 
                        <th>Loan</th>
                        <th>Rent</th>
                    </tr> 
                    <!-- Apply the following template to each 'product' 
                    element --> 
                    <xsl:apply-templates select="brand"/> 
                </table> 
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="brand"> 
        <tr> 
            <td>
                <xsl:value-of select="position()"/>
            </td>
            <td> 
                <xsl:value-of select="name"/> 
            </td> 
            <td> 
                <xsl:value-of select="amount"/> 
            </td> 
            <td> 
                <xsl:value-of select="loan"/> 
            </td> 
            <td> 
                <xsl:value-of select="rent"/> 
            </td> 
        </tr> 
    </xsl:template> 

</xsl:stylesheet>
