<?xml version="1.0"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:test="http://www.greenbit.lk" >
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
package <xsl:value-of select="@package"/>;

public class <xsl:value-of select="@name"/>
{
	// Default constructor
	public <xsl:value-of select="@name"/>()
	{
		
	}

<xsl:for-each select="$attributes"><xsl:sort select="name()"/>
	<xsl:variable name="attribName" select="concat(translate(substring(@name, 1, 1), $uppercase, $lowercase), substring(@name, 2))" />
	private <xsl:value-of select="@type"/><xsl:text> </xsl:text><xsl:value-of select="$attribName"/>;
	
    /**
     * Get value of attribute <xsl:value-of select="$attribName"/>
     */
    public <xsl:value-of select="@type"/> get<xsl:value-of select="@name"/> ()
    {
        return <xsl:value-of select="$attribName"/>;
    }
	
	/**
     * Set value for attribute <xsl:value-of select="$attribName"/>
     */
    public void set<xsl:value-of select="@name"/> (<xsl:value-of select="@type"/><xsl:text> </xsl:text><xsl:value-of select="$attribName"/>)
    {
        this.<xsl:value-of select="$attribName"/> = <xsl:value-of select="$attribName"/>;
    }
</xsl:for-each>
}
</xsl:template>
</xsl:stylesheet>
