<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" encoding="UTF-8" indent="yes" doctype-system="about:legacy-compat"/>

<!-- 获取总项目数 -->
<xsl:variable name="totalItems" select="count(rss/channel/item)"/>

<xsl:template match="/">
    <html lang="zh-CN">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title><xsl:value-of select="rss/channel/title"/></title>
        <!-- 引入Tailwind CSS 4 -->
        <script src="https://mirrors.sustech.edu.cn/cdnjs/ajax/libs/tailwindcss-browser/4.1.11/index.global.min.js"></script>
        <!-- 引入Font Awesome -->
        <link href="https://mirrors.sustech.edu.cn/cdnjs/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>

        <!-- Tailwind CSS 4 主题配置 -->
        <style type="text/tailwindcss">
            @theme {
                --color-primary: #FF8C00;
                --color-secondary: #FFA500;
                --color-accent: #FFE4B5;
                --color-dark: #1e293b;
                --color-light: #f8fafc;
                --font-sans: "MiSans-Normal";
            }
        </style>

        <!-- 自定义工具类 -->
        <style type="text/tailwindcss">
            @layer utilities {
                .content-auto {
                    content-visibility: auto;
                }
                .text-balance {
                    text-wrap: balance;
                }
                .card-hover {
                    @apply transition-all duration-300 hover:shadow-lg hover:-translate-y-1;
                }
                /* 容器最大宽度类 */
                .max-w-content {
                    max-width: 1400px;
                }
            }
        </style>

        <style>
            /* 基础动画 */
            @keyframes fadeIn {
                from { opacity: 0; transform: translateY(10px); }
                to { opacity: 1; transform: translateY(0); }
            }

            .article-item {
                animation: fadeIn 0.5s ease-out forwards;
                animation-delay: calc(var(--item-index) * 0.05s);
                opacity: 0;
            }

            /* 隐藏原始时间，仅用于JS处理 */
            .original-time {
                display: none;
            }

            /* 移动端友好：增大点击区域 */
            a:hover, button:hover {
                outline: none;
            }

            body {
                background-image: url('https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/rss_background.jpg');
                background-attachment: fixed; /* 固定位置 */
                background-size: cover; /* 覆盖显示 */
                background-repeat: no-repeat; /* 不重复 */
                background-position: center center; /* 居中显示 */
                background-color: #f8fafc; /* 备用背景色 */
            }
        </style>
    </head>

    <body class="bg-gray-50 text-gray-800 font-sans selection:bg-accent selection:text-white">
        <!-- 头部区域 -->
        <header class="bg-gradient-to-r from-primary to-secondary text-white shadow-md">
            <div class="max-w-content mx-auto px-4 py-6 sm:py-8 md:py-12">
                <div class="flex flex-col md:flex-row justify-between items-center gap-4">
                    <div class="text-center md:text-left">
                        <h1 class="text-2xl sm:text-3xl md:text-4xl font-bold mb-1 sm:mb-2">
                            <xsl:value-of select="rss/channel/title"/>
                        </h1>
                        <p class="text-blue-100 text-sm sm:text-base">
                            <xsl:value-of select="rss/channel/description"/>
                        </p>
                    </div>
                    <div class="flex flex-col sm:flex-row gap-3 w-full sm:w-auto">
                        <a href="{rss/channel/link}" target="_blank"
                           class="bg-white text-primary px-4 py-2 rounded-lg font-medium hover:bg-blue-50 transition-colors flex items-center justify-center">
                            <i class="fa fa-globe mr-2"></i> 访问网站
                        </a>
                        <a href="{rss/channel/atom:link[@rel='self']/@href}"
                           class="bg-dark text-white px-4 py-2 rounded-lg font-medium hover:bg-gray-800 transition-colors flex items-center justify-center">
                            <i class="fa fa-rss mr-2"></i> RSS 源
                        </a>
                    </div>
                </div>

                <!-- 最后更新时间 -->
                <div class="mt-5 text-blue-100 text-sm sm:text-base text-center md:text-left">
                    <p>
                        <i class="fa fa-calendar-o mr-2"></i>
                        最后更新:
                        <span class="formatted-time">
                            <span class="original-time"><xsl:value-of select="rss/channel/item[1]/pubDate"/></span>
                        </span>
                    </p>
                </div>
            </div>
        </header>

        <!-- 主内容区 -->
        <main class="max-w-content mx-auto px-4 py-6 sm:py-8 md:py-12">
            <!-- 双栏文章列表（移动端为单栏） -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-5 sm:gap-6 content-auto">
                <xsl:for-each select="rss/channel/item">
                    <article class="article-item bg-white rounded-xl overflow-hidden shadow-sm card-hover p-5 sm:p-6"
                             style="--item-index: {position()};"
                             role="article">
                        <div class="flex items-start justify-between text-xs sm:text-sm text-gray-500 mb-3">
                            <div class="flex items-center">
                                <i class="fa fa-clock-o mr-1"></i>
                                <span class="formatted-time">
                                    <span class="original-time"><xsl:value-of select="pubDate"/></span>
                                </span>
                            </div>
                            <xsl:if test="author">
                                <div class="flex items-center ml-2">
                                    <i class="fa fa-user-o mr-1"></i>
                                    <span><xsl:value-of select="author"/></span>
                                </div>
                            </xsl:if>
                        </div>

                        <h3 class="text-lg sm:text-xl font-bold mb-3 leading-tight text-balance">
                            <a href="{link}" target="_blank" class="hover:text-primary transition-colors">
                                <xsl:value-of select="title"/>
                            </a>
                        </h3>

                        <div class="text-gray-600 text-sm sm:text-base leading-relaxed mb-4 line-clamp-3">
                            <xsl:value-of select="description" disable-output-escaping="yes"/>
                        </div>

                        <a href="{link}" target="_blank"
                           class="inline-flex items-center text-primary font-medium hover:text-secondary transition-colors text-sm sm:text-base">
                            阅读更多 <i class="fa fa-arrow-right ml-2"></i>
                        </a>
                    </article>
                </xsl:for-each>
            </div>
        </main>

        <!-- 页脚 -->
        <footer class="bg-dark text-gray-300 mt-16">
            <div class="max-w-content mx-auto px-4 py-10 sm:py-12">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-8 sm:gap-10">
                    <!-- 关于站点 -->
                    <div>
                        <h3 class="text-xl font-bold text-white mb-4">
                            <xsl:value-of select="rss/channel/title"/>
                        </h3>
                        <p class="mb-5 text-sm sm:text-base leading-relaxed">
                            <xsl:value-of select="rss/channel/description"/>
                        </p>
                        <div class="flex flex-col sm:flex-row gap-5 mt-4 text-sm sm:text-base">
                            <!-- 个人主页 -->
                            <a href="https://www.sumi233.top" target="_blank" rel="noopener" class="flex items-center text-gray-300 hover:text-white transition-colors group">
                                <i class="fa fa-home mr-2 text-gray group-hover:text-white"></i>
                                小站主页
                            </a>

                            <!-- E-Mail -->
                            <a href="mailto:2096231523@qq.com" class="flex items-center text-gray-300 hover:text-white transition-colors group">
                                <i class="fa fa-envelope mr-2 text-gray group-hover:text-white"></i>
                                邮箱地址
                            </a>

                            <!-- GitHub -->
                            <a href="https://github.com/huang233893" target="_blank" rel="noopener" class="flex items-center text-gray-300 hover:text-white transition-colors group">
                                <i class="fa fa-github mr-2 text-gray group-hover:text-white"></i>
                                GitHub主页
                            </a>
                        </div>
                    </div>

                    <!-- 快速链接 -->
                    <div>
                        <h3 class="text-lg font-semibold text-white mb-4">快速链接</h3>
                        <ul class="space-y-3 text-sm sm:text-base">
                            <li>
                                <a href="{rss/channel/link}" target="_blank"
                                   class="flex items-center hover:text-white transition-colors group">
                                    <i class="fa fa-external-link mr-2 text-gray group-hover:text-white"></i>
                                    访问网站
                                </a>
                            </li>
                            <li>
                                <a href="{rss/channel/atom:link[@rel='self']/@href}"
                                   class="flex items-center hover:text-white transition-colors group">
                                    <i class="fa fa-rss mr-2 text-gray group-hover:text-white"></i>
                                    RSS 源
                                </a>
                            </li>
                            <li>
                                <a href="{rss/channel/link}/about" target="_blank"
                                   class="flex items-center hover:text-white transition-colors group">
                                    <i class="fa fa-envelope-o mr-2 text-gray group-hover:text-white"></i>
                                    联系我们
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- 版权信息 -->
                <div class="border-t border-gray-700 mt-10 pt-8 text-center text-xs sm:text-sm text-gray-400">
                    <p>
                        © <xsl:value-of select="substring(rss/channel/lastBuildDate, 21, 4)"/>
                        <xsl:value-of select="rss/channel/title"/> 版权所有
                    </p>
                </div>
            </div>
        </footer>

        <!-- 返回顶部按钮（增大触控区域） -->
        <button id="backToTop"
                class="fixed bottom-5 right-5 bg-primary text-white w-12 h-12 sm:w-14 sm:h-14 rounded-full shadow-lg flex items-center justify-center opacity-0 invisible transition-all duration-300 hover:bg-secondary focus:outline-none focus:ring-2 focus:ring-white"
                aria-label="返回顶部">
            <i class="fa fa-chevron-up text-sm sm:text-base"></i>
        </button>

        <!-- 脚本：时间格式化 + 返回顶部 -->
        <script>
            function formatEnglishDateToChinese(englishDateStr) {
                const date = new Date(englishDateStr);
                if (isNaN(date.getTime())) return englishDateStr;

                const weekdays = ['周日', '周一', '周二', '周三', '周四', '周五', '周六'];
                const months = ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'];

                const year = date.getFullYear();
                const month = months[date.getMonth()];
                const day = date.getDate();
                const weekday = weekdays[date.getDay()];
                const hours = String(date.getHours()).padStart(2, '0');
                const minutes = String(date.getMinutes()).padStart(2, '0');
                const seconds = String(date.getSeconds()).padStart(2, '0');

                return `${year}年${month}${day}日 ${weekday} ${hours}:${minutes}:${seconds}`;
            }

            document.addEventListener('DOMContentLoaded', () => {
                document.querySelectorAll('.formatted-time').forEach(el => {
                    const original = el.querySelector('.original-time');
                    if (original) {
                        const formatted = formatEnglishDateToChinese(original.textContent.trim());
                        el.innerHTML = `<span class="original-time">${original.textContent}</span>${formatted}`;
                    }
                });
            });

            // 返回顶部按钮逻辑
            const backToTop = document.getElementById('backToTop');
            window.addEventListener('scroll', () => {
                if (window.pageYOffset > 300) {
                    backToTop.classList.remove('opacity-0', 'invisible');
                    backToTop.classList.add('opacity-100', 'visible');
                } else {
                    backToTop.classList.remove('opacity-100', 'visible');
                    backToTop.classList.add('opacity-0', 'invisible');
                }
            });

            backToTop.addEventListener('click', () => {
                window.scrollTo({ top: 0, behavior: 'smooth' });
            });
        </script>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>
