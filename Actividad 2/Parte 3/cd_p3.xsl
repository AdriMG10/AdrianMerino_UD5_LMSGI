<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <body>
        <h1>Lista de CD Música</h1>
            <table border="1">
                <tr bgcolor="#457689">
                    <th>Sello</th>
                    <th>Canciones</th>
                    <th>Duración</th>
                </tr>
                <xsl:for-each select="listaCD/cd">
                    <xsl:if test="sello='MÉCÈN Ent.'">
                        <tr>
                            <td><xsl:value-of select="sello"/></td>
                            <td>
                                <xsl:for-each select="cancion">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="cancion/@tiempo">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:if>
                </xsl:for-each>    
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>