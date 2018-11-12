<?xml version="1.0" encoding="UTF-8" ?> 	
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" /> 
<xsl:template match="/">
	<html>
		<head>
			<title>User Profile</title>
			<style>
			body {
				font-family: 'Arial';
			}
			</style>
		</head>
		<body style="background-color:black; color:white">
			<h1 style="text-align:center; color:rgb(255, 92, 92); font-size:50px; font-family:sans-serif">&#160;&#160;&#160;&#160;POPCORN Movie Theatre</h1>
			
			<xsl:for-each select="userprofile/user/branch[@address='240']">
			<xsl:apply-templates select="../image_url"/>
			<h2>&#160;&#160;&#160;&#160;Registered User</h2>
			<h3>&#160;&#160;&#160;&#160;Basic information</h3>
				<xsl:apply-templates select="../name"/>
					<xsl:apply-templates select="../birthday_date"/>
					<xsl:apply-templates select="../address"/>
				
				<xsl:apply-templates select="../email"/>
				
				<xsl:apply-templates select="../language"/>
				<xsl:apply-templates select="../usr"/>
			
				<xsl:apply-templates select="../position"/>
				<xsl:apply-templates select="../telephone"/>
				<xsl:apply-templates select="../branch"/>
				
			
			</xsl:for-each>
			
			<img src="logo.png" alt="nice picture" style="width:128px;height:100px; float: right;"/>
		</body>
	</html>
</xsl:template>

<xsl:template match="image_url">
		<center><img style="width: 190px; height: 180px"  src="{.}"/></center><br/>
	</xsl:template>

	<xsl:template match="name">
		<p class="title">
			<xsl:value-of select="."/>
		</p>
	</xsl:template>

	<xsl:template match="birthday_date">
	 
	<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="address"><br/>
	<xsl:value-of select="."/><br/>
</xsl:template>

	

<xsl:template match="email"><br/>
              
	<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="language"><br/>
	 
	<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="usr"><br/>
	 
	<xsl:value-of select="."/><br/>
</xsl:template>


<xsl:template match="position"><br/>
	<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="telephone"><br/>
	<xsl:value-of select="."/><br/>
</xsl:template>

<xsl:template match="branch"><br/>
	<xsl:value-of select="."/><br/>
</xsl:template>





</xsl:stylesheet>