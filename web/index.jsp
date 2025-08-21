<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>博客园 - 首页</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/script.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="main-content">
        <div class="recommended-section">
            <h2>推荐阅读</h2>
            <div class="recommended-article">
                <h3><a href="article_detail.jsp?id=1">网络流简介</a></h3>
                <p class="summary">图论 (Graph theory) 是数学的一个分支，图是图论的主要研究对象。本文主要介绍网络流相关的基本知识...</p>
                <div class="meta">
                    <span>2025-06-09</span>
                    <span>阅读(114)</span>
                    <span>评论(1)</span>
                </div>
            </div>

            <div class="recommended-article">
                <h3><a href="article_detail.jsp?id=2">Vim入门教程</a></h3>
                <p class="summary">主要介绍最最基础的vim操作。包括命令、编辑两个模式之间的切换，以及保存、退出之类的最基本操作...</p>
                <div class="meta">
                    <span>2025-06-09</span>
                    <span>阅读(514)</span>
                    <span>评论(1)</span>
                </div>
            </div>
        </div>

        <div class="latest-section">
            <br><br>
            <h2>最新文章</h2>
            <div class="article-list">
                <div class="article-item">
                    <h3><a href="article_detail.jsp?id=3">网络流简介</a></h3>
                    <p class="summary">图论 (Graph theory) 是数学的一个分支，图是图论的主要研究对象。本文主要介绍网络流相关的基本知识...</p>
                    <div class="meta">
                        <span>2025-06-09</span>
                        <span>阅读(114)</span>
                        <span>评论(1)</span>
                    </div>
                </div>

                <div class="article-item">
                    <h3><a href="article_detail.jsp?id=4">Vim入门教程</a></h3>
                    <p class="summary">主要介绍最最基础的vim操作。包括命令、编辑两个模式之间的切换，以及保存、退出之类的最基本操作...</p>
                    <div class="meta">
                        <span>2025-06-09</span>
                        <span>阅读(514)</span>
                        <span>评论(1)</span>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="sidebar">
        <div class="sidebar-widget">
            <h3>博主信息</h3>
            <div class="author-info">
                <img src="images/avatar.jpg" alt="博主头像" class="avatar">
                <p><strong>幽々子❀</strong></p>
                <p>数据结构爱好者</p>
                <p>博客: 0.1年</p>
                <p>文章: 2篇</p>
                <p><a href="admin/dashboard.jsp" class="admin-login">后台管理</a></p>
            </div>
        </div>

        <div class="sidebar-widget">
            <h3>分类目录</h3>
            <ul class="category-list">
                <li><a href="#">数据结构</a> (56)</li>
                <li><a href="#">图论</a> (32)</li>
                <li><a href="#">数论</a> (24)</li>
                <li><a href="#">计算几何</a> (16)</li>
                <li><a href="#">动态规划</a> (12)</li>
                <li><a href="#">STL库</a> (8)</li>
            </ul>
        </div>

        <div class="sidebar-widget">
            <h3>最新图片</h3>
            <div class="latest-images">
                <img src="images/thumb1.jpg" alt="thumb1.jpg">
                <img src="images/thumb2.jpg" alt="thumb2.jpg">
                <img src="images/thumb3.jpg" alt="thumb3.jpg">
                <img src="images/thumb4.jpg" alt="thumb4.jpg">
            </div>
            <p class="text-right"><a href="images.jsp">更多图片>></a></p>
        </div>

        <div class="sidebar-widget">
            <h3>热门标签</h3>
            <div class="tag-cloud">
                <a href="#">Jsp</a>
                <a href="#">MySQL</a>
                <a href="#">C++</a>
                <a href="#">Linux</a>
                <a href="#">Java</a>
                <a href="#">Vim</a>
                <a href="#">Python</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>