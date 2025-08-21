<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>博客文章 - 博客园</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
  <div class="main-content">
    <div class="page-header">
      <h1>博客文章</h1>
      <div class="breadcrumb">
        <a href="index.jsp">首页</a> &raquo; <span>博客文章</span>
      </div>
    </div>

    <div class="filter-bar">
      <div class="filter-options">
        <span>分类：</span>
        <select>
          <option>全部</option>
          <option>Java开发</option>
          <option>前端技术</option>
          <option>数据库</option>
          <option>运维部署</option>
        </select>

        <span>排序：</span>
        <select>
          <option>最新发布</option>
          <option>最多阅读</option>
          <option>最多评论</option>
        </select>
      </div>

      <div class="search-article">
        <input type="text" placeholder="搜索文章...">
        <button type="button">搜索</button>
      </div>
    </div>

    <div class="article-list">
      <div class="article-item">
        <h2><a href="article_detail.jsp?id=1">网络流简介</a></h2>
        <div class="article-meta">
          <span>分类: <a href="#">图论</a></span>
          <span>发布时间: 2025-06-09</span>
          <span>阅读: 114</span>
          <span>评论: 2</span>
        </div>
        <p class="summary">图论 (Graph theory) 是数学的一个分支，图是图论的主要研究对象。本文主要介绍网络流相关的基本知识...</p>
        <div class="article-tags">
          <span>标签: </span>
          <a href="#">图论</a>
          <a href="#">网络流</a>
          <a href="#">最大流</a>
        </div>
      </div>
      <div class="article-item">
        <h2><a href="article_detail.jsp?id=1">Vim入门教程</a></h2>
        <div class="article-meta">
          <span>分类: <a href="#">Vim</a></span>
          <span>发布时间: 2025-06-09</span>
          <span>阅读: 514</span>
          <span>评论: 1</span>
        </div>
        <p class="summary">主要介绍最最基础的vim操作。包括命令、编辑两个模式之间的切换，以及保存、退出之类的最基本操作...</p>
        <div class="article-tags">
          <span>标签: </span>
          <a href="#">Vim</a>
        </div>
      </div>

    </div>

    <div class="pagination">
      <a href="#" class="prev">&laquo; 上一页</a>
      <a href="#" class="active">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#">4</a>
      <a href="#">5</a>
      <a href="#" class="next">下一页 &raquo;</a>
    </div>
  </div>

  <div class="sidebar">
    <div class="sidebar-widget">
      <h3>热门文章</h3>
      <ul class="popular-articles">
        <li><a href="#">网络流简介</a> <span class="views">(114)</span></li>
        <li><a href="#">Vim入门教程</a> <span class="views">(514)</span></li>
      </ul>
    </div>

    <div class="sidebar-widget">
      <h3>最新评论</h3>
      <ul class="recent-comments">
        <li>
          <span class="comment-author">用户1</span>：
          <a href="#">非常棒的文章！</a>
        </li>
        <li>
          <span class="comment-author">用户2</span>：
          <a href="#">感谢分享</a>
        </li>
        <li>
          <span class="comment-author">用户3</span>：
          <a href="#">前排</a>
        </li>
      </ul>
    </div>

    <div class="sidebar-widget">
      <h3>归档</h3>
      <ul class="archive-list">
        <li><a href="#">2025年6月</a> (15)</li>
        <li><a href="#">2025年5月</a> (22)</li>
        <li><a href="#">2025年4月</a> (18)</li>
        <li><a href="#">2025年3月</a> (20)</li>
        <li><a href="#">2025年2月</a> (16)</li>
      </ul>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>