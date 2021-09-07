<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
<html>
  <head>
    <title> List of clients </title>
    <style>
    body{
        text-align: center;
        margin-top: 20px;
        padding: 40px;
    }
    table {
        border: 1px solid blue;
        width: 100&#37;;
    }
    td {
        text-align: center;
        border: 1px solid blue;
    }
    .account {
        text-align:right;
    }
    #lessThanAccount {
        color:#FF0000; font-weight:bold;
    }
    </style>
  </head>
  <body>
  <heading>
  <h1> List of Clients </h1>
  </heading>
    <table>
      <th>Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Account Total</th>
    <xsl:for-each select="Accounts/Client">
    <xsl:sort select="Name/Last"/>
       <tr>
          
          <td><xsl:value-of select="Name"/></td>
          <td><xsl:value-of select="Phone"/></td>
          <td><xsl:value-of select="E-mail"/></td>

          <xsl:choose>
        <xsl:when test="Account_Total &lt;= 80000">
          <td class="account" id="lessThanAccount">$
          <xsl:value-of select="Account_Total"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td class="account">&#36; <xsl:value-of select="Account_Total"/></td>
        </xsl:otherwise>
      </xsl:choose>

        </tr>
        </xsl:for-each>
    </table>
  </body>
  </html>

</xsl:template>
</xsl:stylesheet>