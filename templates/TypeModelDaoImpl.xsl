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
package <xsl:value-of select="@basePackage"/>.dao;

import java.util.*;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import <xsl:value-of select="@package"/>.*;

@Repository("<xsl:value-of select="$modelName"/>Doa")
public class <xsl:value-of select="@name"/>DaoImpl extends AbstractDao&lt;Integer, <xsl:value-of select="@name"/>&gt; implements <xsl:value-of select="@name"/>Dao
{

	@SuppressWarnings("unchecked")
	public List&lt;<xsl:value-of select="@name"/>&gt; get<xsl:value-of select="@name"/>List(boolean onlyEnabled)
	{
		Criteria	criteria	= createEntityCriteria();
		
		if (onlyEnabled)
		{
			criteria.add(Restrictions.eq("isDisabled", false));
		}
		
		return criteria.list();
	}
	
	public <xsl:value-of select="@name"/> findById(int id)
	{
		return getByKey(id);
	}
	
	public void save(<xsl:value-of select="@name"/><xsl:text> </xsl:text><xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>)
	{
		persist(<xsl:value-of select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))"/>);
	}
	
}
</xsl:template>
</xsl:stylesheet>
