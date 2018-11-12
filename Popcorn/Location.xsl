<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="html" version="4.0" /> 

<xsl:template match="/">
<html>
	<head>
		<style>
		h1 {
			color: rgb(255, 92, 92);
			margin-left: 40px;
		}
		table 
		{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		td
		{
			border: 1px solid #dddddd;
			text-align: center;
			padding: 20px;
		}
		</style>
	</head>
	<body style="font-family:arial">

	<div align="center">
		<h2 style="color:rgb(255, 92, 92)">LOCATION</h2>
		<table border="1" cellspacing = "0" cellpadding="5" >
	<tr style="background-color:rgb(255, 92, 92)">
		<th>Location</th>
		<th>No. Of Halls</th>
		<th>Seating Capacity</th>
				
	</tr>
	<xsl:for-each select="cinema/theatre">
	<tr bgcolor="white">
		<td><xsl:value-of select="location" /></td>
		<td><xsl:value-of select="noOfHall" /></td>
		<td><xsl:value-of select="seatingCapacity" /></td>
	</tr>
	</xsl:for-each>

</table>
	</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
