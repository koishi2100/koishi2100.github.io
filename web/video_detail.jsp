<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>基础教程 - 博客园</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="main-content">
        <div class="video-detail">
            <h1>动态规划基础</h1>
            <div class="video-meta">
                <span>分类: <a href="#">算法</a></span>
                <span>时长: 1:42</span>
                <span>播放: 256</span>
                <span>评论: 1</span>
                <span>上传: 2025-06-09</span>
            </div>
            <video width="800" height="600" controls="controls">
                <source src="images/video-player.mp4" type="audio/mp4">
            </video>

            <div class="video-desc">
                <h3>简介</h3>
                <p>本视频详细讲解动态规划的基础应用，包括：</p>
                <ul>
                    <li>背包问题</li>
                    <li>线性DP</li>
                    <li>区间DP</li>
                    <li>计数DP</li>
                    <li>数位DP</li>
                    <li>树形DP</li>
                    <li>状态压缩DP</li>
                    <li>记忆化搜索</li>
                    <li>常见的DP优化技巧</li>
                </ul>
                <p>通过实际代码演示，帮助初学者理解动态规划的核心思想，为后续学习打下坚实基础。</p>

                <div class="video-resources">
                    <h4>学习资源</h4>
                    <p><a href="#">示例代码下载</a></p>
                    <p><a href="#">PPT课件下载</a></p>
                </div>
            </div>

            <div class="video-actions">
                <button class="btn-like">赞 (68)</button>
                <button class="btn-collect">收藏</button>
                <button class="btn-share">分享</button>
            </div>
        </div>

        <div class="comments-section">
            <h3>评论 (24)</h3>

            <div class="comment-list">
                <div class="comment-item">
                    <div class="comment-header">
                        <img src="images/user9.jpg" alt="用户头像" class="comment-avatar">
                        <span class="comment-author">原神高手</span>
                        <span class="comment-date">2025-06-09 11:07</span>
                    </div>
                    <div class="comment-content">
                        入门到入土
                    </div>
                    <div class="comment-actions">
                        <a href="#">回复</a>
                        <a href="#">赞 (5)</a>
                    </div>

                    <!-- 回复评论 -->
                    <div class="comment-reply">
                        <div class="comment-header">
                            <img src="images/avatar.jpg" alt="博主头像" class="comment-avatar">
                            <span class="comment-author">博主</span>
                            <span class="comment-date">2025-06-09 13:45</span>
                        </div>
                        <div class="comment-content">
                            非常好评论，使我指针旋转，爱来自瓷器。
                        </div>
                        <div class="comment-actions">
                            <a href="#">回复</a>
                            <a href="#">赞 (15)</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="add-comment">
                <h4>发表评论</h4>
                <form id="video-comment-form">
                    <div class="form-group">
                        <label for="video-comment-name">姓名</label>
                        <input type="text" id="video-comment-name" required>
                    </div>
                    <div class="form-group">
                        <label for="video-comment-email">邮箱</label>
                        <input type="email" id="video-comment-email" required>
                    </div>
                    <div class="form-group">
                        <label for="video-comment-content">评论内容</label>
                        <textarea id="video-comment-content" placeholder="请输入评论内容..." rows="5" required></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn-submit">提交评论</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="sidebar">
        <div class="sidebar-widget">
            <h3>相关视频</h3>
            <ul class="related-videos">
                <li>
                    <a href="#">
                        <img src="images/video-related1.jpg" alt="相关视频">
                    </a>
                    <span>单调队列优化DP</span>
                </li>
                <li>
                    <a href="#">
                        <img src="images/video-related3.jpg" alt="相关视频">
                    </a>
                    <span>线段树套平衡树</span>
                </li>
            </ul>
        </div>

        <div class="sidebar-widget">
            <h3>视频标签</h3>
            <div class="tag-cloud">
                <a href="#">算法</a>
                <a href="#">动态规划</a>
            </div>
        </div>

        <div class="sidebar-widget">
            <h3>推荐视频</h3>
            <ul class="recommended-videos">
                <li><a href="#">如何在Codeforces快速上分？</a></li>
                <li><a href="#">香蕉道防守秘籍</a></li>
                <li><a href="#">[星际拓荒]管式流动攻略</a></li>
                <li><a href="#">三角符文汉化补丁</a></li>
            </ul>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>