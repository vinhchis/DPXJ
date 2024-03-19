<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:ass="https://aptech.fpt.edu.vn/as"
                version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="invoice"> 
        <html> 
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
                <style>
                    header {
                    text-align: right;
                    }
                    header table {
                    display: inline-block;
                    }
                    header table td {
                    text-align: right;
                    }
                </style>
            </head>
            <body> 
                <header>
                    <h1>Invoice</h1>
                    <div class="info">
                        <table>
                            <tr>
                                <td>OrderNo: </td>
                                <td>
                                    <xsl:value-of select="ass:order/@orderNo"/>  
                                </td>
                            </tr>
                            <tr>
                                <td>OrderDate: </td>
                                <td> 
                                    <xsl:value-of select="ass:date"/> 
                                </td>
                            </tr>
                            <tr>
                                <td>Customer: </td>
                                <td>
                                    <xsl:value-of select="ass:customer/ass:name"/> 
                                </td>
                            </tr>
                        </table>
                        
                     
                    </div> 
                </header>
               
                <table class="table table-bordered table-hover"> 
                    <tr> 
                        <th>No</th>
                        <th>Code</th>
                        <th>Name</th> 
                        <th>Quantity</th> 
                        <th>Price</th>
                        <th>Amount</th>
                    </tr> 
                    <!-- Apply the following template to each 'product' 
                    element --> 
                    <!--<xsl:apply-templates select="ass:items"/>--> 
                    
                    <!-- Transforming XML documents and display with sorted Code -->
                    <!--                    <xsl:for-each select="ass:items/ass:item">
                        <xsl:sort select="ass:code" data-type="text" order="descending"/>
                        <tr> 
                            <td>
                                <xsl:value-of select="position()"/>
                            </td>
                            <td> 
                                <xsl:value-of select="ass:code"/> 
                            </td> 
                            <td> 
                                <xsl:value-of select="ass:name"/> 
                            </td> 
                            <td> 
                                $<xsl:value-of select="ass:quality"/> 
                            </td> 
                            <td> 
                                $<xsl:value-of select="ass:price"/> 
                            </td> 
                            <td> 
                                $<xsl:value-of select="ass:quality * ass:price"/>
                            </td> 
                        </tr> 
                    </xsl:for-each>-->
                    
                    <!-- Filter Price > 500 -->
                    <xsl:for-each select="ass:items/ass:item[ass:price>500]">
                        <tr> 
                            <td>
                                <xsl:value-of select="position()"/>
                            </td>
                            <td> 
                                <xsl:value-of select="ass:code"/> 
                            </td> 
                            <td> 
                                <xsl:value-of select="ass:name"/> 
                            </td> 
                            <td> 
                                <xsl:value-of select="ass:quality"/> 
                            </td> 
                            <td> 
                                <xsl:value-of select="ass:price"/> 
                            </td> 
                            <td> 
                                <xsl:value-of select="ass:amount"/> 
                            </td> 
                        </tr> 
                    </xsl:for-each>
                </table> 
            </body> 
        </html> 
    </xsl:template> 
    
    <xsl:template match="ass:item"> 
        <tr> 
            <td>
                <xsl:value-of select="position()"/>
            </td>
            <td> 
                <xsl:value-of select="ass:code"/> 
            </td> 
            <td> 
                <xsl:value-of select="ass:name"/> 
            </td> 
            <td> 
                $<xsl:value-of select="ass:quality"/> 
            </td> 
            <td> 
                $<xsl:value-of select="ass:price"/> 
            </td> 
            <td> 
                $<xsl:value-of select="ass:quality * ass:price"/>
            </td> 
        </tr> 
    </xsl:template> 
    
    
</xsl:stylesheet>
