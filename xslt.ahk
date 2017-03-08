;
; AutoHotkey Version: 1.x
; Language:         English
; Platform:         Win  7/8/10
; Written by:       Ian McQuay
; Created:          2013-06-16
; Major revision:   2015-10-03
    ; Header revised to go with revisions of simplekeys.ahk
;
; >>>>>>>>>>> Edit the following line other includes  <<<<<<<<<<<<<<<<<<<<

; DO not edit the following >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
; The folloing three lines should be after icon file variable
#SingleInstance force   ; make sure ony one instance
#include simplekeys.ahk	; This line is required at the start of a simplekeys script file.
;
; >>>>>>>>>>>>>>>>>>>>>>>>>>> Edit what ever afer this line <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
:O:/temp::<xsl:template match="">{Enter 2}</xsl:template>{home}{up 2}{end}{Left 2}
:O:/tempm::<xsl:template match="" mode="">{Enter 2}</xsl:template>{home}{up 2}{end}{Left 11}
:O:/tempn::<xsl:template name="">{Enter 2}</xsl:template>{home}{up 2}{end}{Left 2}
:O:/mo:: mode=""{left}
:O:/callt::<xsl:call-template name="">{enter 2}</xsl:call-template>{home}{up 2}{end}{Left 2}
:O:/withp::<xsl:with-param name="" select=""/>{left 13}
:O:/applyt::<xsl:apply-templates select=""/>{left 3}
:O:/applytm::<xsl:apply-templates select="" mode=""/>{left 11}
:O:/applytl::<xsl:apply-templates select="">{enter 2}</xsl:apply-templates>{up 2}{end}{left 3}
:O:/applytlm::<xsl:apply-templates select="" mode="">{enter }<xsl:with-param name="" select=""/>{enter}</xsl:apply-templates>{up 2}{end}{left 11}
:O:/func::<xsl:function name="">{enter 2}</xsl:function>{home}{up 2}{end}{Left 2}
:O:/strips::<xsl:strip-space elements=""/>{Left 3}
:O:/tok::tokenize(,' '){left 5}

:O:/x2::
(
<?xml version="1.0" encoding="utf-8"?> <!--
    #############################################################
    # Name:     .xslt
    # Purpose:		.
    # Part of:		
    # Author:       
    # Created:		2017- -
    # Copyright:   	(c) 
    # Licence:		<MIT>
    ################################################################ -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/">

 </xsl:template>
</xsl:stylesheet>
)
; Params and var ==================================================
:O:/par::<xsl:param name=""/>{left 3}
:O:/pars::<xsl:param name="" select=""/>{left 13}
:O:/wpar::<xsl:with-param name="" select=""/>{left 13}
:O:/parl::<xsl:param name="" select="">{enter 2}</xsl:param>{home}{up 2}{end}{Left 13}

:O:/var::<xsl:variable name="" select=""/>{left 13}
:O:/varl::<xsl:variable name="">{Enter 2}</xsl:variable>{home}{up 2}{end}{Left 2}

; comments ==========================================================
:O:/comm::<{!}--  -->{left 4}
:c?*:cio/::<{!}--  -->{left 4}
:c?*:ci/::<{!}--
:c?*:co/:: -->
:c?*:cl/::{home} {home}^{right}<{!}-- {end} -->{home}{down}          ;comment out line
:c?*:ul/::{home}^{right}{del 4}{end}{BackSpace 3}{down}{end} ;comment out line
:O:/col::{home}{shift down}{down}{shift up}{ctrl down}x{ctrl up}<{!}--  -->{left 4}{ctrl down}v{ctrl up}

; content ===================================================================
:O:/e::<xsl:element name="">{enter 2}</xsl:element>{home}{up 2}{end}{Left 2}
:O:/att::<xsl:attribute name="">{enter 2}</xsl:attribute>{home}{up 2}{end}{Left 2}
:O:/a::<xsl:attribute name="">{enter 2}</xsl:attribute>{home}{up 2}{end}{Left 2}
:O:/av::<xsl:attribute name="">{enter 1}<xsl:value-of select=""/>{enter 1}</xsl:attribute>{home}{up 2}{end}{Left 2}
:O:/at::<xsl:attribute name="">{enter 1}<xsl:text></xsl:text>{enter 1}</xsl:attribute>{home}{up 2}{end}{Left 2}
:O:/val::<xsl:value-of select=""/>{left 3}
:O:/v::<xsl:value-of select=""/>{left 3}
:O:/seq::<xsl:sequence select=""/>{left 3}
:O:/com::<xsl:comment select=""/>{left 3}
:O:/text::<xsl:text></xsl:text>{left 11}
:O:/t::<xsl:text></xsl:text>{left 11}
:O:/tcd::<xsl:text><![CDATA[ ]]></xsl:text>{left 11}
:O:/textd::<xsl:text disable-output-escaping="yes"></xsl:text>{left 11}
:O:/doe:: disable-output-escaping="yes"

; characters ================================================================
:O:/nl::&{#}13;&{#}10;
:O:/cr::&{#}13;
:O:/lf::&{#}10;
:O:/tab::&{#}9;

; conditionals ============================================================
:O:/chg::<xsl:choose>{Enter 1}<xsl:when test="">{Enter 2}</xsl:when>{Enter 1}<xsl:otherwise>{Enter 2}</xsl:otherwise>{Enter 1}</xsl:choose>{up 6}{end}{Left 2}


:O:/if::<xsl:if test="">{Enter 2}</xsl:if>{home}{up 2}{end}{Left 2}
:O:/choose::<xsl:choose>{Enter 2}</xsl:choose>{home}{up 1}
:O:/when::<xsl:when test="">{Enter 2}</xsl:when>{home}{up 2}{end}{Left 2}
:O:/otherw::<xsl:otherwise>{Enter 2}</xsl:otherwise>{home}{up 1}
:O:/el::<xsl:element name="">{Enter 2}</xsl:element>{home}{up 1}
:O:/opx::<xsl:output method="xml" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
:O:/opt::<xsl:output method="text" />
:O:/oph::<xsl:output method="html" version="4.0" encoding="utf-8"  omit-xml-declaration="no" indent="yes" />

; for each =============================================
:O:/foreg::<xsl:for-each-group select="" group-by|group-starting-with=ouptype="" collation="">{Enter 2}</xsl:for-each-group>{home}{up 2}{end}{Left 2}

:O:/fore::<xsl:for-each select="">{Enter 2}</xsl:for-each>{home}{up 2}{end}{Left 2}

; analyse string
:O:/as::<xsl:analyze-string select="aa" regex="">{Enter 2}</xsl:analyze-string>{home}{up 2}{end}{Left 11}
:O:/mss::<xsl:matching-substring>{Enter 2}</xsl:matching-substring>{home}{up 1}
:O:/nmss::<xsl:non-matching-substring>{Enter 2}</xsl:non-matching-substring>{home}{up 1}

; character map
:O:/chmap::<xsl:character-map name="jsmap">{enter 2}</xsl:character-map>{up 1}
:O:/opc::<xsl:output-character character="" string=""/>{left 13}
:O:ucm::use-character-maps=""{left 1}

; basic editing
:O:d/::{home}{shift down}{end}{shift up}{ctrl down}c{ctrl up}{right}{enter}{ctrl down}v{ctrl up} ;duplicat line
:O:u2/::{home}{shift down}{end}{shift up}{ctrl down}x{ctrl up}{home}{up 2}{ctrl down}v{ctrl up} ;move line up 2 lines

:O:/swapup::{home}{shift down}{down}{shift up}{ctrl down}x{ctrl up}{up}{ctrl down}v{ctrl up} ;move line up

:O:/swapd::{home}{shift down}{down}{shift up}{ctrl down}x{ctrl up}{down}{ctrl down}v{ctrl up} ;move line down
:O:/outx::<xsl:output method="xml" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" /> ;output xml
:O:/outh5::<xsl:output method="html" version="5.0" encoding="utf-8" omit-xml-declaration="yes" indent="yes" /> ;output html5
:O:/outt::<xsl:output method="text" encoding="utf-8" /> ; outpur text

:O:/xl::{home}{shift down}{down}{shift up}{ctrl down}x{ctrl up} ; ??
:O:/cl::{home}{shift down}{down}{shift up}{ctrl down}c{ctrl up} ; ??
:O:/vl::{ctrl down}v{ctrl up} ; paste

; output document ======================================================================
:O:/resultd::<xsl:result-document href="{{}{}}" format="">{enter 2}</xsl:result-document>{left 37}


:O:.x::.xslt
:O:/sel::select=""{left}

:O:/copy::<xsl:copy>{Enter 2}</xsl:copy>{home}{up 1}
:O:/copyo::<xsl:copy-of select=""/>{left 3}
:O:/inc::<xsl:include href=""/>{Left 3}
:O:/incca::<xsl:include href="inc-copy-anything.xslt"/>
:O:/incf::<xsl:include href="inc-file2uri.xslt"/>
:O:/incl::<xsl:include href="inc-lookup.xslt"/>
:O:/incp::<xsl:include href="project.xslt"/>
:O:/charm::<xsl:character-map name="">{Enter 2}</xsl:character-map>{home}{up 2}{right 25}
:O:/outputc::<xsl:output-character character="" string=""/>{left 13}
:O:/nsf:: xmlns:f="myfunctions" exclude-result-prefixes="f"
:O:/excrp:: exclude-result-prefixes="f"
:O:/nsxs:: xmlns:xs="http://www.w3.org/2001/XMLSchema"
:O:/file2uri::f:file2uri(){Left}
:O:/nb::&nbsp;

:O:/unpa::unparsed-text-available(){Left}
:O:/unpt::unparsed-text(){Left}
:O:/thead::{#} A tasks file for Vimod Pub http://projects.palaso.org/projects/vimod-pub
:O:/rdoc::<xsl:result-document href="" format="">{enter 2}</xsl:result-document>{up 2}{right 4}
:O:/generate:: xmlns:gen="dummy-namespace-for-the-generated-xslt" xmlns:f="myfunctions" exclude-result-prefixes="xsl"
:O:/nsalias::<xsl:namespace-alias stylesheet-prefix="gen" result-prefix="xsl"/>
:O:/genss::<gen:stylesheet version="2.0" xmlns:f="myfunctions">{enter 2}</gen:stylesheet>
;:O:/genss::
:c?*:&nbsp;::&#160; ; change &nbsp; to xml acceptable code.
:O:cla/:: class=""{left 1}
:O:sel/:: select=""{left 1}
:O:/mat:: matches(.,''){left 2}
:O:/rep:: replace(.,'','')
:c?*:count(::count(){left 1}
:c?*:matches(::matches(.,''){left 2}
:c?*:substring(::substring(.,,){left 2}
:c?*:substring-b::substring-before(.,''){left 2}
:c?*:substring-a::substring-after(.,''){left 2}
:c?*:concat(::concat(,){left 2}

:O:/xhead::
(
    <!--
    #############################################################
    # Name:     .xslt
    # Purpose:		.
    # Part of:		
    # Author:       
    # Created:		2017- -
    # Copyright:   	(c) 
    # Licence:		<MIT>
    ################################################################ -->
)
;:O://::'{enter}{right}{del}{end}
:O:/amain::
(
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
              android:orientation="vertical"
              android:layout_width="fill_parent"
              android:layout_height="fill_parent"
        >
    <WebView
            android:id="@+id/webView"
            android:scrollbars="none"
            android:layout_width="fill_parent"
            android:layout_height="fill_parent"
            />
</LinearLayout>
)
:O:/ajs::
(
import android.os.Bundle;
import android.app.Activity;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MainActivity extends Activity {

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        WebView myWebView = (WebView) findViewById(R.id.webView);
        WebSettings webSettings = myWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        myWebView.loadUrl("file:///android_asset/index.html");
    }
    @Override
    public void onBackPressed()
    {
        if(webView.canGoBack())
            webView.goBack();
        else
            super.onBackPressed();
    }
}
)
:O:\tr::\tr{enter}\td {enter}\td {enter}\td {up 2}
:O:/tr::<tr>{enter}<td></td>{enter}<td></td>{enter}<td></td>{enter}<td></td>{enter}</tr{up 4}
:O:/getv::{tab 4};getvar
:O:/strl::string-length(){left 1}
:O:tr/::<tr><td>{end}</td></tr>{home}{down}
:O:tdi/::</td><td>

:O:demo1xslt/::
(
<xsl:stylesheet 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    exclude-result-prefixes="xs">
<xsl:output method="xml" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
<xsl:template match="@*|node()">
    <xsl:copy>
        <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
</xsl:template>
    
</xsl:stylesheet>
)

:O:demo2xslt/::
(
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
<xsl:strip-space elements="*"/>
      <xsl:template match="/*">
            <!-- I prefer the generic * for the root element instead of<xsl:template match="/movies">, then you are never wrong.  -->
            <html>
                  <head>
                        <title>Movies</title>
                  </head>
                  <body>
                        <!-- I am not a XSLT pro, but believe this is the preferred way of getting child elements, it is much more modular and easy to expand. -->
                        <xsl:apply-templates/>
                        <!-- or <xsl:apply-templates /> -->
                  </body>
            </html>
      </xsl:template>
      <xsl:template match="movie">
            <div>Name: <xsl:value-of select="@name" /></div>
            <!-- xsl:if test="price>10" -->
            <!-- xsl:choose xsl:when xsl:otherwise -->
      </xsl:template>
</xsl:stylesheet>
)
:O:demo2data/::
(
<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="movies.xsl"?>
<movies>
	<movie name="Pirates of the Caribbean" />
	<movie name="Lord of the Rings" />
</movies>
)
:O:demo3xslt/::
(
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
<xsl:strip-space elements="*"/>
      <xsl:template match="/*">
            <!-- I prefer the generic * for the root element instead of<xsl:template match="/movies">, then you are never wrong.  -->
            <html>
                  <head>
                        <title>Movies</title>
                        <style>
                        .movie:before {content:'Name: ';color:blue}
                        body:before {content: 'Movies'; font-size:20pt; font-weight:bold}
                        </style>
                  </head>
                  <body>
                        <!-- I am not a XSLT pro, but believe this is the preferred way of getting child elements, it is much more modular and easy to expand. -->
                        <xsl:apply-templates/>
                        <!-- or <xsl:apply-templates /> -->
                  </body>
            </html>
      </xsl:template>
      <xsl:template match="*">
            <div class="{local-name()}"><xsl:value-of select="@name" /></div>
      </xsl:template>
</xsl:stylesheet>
)
:O:demo4xslt/::
(
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
<xsl:strip-space elements="*"/>
<xsl:param name="div-elements" select="'movie film'"/>
<xsl:param name="wanted-attrib" select="'name'"/>
<xsl:variable name="div" select="tokenize($div-elements,' ')"/>
<xsl:variable name="attrib" select="tokenize($wanted-attrib,' ')"/>
      <xsl:template match="/*">
            <!-- I prefer the generic * for the root element instead of<xsl:template match="/movies">, then you are never wrong.  -->
            <html>
                  <head>
                        <title><xsl:value-of select="concat(upper-case(substring(name(), 1, 1)), lower-case(substring(name(), 2)))"/></title>
                        <style>
                        .name:before {content:'Name: ';color:blue}
                        body:before {content: 'Movies'; font-size:20pt; font-weight:bold}
                        </style>
                  </head>
                  <body>
                        <!-- I am not a XSLT pro, but believe this is the preferred way of getting child elements, it is much more modular and easy to expand. -->
                        <xsl:apply-templates/>
                        <!-- or <xsl:apply-templates /> -->
                  </body>
            </html>
      </xsl:template>
      <xsl:template match="*[local-name() = $div]"><!-- this will match any element named movie or film -->
            <div class="{local-name()}"><xsl:apply-templates select="node()|@*"/> </div>
      </xsl:template>
      <xsl:template match="*"><!-- this will match all other elements -->
            <span class="{local-name()}"><xsl:apply-templates/> </span>
      </xsl:template>
       <xsl:template match="@*[local-name() = $attrib]"><!-- this will match any attribute -->
            <span class="{local-name()}"><xsl:value-of select="."/> </span>
      </xsl:template>     
</xsl:stylesheet>
)
:O:de/::<d_Eng></d_Eng>
:O:db/::<d_Ban></d_Ban>
:O:cf/::<cf></cf>
:c?*:li/::{home} {home}^{right}<li>{end}</li>{home}{down}
:c?*:>/::+^{left}^x<^v{end}>< {BackSpace}/^v>^{left 2}{left 2}
:c?*:/>/::+^{left}^x<^v{end}/ {BackSpace}>
:c?*:/lb/::+{home}^x<a href="http://languages.info/dl_statistics_counter.php?DL_URL=\Shared\^v" ></a>{left 4}
:O:/sort::<xsl:sort select=""/>{left 3}
:O:%pp::%projectpath%
:c?*:++::+{home}^x<xsl:element name="td"><xsl:value-of select="count(*[name() = $style[^v]])"/></xsl:element>

