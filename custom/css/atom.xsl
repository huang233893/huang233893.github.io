<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <style>
          body { font-family: sans-serif; padding: 2em; background: url('https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/blog-banner.jpeg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed;}
          h1 { text-align: center; padding: 5px 0 20px; border-bottom: 1px dashed lightgray; color: Orange; }
          .author { text-align: center; margin: 1rem 0 1rem; color: Orange }
          .desc { text-align: center; margin: 1rem 0 1rem; color: Orange }
          .pubdate { text-align: center; margin: 1rem 0 2rem; color: White }
          .postcontainer { margin: 0 auto; max-width: 1000px; display: flex; flex-direction: column; gap: 1.5rem, color: White }
          .item { padding: 1.2em 2em; background: #464646ff; border-radius: 10px; }
          .title { font-size: 1.2em; font-weight: bold; margin-bottom: 12px }
          .title a { color: Orange; text-decoration: none; }
          .title:hover a { text-decoration: underline; }
          .date { font-size: 0.9em; color: gray; margin: 12px 0; }
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
