<?xml version="1.0"?>
<!-- FronterQuiz2Blackboard.xsl -->
<!--  =====  -->
<!-- Konverterer test-spoersmaal fra Fronter eksport-format til Blackboard import-format -->
<!-- Fungerer paa flervalgspoersmaal, tar med spoersmaalstekst og svaralternativ -->
<!-- Setter alle spoersmaal til type MC - Multiple Choice, -->
<!--  dette maa eventult redigeres manuelt til MA - Multiple Answers. -->
<!-- Setter alle svar til incorrect, korrekte svar maa redigeres manuelt til correct -->
<!-- Resultatfil kan lett importeres til Excel for redigering. Skilletegn: tab -->
<!--  =====  -->
<!-- Laget av: Sverre Stikbakke -->
<!-- Date: 2008-04-02 - Moodle-versjon for XML-format-->
<!-- Date: 2016-11-22 - Blackboard-versjon -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>

    <xsl:template match="/questestinterop">

        <xsl:for-each select="item">

            <!-- (for hvert spoersmaal:) -->
            <xsl:for-each select="presentation/flow/material">

                <xsl:if test="position()!=1">

                    <xsl:variable name="cdata" select="mattext"/>
                    <text>
                        <xsl:text>MC</xsl:text>
                        <xsl:text>&#9;</xsl:text>

                        <!-- (trekker ut spoersmaalstekst mellom <p>-tagger i CDATA seksjon:) -->
                        <xsl:value-of select="substring-before(substring-after($cdata, '&lt;p&gt;'), '&lt;/p&gt;')"/>
                        <!-- (tab:) -->
                        <xsl:text>&#9;</xsl:text>
                    </text>
                </xsl:if>
            </xsl:for-each>

            <!-- (for hvert svaralternativ:) -->
            <xsl:for-each select="presentation/flow/response_lid/render_choice/response_label">
                <text>

                    <xsl:value-of select="flow_mat/material/mattext"/>
                    <xsl:text>&#9;</xsl:text>incorrect<xsl:text>&#9;</xsl:text>
                </text>
            </xsl:for-each>
            <!-- (linjeskift:) -->
            <xsl:text>&#xa;</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
