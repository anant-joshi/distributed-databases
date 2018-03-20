<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h1>Employee Records</h1>
  <xsl:for-each select="root/element">
  <h3><xsl:value-of select="oid"/></h3>
  <h3><xsl:value-of select="firstname"/></h3>
  <ul>
    <li><xsl:value-of select="dateofbirth"/></li>
    <li><xsl:value-of select="gender"/></li>
    <li><xsl:value-of select="joiningdate"/></li>
  </ul>
  </xsl:for-each>
 
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Employee ID</th>
      <th style="text-align:left">Firstname</th>
      <th style="text-align:left">Lastname</th>
      <th style="text-align:left">Basic</th>
      <th style="text-align:left">Bonus</th>
      <th style="text-align:left">HRA</th>
      <th style="text-align:left">DA</th>
      <th style="text-align:left">PF</th>
      <th style="text-align:left">Income Tax</th>
      <th style="text-align:left">Hours Worked</th>
      <th style="text-align:left">Grade</th>
    </tr>
    <xsl:for-each select="root/element">
      <xsl:sort select="basic" order="ascending"/>
    <tr>
      <td><xsl:value-of select="id/oid"/></td>
      <td><xsl:value-of select="firstname"/></td>
      <td><xsl:value-of select="lastname"/></td>
      <td><xsl:value-of select="payroll/element/basic"/></td>
      <td><xsl:value-of select="payroll/element/bonus"/></td>
      <td><xsl:value-of select="payroll/element/hra"/></td>
      <td><xsl:value-of select="payroll/element/da"/></td>
      <td><xsl:value-of select="payroll/element/pf"/></td>
      <td><xsl:value-of select="payroll/element/incometax"/></td>
      <td><xsl:value-of select="payroll/element/hoursworked"/></td>
      <td><xsl:value-of select="payroll/element/grade"/></td>
    </tr>
    </xsl:for-each>
  </table> 
</body>
</html>
</xsl:template>
</xsl:stylesheet>

