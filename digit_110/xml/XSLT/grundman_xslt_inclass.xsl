<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
        <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    <xsl:strip-space elements="day month year"/>
    <xsl:preserve-space elements="p li name"/>
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="sonnets">
       <xml>
           <dateProcessed>
               <xsl:value-of select="current-dateTime()"/>
           </dateProcessed>
           <xsl:apply-templates/>
       </xml> 
    </xsl:template>
    
    <xsl:template match="sonnet">
        <poem type="sonnet" roman="{@number}" n="{1 + count(preceding-sibling::sonnet)}">
            <xsl:apply-templates/>
        </poem>
    </xsl:template>
    
    <xsl:template match="line">
        <ln n="{1 + count(preceding::line)}">
            <xsl:apply-templates/>
        </ln>
    </xsl:template>
    
</xsl:stylesheet>