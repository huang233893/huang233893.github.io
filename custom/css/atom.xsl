<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <xsl:variable name="title">
            <xsl:value-of select="/atom:feed/atom:title"/>
        </xsl:variable>
        <xsl:variable name="description">
            <xsl:value-of select="/atom:feed/atom:subtitle"/>
        </xsl:variable>
        <xsl:variable name="link">
            <xsl:value-of select="/atom:feed/atom:link[@rel='alternate']/@href | /atom:feed/atom:link[not(@rel)]/@href"/>
        </xsl:variable>
        <html class="dark scroll-smooth">
            <head>
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <meta name="referrer" content="unsafe-url"/>
                <title>
                    <xsl:value-of select="$title"/>
                </title>
                <style>
                    /* 将背景图片设置从 ::backdrop 移动到 body */
                    *,:after,:before{--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-translate-x:0;--tw-translate-y:0;--tw-rotate:0;--tw-skew-x:0;--tw-skew-y:0;--tw-scale-x:1;--tw-scale-y:1;--tw-pan-x: ;--tw-pan-y: ;--tw-pinch-zoom: ;--tw-scroll-snap-strictness:proximity;--tw-gradient-from-position: ;--tw-gradient-via-position: ;--tw-gradient-to-position: ;--tw-ordinal: ;--tw-slashed-zero: ;--tw-numeric-figure: ;--tw-numeric-spacing: ;--tw-numeric-fraction: ;--tw-ring-inset: ;--tw-ring-offset-width:0px;--tw-ring-offset-color:#fff;--tw-ring-color:rgba(59,130,246,.5);--tw-ring-offset-shadow:0 0 #0000;--tw-ring-shadow:0 0 #0000;--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;--tw-blur: ;--tw-brightness: ;--tw-contrast: ;--tw-grayscale: ;--tw-hue-rotate: ;--tw-invert: ;--tw-saturate: ;--tw-sepia: ;--tw-drop-shadow: ;--tw-backdrop-blur: ;--tw-backdrop-brightness: ;--tw-backdrop-contrast: ;--tw-backdrop-grayscale: ;--tw-backdrop-hue-rotate: ;--tw-backdrop-invert: ;--tw-backdrop-opacity: ;--tw-backdrop-saturate: ;--tw-backdrop-sepia: ;--tw-contain-size: ;--tw-contain-layout: ;--tw-contain-paint: ;--tw-contain-style: }
                    ::backdrop{--tw-border-spacing-x:0;--tw-border-spacing-y:0;--tw-translate-x:0;--tw-translate-y:0;--tw-rotate:0;--tw-skew-x:0;--tw-skew-y:0;--tw-scale-x:1;--tw-scale-y:1;--tw-pan-x: ;--tw-pan-y: ;--tw-pinch-zoom: ;--tw-scroll-snap-strictness:proximity;--tw-gradient-from-position: ;--tw-gradient-via-position: ;--tw-gradient-to-position: ;--tw-ordinal: ;--tw-slashed-zero: ;--tw-numeric-figure: ;--tw-numeric-spacing: ;--tw-numeric-fraction: ;--tw-ring-inset: ;--tw-ring-offset-width:0px;--tw-ring-offset-color:#fff;--tw-ring-color:rgba(59,130,246,.5);--tw-ring-offset-shadow:0 0 #0000;--tw-ring-shadow:0 0 #0000;--tw-shadow:0 0 #0000;--tw-shadow-colored:0 0 #0000;--tw-blur: ;--tw-brightness: ;--tw-contrast: ;--tw-grayscale: ;--tw-hue-rotate: ;--tw-invert: ;--tw-saturate: ;--tw-sepia: ;--tw-drop-shadow: ;--tw-backdrop-blur: ;--tw-backdrop-brightness: ;--tw-backdrop-contrast: ;--tw-backdrop-grayscale: ;--tw-backdrop-hue-rotate: ;--tw-backdrop-invert: ;--tw-backdrop-opacity: ;--tw-backdrop-saturate: ;--tw-backdrop-sepia: ;--tw-contain-size: ;--tw-contain-layout: ;--tw-contain-paint: ;--tw-contain-style: ;}
                    
                    /*! tailwindcss v3.4.17 | MIT License | https://tailwindcss.com*/
                    /* 原有的样式保持不变 */
                    *,:after,:before{box-sizing:border-box;border:0 solid #e7e7f0}
                    /* ... 其他样式保持不变 ... */
                    
                    /* 在 body 选择器中添加背景图片 */
                    body {
                        background-image: url('https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/rss_background.jpg');
                        background-size: cover;
                        background-position: center;
                        background-attachment: fixed;
                        background-repeat: no-repeat;
                        margin: 0;
                        line-height: inherit;
                        min-height: 100vh;
                    }
                    
                    /* 确保内容区域有适当的背景色以便阅读 */
                    .bg-gray-925, .lg\:dark\:bg-gray-900 {
                        background-color: rgba(9, 9, 21, 0.85) !important;
                    }
                    
                    /* 其他原有样式保持不变 */
                    .container{width:100%}
                    @media (min-width:640px){.container{max-width:640px}}
                    @media (min-width:768px){.container{max-width:768px}}
                    @media (min-width:1024px){.container{max-width:1024px}}
                    @media (min-width:1280px){.container{max-width:1280px}}
                    @media (min-width:1536px){.container{max-width:1536px}}
                    
                    /* ... 其余样式保持不变 ... */
                    
                    @media (min-width:1024px){.lg\:dark\:bg-gray-900:is(.dark *){--tw-bg-opacity:1;background-color:rgb(18 18 32/var(--tw-bg-opacity,1))}}
                </style>
            </head>
            <body class="min-h-screen min-h-svh font-sans leading-normal antialiased">
                <main class="min-w-screen container mx-auto flex min-h-screen max-w-screen-lg flex-col px-4 py-6 md:px-6">
                    <!-- 页面内容保持不变 -->
                    <header class="space-y-2 pt-2 md:pt-6">
                        <a title="{$title}" href="{$link}" target="_blank" rel="noopener noreferrer">
                            <h1 class="flex text-2xl">
                                <span class="icon-[tabler--rss] mr-2 h-8 w-8"/>
                                <span class="lg2:text-3xl from-primary-600 to-accent-400 inline-block bg-gradient-to-r bg-clip-text font-bold text-transparent">
                                    <xsl:value-of select="$title" disable-output-escaping="yes"/>
                                </span>
                            </h1>
                        </a>
                        <p class="text-body pt-2 text-lg py-4">
                            <xsl:value-of select="$description" disable-output-escaping="yes"/>
                        </p>
                        <p class="text-caption text-sm">
                            这里是
                            <a class="link intent-neutral variant-animated !text-caption font-bold" title="{$title}" href="{$link}" target="_blank" rel="noopener noreferrer">
                                <xsl:value-of select="$title"/>
                            </a>
                            的RSS订阅源
                        </p>
                        <p class="text-body text-sm hidden" id="subscribe-links">
                            你可以使用以下网站查看酥米小站的RSS：
                            <a class="link intent-neutral variant-animated font-bold" title="Feedly" data-href="https://feedly.com/i/subscription/feed/" target="_blank" rel="noopener noreferrer">Feedly</a>,
                            <a class="link intent-neutral variant-animated font-bold" title="Inoreader" data-href="https://www.inoreader.com/feed/" target="_blank" rel="noopener noreferrer">Inoreader</a>,
                            <a class="link intent-neutral variant-animated font-bold" title="Newsblur" data-href="https://www.newsblur.com/?url=" target="_blank" rel="noopener noreferrer">Newsblur</a>,
                            <a class="link intent-neutral variant-animated font-bold" title="Follow" data-href="follow://add?url=" rel="noopener noreferrer">Follow</a>,
                            <a class="link intent-neutral variant-animated font-bold" title="RSS Reader" data-href="feed:" data-raw="true" rel="noopener noreferrer">RSS Reader</a>
                            或者使用RSS订阅工具订阅以下链接：
                            <a class="link intent-neutral variant-animated font-bold" title="{$title} 's feed source" data-href="" data-raw="true" rel="noopener noreferrer">View Source</a>.
                        </p>
                        <script>
                            document.addEventListener('DOMContentLoaded', function () {
                                document.querySelectorAll('a[data-href]').forEach(function (a) {
                                    const url = new URL(location.href)
                                    const feed = url.searchParams.get('url') || location.href
                                    const raw = a.getAttribute('data-raw')
                                    if (raw) {
                                        a.href = a.getAttribute('data-href') + feed
                                    } else {
                                        a.href = a.getAttribute('data-href') + encodeURIComponent(feed)
                                    }
                                })
                                document.getElementById('subscribe-links').classList.remove('hidden')
                            })
                        </script>
                    </header>
                    <hr class="my-6"/>
                    <section class="flex-1 space-y-6 p-1 md:p-4">
                        <xsl:choose>
                            <xsl:when test="/rss/channel/item">
                                <xsl:for-each select="/rss/channel/item">
                                    <article class="space-y-2">
                                        <details>
                                            <summary class="max-w-full truncate">
                                                <xsl:if test="title">
                                                    <h2 class="text-title inline cursor-pointer text-lg font-semibold">
                                                        <xsl:value-of select="title" disable-output-escaping="yes"/>
                                                    </h2>
                                                </xsl:if>
                                                <xsl:if test="pubDate">
                                                    <time class="text-caption ml-4 mt-1 block text-sm">
                                                        <xsl:value-of select="pubDate"/>
                                                    </time>
                                                </xsl:if>
                                            </summary>
                                            <div class="text-body px-4 py-2">
                                                <p class="my-2">
                                                    <xsl:choose>
                                                        <xsl:when test="description">
                                                            <xsl:value-of select="description" disable-output-escaping="yes"/>
                                                        </xsl:when>
                                                    </xsl:choose>
                                                </p>
                                                <xsl:if test="link">
                                                    <a class="link variant-animated intent-neutral font-bold" href="{link}" target="_blank" rel="noopener noreferrer">
                                                        查看更多
                                                    </a>
                                                </xsl:if>
                                            </div>
                                        </details>
                                    </article>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:when test="/atom:feed/atom:entry">
                                <xsl:for-each select="/atom:feed/atom:entry">
                                    <article class="space-y-2">
                                        <details>
                                            <summary class="max-w-full truncate">
                                                <xsl:if test="atom:title">
                                                    <h2 class="text-title inline cursor-pointer text-lg font-semibold">
                                                        <xsl:value-of select="atom:title" disable-output-escaping="yes"/>
                                                    </h2>
                                                </xsl:if>
                                                <xsl:if test="atom:updated">
                                                    <time class="text-caption ml-4 mt-1 block text-sm">
                                                        <xsl:value-of select="atom:updated"/>
                                                    </time>
                                                </xsl:if>
                                            </summary>
                                            <div class="text-body px-4 py-2">
                                                <p class="my-2">
                                                    <xsl:choose>
                                                        <xsl:when test="atom:summary">
                                                            <xsl:value-of select="atom:summary" disable-output-escaping="yes"/>
                                                        </xsl:when>
                                                        <xsl:when test="atom:content">
                                                            <xsl:value-of select="atom:content" disable-output-escaping="yes"/>
                                                        </xsl:when>
                                                    </xsl:choose>
                                                </p>
                                                <xsl:if test="atom:link/@href">
                                                    <a class="link variant-animated intent-neutral font-bold" href="{atom:link/@href}" target="_blank" rel="noopener noreferrer">
                                                        查看更多
                                                    </a>
                                                </xsl:if>
                                            </div>
                                        </details>
                                    </article>
                                </xsl:for-each>
                            </xsl:when>
                        </xsl:choose>
                    </section>
                    <hr class="my-6"/>
                    <footer>
                        <div class="flex flex-col justify-between space-y-4 md:flex-row md:space-y-0">
                            <div class="space-y-4">
                                <a class="flex text-2xl font-bold" href="https://www.sumi233.top/" title="酥米的小站">
                                    <span class="text-title icon-[tabler--rss] mr-1 h-8 w-8"/>
                                    <span class="text-title">酥米</span>
                                    <span class="from-primary-600 to-accent-400 bg-gradient-to-r bg-clip-text text-transparent">的小站</span>
                                </a>
                                <div class="text-caption">终有一日，寻梦中人</div>
                            </div>
                            <div class="space-y-4">
                                <div class="flex flex-wrap gap-x-4 gap-y-2">
                                    <a class="link intent-neutral variant-animated" target="_blank" title="GitHub" href="https://github.com/huang233893">GitHub</a>
                                    <a class="link intent-neutral variant-animated" target="_blank" title="BiliBili" href="https://space.bilibili.com/295048317">BiliBili</a>
                                </div>
                                <div class="text-title flex gap-1 overflow-hidden font-medium">
                                    作者：
                                    <div class="flex items-start justify-center gap-2 text-center font-semibold sm:gap-1">
                                        <div class="block">
                                            <a href="https://www.sumi233.top/about/" target="_blank" title="Supermini233" class="block pb-2">Supermini233</a>
                                            <div class="-mt-5 grow overflow-hidden">
                                                <svg class="w-24" aria-hidden="true" height="22" viewBox="0 0 283 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M1.24715 19.3744C72.4051 10.3594 228.122 -4.71194 281.724 7.12332" stroke="url(#paint0_linear_pl)" stroke-width="4"/>
                                                    <defs>
                                                        <linearGradient id="paint0_linear_pl" x1="282" y1="5.49999" x2="40" y2="13" gradientUnits="userSpaceOnUse">
                                                            <stop stop-color="#facc15"/>
                                                            <stop offset="1" stop-color="#a855f7"/>
                                                        </linearGradient>
                                                    </defs>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>