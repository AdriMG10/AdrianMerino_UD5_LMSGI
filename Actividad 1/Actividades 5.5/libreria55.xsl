<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="libreria">
        <h1>Mi biblioteca personal</h1>
            <table>
                <tr bgcolor="#457689">
                    <th>ISBN</th>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Editor</th>
                    <th>Número Páginas</th>
                    <th>Precio</th>
                </tr>
                <xsl:apply-templates select="libro"/>
            </table>
    </xsl:template>
    <xsl:template match="libro">
        <tr>
            <td><xsl:value-of select="isbn"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="editor"/></td>
            <xsl:choose>
                <xsl:when test="numPaginas &gt; 150">
                    <xsl:apply-templates select="numPaginas"/>
                </xsl:when>
                <xsl:otherwise>
                    <td>
                        <xsl:value-of select="numPaginas"/>
                    </td>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:value-of select="precio"/> </td>
        </tr>
    </xsl:template>
    <xsl:template match="numPaginas">
        <td bgcolor="red">
            <xsl:value-of select="."/>
        </td>
    </xsl:template>
</xsl:stylesheet>