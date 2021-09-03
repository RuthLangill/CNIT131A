<?xmlversion="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
<html>
  <head>
    <title> List of clients </title>
  </head>
  <body>
  <h1> List of Clients </h1>
  <p>
     <tr>
          <td><xsl:value-of select="Name"/></td>
          <td><xsl:value-of select="Phone"/></td>
          <td><xsl:value-of select="E-mail"/></td>
          <td><xsl:value-of select="Account_Total"/></td>
        </tr>
  </p>
  </body>
  </html>

</xsl:template>
</xsl:stylesheet>