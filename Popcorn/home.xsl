<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body { 
                        font-family: arial;
						overflow: hidden;
                    }
                    h2 {
						color: rgb(255, 92, 92);
						font-family: 'Arial';
					}
                    b {
                        color: rgb(102, 102, 102)
                    }
					h3 {
						color: white;
						font-size: 15px;
					}
                </style>
                
                <title>Movie</title>
            </head>
            <body>
                <xsl:apply-templates select="home/movie">
                    <xsl:sort select="release_date" order="ascending"/>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="movie">
		<h2><xsl:value-of select="name" /></h2>
		<h3>
			<xsl:value-of select="desc" /><br/><br/>
			<b>Rating: </b><xsl:value-of select="rating" /><br/>
			<b>Genre: </b><xsl:value-of select="genre" /><br/>
			<b>Directed By: </b><xsl:value-of select="director" /><br/>
			<b>Written By: </b><xsl:value-of select="writer" /><br/>
			<b>In Theatres </b><xsl:value-of select="release_date" /><br/>
			<b>Studio: </b><xsl:value-of select="studio" /><br/>
			<xsl:text> </xsl:text>
		</h3>
    </xsl:template>
</xsl:stylesheet>
