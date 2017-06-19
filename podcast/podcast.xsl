<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:itunes="http://www.itunes.com/DTDs/Podcast-1.0.dtd">

	<xsl:output method="html" /> 		
		<xsl:variable name="title" select="/rss/channel/title"/>				
		<xsl:template match="/">		
		<html>
			<head>
				<title>					
					<xsl:value-of select="$title"/> Podcast				
				</title>

				<style type="text/css">
					body {font-family:verdana;font-size:11px; margin: 0;padding:0 0 50px 0;}
					#main {width:591px; margin-left: 25px; }	
					h2 { width: 616px; text-indent: 25px; background: #003366; color: white; font-size: 12px; margin: 0 0 16px 0; padding: 24px 0 6px 0 }
					.content { border: 1px solid #999999; margin-bottom: 11px; }
					.content div.txt { padding: 6px 5px 0px 5px; }
					a { color:#003366; text-decoration: underline }
					h3 { background: #e4e4c9; font-family: Verdana, Helvetica, sans-serif; font-size: 11px; font-weight: bold; margin: 0; padding: 4px 5px; color: #003366; border-bottom: 1px solid #999999; }
					p { margin: 0 0 6px 0; padding: 0; }
					p.back { margin-bottom: 20px; }
					ul.mp3list { margin: 0 0 0 2em; padding: 20px 0 0 0; list-style: none; }
					ul.mp3list li { margin-bottom: 25px; }
					ul.mp3list li a { background: url("http://trowe.themechanism.com/images/iconMP3.gif") 0 50% no-repeat; padding-top: 20px; padding-bottom: 20px; padding-left: 40px; }
					ol { margin: 0; padding: 0 0 0 2em; }
					p.first { margin-bottom: 12px; }
					p.pcast { padding: 1em; background: #efefef; margin-right: 10px; margin-bottom: 15px; }
					.indent { padding-left: 30px; }
					.itunes {
 background: url("http://trowe.themechanism.com/images/badgeitunes61x15dark.gif") 0 50% no-repeat; padding-top: 20px; padding-bottom: 20px; padding-left: 70px;
}
					input { font-size: 9px; }
					ul.arrow { list-style: none; margin: 0; padding: 0; }
					ul.arrow li { background: url("http://www.troweprice.com/images/iconLinkArrow.gif") 0 50% no-repeat; padding-left: 10px; margin-bottom: 9px; }
				</style>
			</head>			
			<xsl:apply-templates select="rss/channel"/>				
		</html>	
		</xsl:template>		
		
		<xsl:template match="channel">		
		<body onload="document.getElementById('podurl').value=window.location;">				
		<h2><xsl:value-of select="$title"/></h2>
		
		<div id="main">
			<p class="first"><a href="javascript:window.close();">Close this window</a></p>
			<div class="content">
				<h3>What is a podcast?</h3><div class="txt"><p>A podcast makes an audio file, typically an MP3 file, available online for downloading into a portable music player or computer. You can use special software to "subscribe" to programs so that new installments are automatically downloaded when they become available.</p></div>
			</div>
			
			<div class="content">
				<h3>Do I need an iPod to listen to a podcast?</h3><div class="txt"><p>brewjersey&#8217;s podcasts are made up of standard sound files (MP3s) that can be played on an iPod or any portable media device, as well as a computer With a sound card and speakers.</p></div>
			</div>
			
			<div class="content">
				<h3>How do I listen to a single episode of <xsl:value-of select="$title"/>?</h3>
				<div class="txt">
				Simply click on the MP3 icon of any of our current episodes:
				<ul class="mp3list">
					<xsl:apply-templates select="item" />	
				</ul>
				</div>
			</div>
			
			<div class="content">			
				<h3>Should I subscribe to the <xsl:value-of select="$title"/> podcast?</h3>
				<div class="txt">
					<p>If you subscribe to this podcast, you will automatically receive all current and future episodes of <xsl:value-of select="$title"/>.</p> 	
				</div>
			</div>
			
			<div class="content">
				<h3>How do I subscribe to the <xsl:value-of select="$title"/> podcast?</h3>
				<div class="txt">
				<ol>
					<li><p><strong>Download Podcasting Software</strong><br />If you don't already have podcasting software downloaded on your PC, you will need to download and install the right software to "subscribe" to our podcast.</p>
					<p>Some examples include Apple's free <a href="http://www.itunes.com/" target="_blank">iTunes</a>, or sign up for a web-based service such as <a href="http://www.podnova.com/" target="_blank">PodNova</a> or <a href="http://podcasts.yahoo.com/" target="_blank">Yahoo Podcasts</a>. A list of helpful software and links are below.</p></li>
					<li><p><strong>Subscribe</strong></p>
	
					<p><em>Yes, I am using Apple's iTunes</em></p>
					<div class="indent"><p>To subscribe, simply click the icon below.</p>
					<p class="pcast">
					<a>
						<xsl:attribute name="href"><xsl:value-of select="ituneslink" /></xsl:attribute>
						<xsl:attribute name="class">itunes</xsl:attribute>
						<xsl:attribute name="target">_blank</xsl:attribute>
						<xsl:value-of select="title" />
					</a>
					</p></div>
	
					<p><em>No, I am using another podcasting software or service.</em></p>
					<div class="indent">
					<p>Copy and paste the URL in the box below into your preferred podcasting tool software. Please refer to your software's instructions for detailed help.</p> 												
					<p class="pcast">
					<a>
					<xsl:attribute name="href">javascript:document.getElementById('podurl').select();</xsl:attribute>
					<img src="http://trowe.themechanism.com/images/iconPOD.gif" style="border: none;" /></a>
					
					<input type="text" size="55" id="podurl" value="" onclick="this.select();" style="margin-bottom: 10px; margin-left: 8px;" /></p>
					</div></li>
					<li><p><strong>Listen and enjoy!</strong><br />Your software will detect when we have updated our podcast and new content will be automatically downloaded to your computer.</p></li>
				</ol>
				</div>
			</div>
			
			<div class="content">
				<h3>Terms and Conditions</h3>
				<div class="txt">
				<p>Click here to view our <a href="">terms and conditions</a>.</p>
				</div>
			</div>
			
			<div class="content">			
				<h3>Podcasting Software and Helpful Links</h3>
				<div class="txt">
					<p>Free podcasting software and services:</p>
					<ul class="arrow">
						<li><a href="http://www.itunes.com/" rel="external" target="_blank">iTunes</a></li>
						<li><a href="http://juicereceiver.sourceforge.net/" rel="external" target="_blank">Juice</a></li>
						<li><a href="http://podcasts.yahoo.com/" rel="external" target="_blank">Yahoo Podcasts</a></li>
						<li><a href="http://www.podnova.com/" rel="external" target="_blank">PodNova</a></li>
						<li><a href="http://www.podcastingnews.com/topics/Podcast_Software.html" rel="external" target="_blank">View more...</a></li> 
					</ul>
					<p>Online resources:</p>
					<ul class="arrow">
						<li><a href="http://en.wikipedia.org/wiki/Podcasting" rel="external" target="_blank">History of podcasting</a></li>
					</ul>
				</div>
			</div>
		</div>
		</body>	
	</xsl:template>			

	<xsl:template match="item">		
		<div class="item">

			<p><strong><xsl:value-of select="title" /></strong><br />						
			<em><xsl:value-of select="pubDate" /></em></p>		
		</div>			
	</xsl:template>	
	
	<xsl:template match="item">		
		<li><a>		
				<xsl:attribute name="href">
					<xsl:value-of select="enclosure/@url" />
				</xsl:attribute><xsl:value-of select="title" /></a></li>
	</xsl:template>	

</xsl:stylesheet>