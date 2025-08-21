<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>图片相册 - 博客园</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="main-content">
        <div class="page-header">
            <h1>图片相册</h1>
            <div class="breadcrumb">
                <a href="index.jsp">首页</a> &raquo; <span>图片相册</span>
            </div>
        </div>

        <div class="album-categories">
            <h3>分类浏览</h3>
            <ul class="category-list">
                <li class="active"><a href="#">全部</a></li>
                <li><a href="#">技术截图</a></li>
                <li><a href="#">项目展示</a></li>
                <li><a href="#">会议活动</a></li>
                <li><a href="#">技术图表</a></li>
            </ul>
        </div>

        <div class="image-gallery">
            <div class="image-item">
                <a href="images/thumb1.jpg" class="image-link">
                    <img src="images/thumb1.jpg" alt="thumb1.jpg">
                </a>
                <div class="image-title">thumb1.jpg</div>
                <div class="image-meta">上传: 2025-06-9 | 浏览: 128</div>
            </div>

            <div class="image-item">
                <a href="images/thumb2.jpg" class="image-link">
                    <img src="images/thumb2.jpg" alt="thumb2.jpg">
                </a>
                <div class="image-title">thumb2.jpg</div>
                <div class="image-meta">上传: 2025-06-09 | 浏览: 95</div>
            </div>

            <div class="image-item">
                <a href="images/thumb3.jpg" class="image-link">
                    <img src="images/thumb3.jpg" alt="thumb3.jpg">
                </a>
                <div class="image-title">thumb3.jpg</div>
                <div class="image-meta">上传: 2025-06-09 | 浏览: 112</div>
            </div>

            <div class="image-item">
                <a href="images/thumb4.jpg" class="image-link">
                    <img src="images/thumb4.jpg" alt="thumb4.jpg">
                </a>
                <div class="image-title">thumb4.jpg</div>
                <div class="image-meta">上传: 2025-06-09 | 浏览: 87</div>
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
            <h3>上传图片</h3>
            <div class="upload-box">
                <p>登录后可以上传自己的技术图片</p>
                <a href="login.jsp" class="btn-upload">登录上传</a>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>