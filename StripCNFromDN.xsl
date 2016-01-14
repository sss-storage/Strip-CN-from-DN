	<!-- Function that returns DN from a DN, with the tree removed
	     Given:   \TREE\Container\anothercotainer\admin 
	     Returns: Container\anothercotainer\admin
  -->
	<xsl:template name="strip-tree-from-dn" xmlns:jstring="http://www.novell.com/nxsl/java/java.lang.String">
		<xsl:param name="dn"/>
		<xsl:variable name="str" select="jstring:new($dn)"/>
		<xsl:variable name="idx" select="jstring:indexOf(substring($str,2),'\')"/>
		<xsl:choose>
			<xsl:when test="$idx=-1">
				<xsl:value-of select="."/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="jstring:substring($str,$idx+1)"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
