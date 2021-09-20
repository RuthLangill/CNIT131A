<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match="/">
<html>
<head>
<title>ABC Financial Startup</title>
<style>
body {
  padding-top: 30px;
  margin-top: 30px;
  text-align: center;
  font-size: 15px;
  color: #1b9cf4;
  background-color: #f1f9fa;
}
img {
  padding: 15px;
  border: 2px solid #c0c8cc;
  margin-top: 20px;
}
h1 {
  font-size: 70px;
  padding: 15px;
  margin: 10px;
  color: ##5db7f3;
}
p {
  padding: 10px;
  font-size: 15px
}
</style>
</head>
<body>
<hr/>
<h1>ABC Financial Startup</h1>
<hr/>
<img src="images/financialstartup.jpg"/>
<p> We are a very young financial management company and we are proud of our clients. 
</p>
<p> We started with 1 client a little bit more than 10 years ago, now we have 
  <xsl:value-of select="count(Accounts/Client)"/> clients!
</p>
<p> These are our clients: 
<xsl:for-each select="Accounts/Client/Name">
<xsl:value-of select="First"/><xsl:text> </xsl:text><xsl:value-of select="Last"/>
    <xsl:choose>
      <xsl:when test="position()=last()">.</xsl:when>
      <xsl:when test="position()=last() -1"> and </xsl:when>
      <xsl:otherwise>, </xsl:otherwise>
    </xsl:choose>
</xsl:for-each>
</p>
<p> 
 <xsl:value-of select="count(//Client[Years&gt;=7]/Years)"/>
 of our clients have been with us for more than 7 years
</p>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
