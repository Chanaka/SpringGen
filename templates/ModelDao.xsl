<?xml version="1.0"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:test="http://www.test.com" >
<xsl:preserve-space elements="*"/>
<xsl:output method="text"/>

<xsl:template match="/">/**
 * This is auto generated class using xsl transform with ModelClassTemplate.xsl
 * Do not edit This
 */
<xsl:apply-templates/>
</xsl:template>

<xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />

<xsl:template match="SCHEMA/MODELCLASS"><xsl:variable name="attributes" select="ATTRIBUTE"/>
package <xsl:value-of select="@basePackage"/>.dao;

import java.util.*;

import <xsl:value-of select="@package"/>.*;

public interface <xsl:value-of select="@name"/>Dao
{
	List&lt;<xsl:value-of select="@name"/>&gt; get<xsl:value-of select="@name"/>List();
	
	<xsl:value-of select="@name"/> findById(int id);
	
	void save(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	
	void update(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	
	void saveOrUpdate(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	
	void delete(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	
}
</xsl:template>
</xsl:stylesheet>
