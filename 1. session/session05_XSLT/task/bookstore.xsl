<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html> 
            <body> 
                <h2>Bookstore Catalog</h2> 
                <table border="1"> 
                    <tr bgcolor="#9acd32"> 
                        <th>Title</th> 
                        <th>Author</th> 
                        <th>Year</th> 
                    </tr> 
                    <xsl:for-each select="/bookstore/book">
                        <tr> 
                            <td>
                                
                                <xsl:value-of select="title"/>
                            </td> 
                            <td>                                
                                
                                <xsl:value-of select="author"/>
                            </td> 
                            <td>                                
                                <xsl:value-of select="year"/>
                            </td> 
                        </tr> 
                    </xsl:for-each>
                   
                </table> 
                <hr/>
                 <!--display the books created before 1920 and after 1920--> 
                <h2>The books created before 1920</h2>
                  <table border="1"> 
                    <tr bgcolor="#9acd32"> 
                        <th>Title</th> 
                        <th>Author</th> 
                        <th>Year</th> 
                    </tr> 
                    <xsl:for-each select="/bookstore/book[year &lt;= 1920]">
                        <tr> 
                            <td>
                                
                                <xsl:value-of select="title"/>
                            </td> 
                            <td>                                
                                
                                <xsl:value-of select="author"/>
                            </td> 
                            <td>                                
                                <xsl:value-of select="year"/>
                            </td> 
                        </tr> 
                    </xsl:for-each>
                   
                </table> 
                <h2>The books created after 1920</h2>
                  <table border="1"> 
                    <tr bgcolor="#9acd32"> 
                        <th>Title</th> 
                        <th>Author</th> 
                        <th>Year</th> 
                    </tr> 
                    <xsl:for-each select="/bookstore/book[year > 1920]">
                        <tr> 
                            <td>
                                
                                <xsl:value-of select="title"/>
                            </td> 
                            <td>                                
                                
                                <xsl:value-of select="author"/>
                            </td> 
                            <td>                                
                                <xsl:value-of select="year"/>
                            </td> 
                        </tr> 
                    </xsl:for-each>
                   
                </table> 
            </body> 
        </html> 
    </xsl:template>

</xsl:stylesheet>
