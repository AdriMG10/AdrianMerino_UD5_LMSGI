<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="/notas">
        <xhtml>
            <head>
                <style type="text/css">
                    h1 {
                        font-family:'Verdana';
                        color:black; 
                        font-weight:bold; 
                        text-align:center;
                    }
					.color1 {background-color:khaki;}
					.color2 {background-color:lavenderblush;}
					.color3 {background-color:lightsteelblue;}
					td {
                        text-align: left;
                        border: 1px solid black;
                        padding: 10px;
                    }
				</style>
                <title>Actividad 4 - ED - UD5</title>
            </head>
            <body>
                <div style="float:none; position:absolute; width:100%;">
                    <h1>Calificaciones Convocatoria Junio</h1>
                    <table border="10" align="center">
                        <tr class="color1">
                            <th colspan="3">Datos</th>
                            <th colspan="3">Notas</th>
                        </tr>
                        <tr class="color2">
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Cuestionarios</th>
                            <th>Tareas</th>
                            <th>Examen</th>
                            <th>Final</th>
                        </tr>
                        <xsl:apply-templates select="./alumno"/>
                    </table>
                </div>
            </body>
        </xhtml>
    </xsl:template>
    <xsl:template match="//alumno">
        <xsl:if test="./@convocatoria='Junio'">
            <tr class="color3">
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="apellidos"/></td>
                <td><xsl:value-of select="cuestionarios"/></td>
                <td><xsl:value-of select="tareas"/></td>
                <td><xsl:value-of select="examen"/></td>
                <td>
                    <xsl:choose>
                        <xsl:when test="final&gt;=9">
                            <font color="blue">Sobresaliente</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=7">
                            <font color="darkcyan">Notable</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=6">
                            <font color="black">Bien</font>
                        </xsl:when>
                        <xsl:when test="final&gt;=5">
                            <font color="orange">Suficiente</font>
                        </xsl:when>
                        <xsl:otherwise>
                            <font color="red">Suspenso</font>
                        </xsl:otherwise>
                    </xsl:choose>
                </td>
            </tr>
        </xsl:if>
    </xsl:template>
    <xsl:template match="matricula"/>
</xsl:stylesheet>