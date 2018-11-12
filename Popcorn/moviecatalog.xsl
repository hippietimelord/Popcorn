<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<html>
	<head>
		<style>
		h1 {
			color: maroon;
			margin-left: 40px;
		}
		table {
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		td{
			border: 1px solid #000000;
			text-align: center;
			padding: 20px;
		}
		</style>
	</head>
	<body style="font-family:arial">

		<div align="center">
			<h2 style="color:rgb(255, 92, 92)">MOVIE CATALOG</h2>
			<table border="1" cellspacing = "0" cellpadding="5" >
				<tr style="background-color:rgb(255, 92, 92)">
				<th>Title</th>
				<th>Director</th>
				<th>Release Date</th>
				<th>Duration</th>
				<th>Session</th>
				<th>Casts</th>
				<th>Language</th>
				<th>Synopsis</th>		
			</tr>
			<xsl:for-each select="catalog/movie">
			<tr bgcolor="white">
				<td><xsl:value-of select="title" /></td>
				<td><xsl:value-of select="director" /></td>
				<td><xsl:value-of select="ReleaseDate" /></td>
				<td><xsl:value-of select="duration" /></td>
				<td><xsl:value-of select="session"  /></td>
				<td><xsl:value-of select="casts" /></td>
				<td><xsl:value-of select="language" /></td>
				<td><xsl:value-of select="synopsis" /></td>
			</tr>
			</xsl:for-each>

			</table>
		</div>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>