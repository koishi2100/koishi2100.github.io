<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>视频 - 博客园</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
  <div class="main-content">
    <div class="page-header">
      <h1>视频</h1>
      <div class="breadcrumb">
        <a href="index.jsp">首页</a> &raquo; <span>视频</span>
      </div>
    </div>

    <div class="video-categories">
      <h3>分类浏览</h3>
      <ul class="category-list">
        <li class="active"><a href="#">全部</a></li>
        <li><a href="#">开发</a></li>
        <li><a href="#">Web前端</a></li>
        <li><a href="#">数据结构</a></li>
        <li><a href="#">算法</a></li>
      </ul>
    </div>

    <div class="video-list">
      <div class="video-item">
        <div class="video-thumbnail">
          <a href="video_detail.jsp?id=1">
            <img src="images/video1.jpg" alt="动态规划">
            <div class="video-duration">1:42</div>
          </a>
        </div>
        <div class="video-info">
          <h3><a href="video_detail.jsp?id=1">动态规划</a></h3>
          <div class="video-meta">
            <span>分类: <a href="#">算法</a></span>
            <span>时长: 1:42</span>
            <span>播放: 1,256</span>
            <span>评论: 24</span>
          </div>
          <p class="video-desc">本视频主要介绍动态规划基础。</p>
        </div>
      </div>

      <div class="video-item">
        <div class="video-thumbnail">
          <a href="video_detail.jsp?id=2">
            <img src="images/video2.jpg" alt="进阶教程">
            <div class="video-duration">28:15</div>
          </a>
        </div>
        <div class="video-info">
          <h3><a href="video_detail.jsp?id=2">进阶教程</a></h3>
          <div class="video-meta">
            <span>分类: <a href="#">开发</a></span>
            <span>时长: 28:15</span>
            <span>播放: 985</span>
            <span>评论: 18</span>
          </div>
          <p class="video-desc">本视频主要介绍进阶内容。</p>
        </div>
      </div>

    </div>

    <div class="pagination">
      <a href="#" class="prev">&laquo; 上一页</a>
      <a href="#" class="active">1</a>
      <a href="#">2</a>
      <a href="#">3</a>
      <a href="#" class="next">下一页 &raquo;</a>
    </div>
  </div>

  <div class="sidebar">
    <div class="sidebar-widget">
      <h3>热门视频</h3>
      <ul class="popular-videos">
        <li>
          <a href="video_detail.jsp?id=1">
            <img src="images/video1-thumb.jpg" alt="热门视频">
          </a>
          <span>热门视频 (1,256)</span>
        </li>
        <li>
          <a href="video_detail.jsp?id=3">
            <img src="images/video3-thumb.jpg" alt="热门视频">
          </a>
          <span>热门视频 (1,132)</span>
        </li>
        <li>
          <a href="video_detail.jsp?id=5">
            <img src="images/video5-thumb.jpg" alt="热门视频">
          </a>
          <span>热门视频 (1,087)</span>
        </li>
      </ul>
    </div>

    <div class="sidebar-widget">
      <h3>最新评论</h3>
      <ul class="recent-comments">
        <li>
          <span class="comment-author">刘俊杰</span>：
          <a href="#">=====================</a>
        </li>
        <li>
          <span class="comment-author">刘洋帆</span>：
          <a href="#">资瓷资瓷资瓷资瓷资瓷资瓷资瓷资瓷资瓷资瓷</a>
        </li>
        <li>
          <span class="comment-author">李懿鑫</span>：
          <a href="#">前排前排前排前排前排前排前排前排前排前排</a>
        </li>
      </ul>
    </div>

    <div class="sidebar-widget">
      <h3>上传视频</h3>
      <div class="upload-box">
        <p>登录后可以上传自己的技术视频</p>
        <a href="login.jsp" class="btn-upload">登录上传</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>