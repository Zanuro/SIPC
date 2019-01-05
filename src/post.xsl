<?xml version='1.0' ?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
   <HTML>
    <BODY>
     <B>Desafios de Programación</B>
     <BR/>
     <BR/>
     <TABLE border="1">
       <TR>
         <th>Nombre</th>
         <th>Descripción</th>
         <th>Dificultad</th>
         <th>Fecha Inicio</th>
         <th>Fecha Final</th>
         <th>%Acierto</th>
       </TR>
      <xsl:for-each  select="Desafios/Challenge">
        <xsl:sort order="descending" select="Successrate"/>
       <TR>
        <TD><xsl:value-of select="Name"/></TD>
        <TD><xsl:value-of select="Text"/></TD>
        <xsl:if test= "Difficulty='Facil'">
        <TD bgcolor="#008000"><xsl:value-of select="Difficulty"/></TD>
      </xsl:if>
      <xsl:if test= "Difficulty='Mediana'">
        <TD bgcolor="#fb7702"><xsl:value-of select="Difficulty"/></TD>
      </xsl:if>
      <xsl:if test= "Difficulty='Dificil'">
        <TD bgcolor="#fb2e02"><xsl:value-of select="Difficulty"/></TD>
      </xsl:if>
        <TD><xsl:value-of select="sDate"/></TD>
        <TD><xsl:value-of select="eDate"/></TD>
        <TD><xsl:value-of select="Successrate"/>%</TD>
        <BR></BR>
       </TR>
      </xsl:for-each>
     </TABLE>
    </BODY>
   </HTML>
  </xsl:template>
 </xsl:stylesheet>
