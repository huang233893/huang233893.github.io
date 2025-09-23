<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <style>
          body { font-family: sans-serif; padding: 2em; background: #f8f8f8; }
          h1 { text-align: center; padding: 5px 0 20px; border-bottom: 1px dashed lightgray; color: DarkTurquoise; }
          .author { text-align: center; margin: 1rem 0 1rem; }
          .desc { text-align: center; margin: 1rem 0 1rem; color: gray }
          .pubdate { text-align: center; margin: 1rem 0 2rem; color: gray }
          .postcontainer { margin: 0 auto; max-width: 1000px; display: flex; flex-direction: column; gap: 1.5rem }
          .item { padding: 1.2em 2em; background: #fff; border-radius: 10px; }
          .title { font-size: 1.2em; font-weight: bold; margin-bottom: 12px }
          .title a { color: DarkTurquoise; text-decoration: none; }
          .title:hover a { text-decoration: underline; }
          .date { font-size: 0.9em; color: gray; margin: 12px 0; }
          .tags { margin: 18px 0 0; display: flex; gap: .5em }
          .tags span { padding: 3px 10px; background: WhiteSmoke; border-radius: 8px; font-size: .9em; color: gray; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/atom:feed/atom:title"/></h1>
        <p class="author">作者：<xsl:value-of select="/atom:feed/atom:author/atom:name"/></p>
        <p class="desc"><xsl:value-of select="/atom:feed/atom:subtitle"/></p>
        <p class="pubdate">更新时间：<xsl:value-of select="/atom:feed/atom:updated"/></p>
        <div class="postcontainer">
          <xsl:for-each select="/atom:feed/atom:entry">
            <div class="item">
              <div class="title">
                <a href="{atom:link/@href}" target="_blank"><xsl:value-of select="atom:title"/></a>
              </div>
              <div class="date">
                <xsl:value-of select="atom:published"/>
              </div>
              <div class="description">
                <xsl:value-of select="atom:summary" disable-output-escaping="yes"/>
              </div>
              <div class="tags">
                <xsl:for-each select="atom:category">
                  <span>
                    <xsl:value-of select="./@term" />
                  </span>
                </xsl:for-each>
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
