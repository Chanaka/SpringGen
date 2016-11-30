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

<xsl:template match="SCHEMA/MODELCLASS">
<xsl:variable name="modelName" select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))" />
package <xsl:value-of select="@basePackage"/>.service;

import java.util.*;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import <xsl:value-of select="@package"/>.*;
import <xsl:value-of select="@basePackage"/>.dao.*;

@Transactional
@Service("<xsl:value-of select="$modelName"/>Service")
public class <xsl:value-of select="@name"/>ServiceImpl implements <xsl:value-of select="@name"/>Service
{
	@Autowired
	private <xsl:value-of select="@name"/>Dao <xsl:value-of select="$modelName"/>Dao;
	
	public List&lt;<xsl:value-of select="@name"/>&gt; getAll<xsl:value-of select="@name"/>List()
	{
		return <xsl:value-of select="$modelName"/>Dao.get<xsl:value-of select="@name"/>List(false);
	}
	
	public List&lt;<xsl:value-of select="@name"/>&gt; getEnabled<xsl:value-of select="@name"/>List()
	{
		return <xsl:value-of select="$modelName"/>Dao.get<xsl:value-of select="@name"/>List(true);
	}
	
	public <xsl:value-of select="@name"/> findById(int id)
	{
		return <xsl:value-of select="$modelName"/>Dao.findById(id);
	}
	
	public void save(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>)
	{
		<xsl:value-of select="$modelName"/>Dao.save(<xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	}
	
}
</xsl:template>
</xsl:stylesheet>
