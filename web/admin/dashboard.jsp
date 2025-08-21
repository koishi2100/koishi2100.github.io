<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理 - 博客园</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/admin.css">
</head>
<body>
<div class="admin-header">
    <div class="admin-logo">
        博客后台管理系统
        <a href="../index.jsp">返回主站</a>
    </div>
    <div class="admin-user">
        <span>管理员: 幽々子❀</span>
        <a href="../index.jsp">退出</a>
    </div>
</div>

<div class="admin-container">
    <div class="admin-sidebar">
        <ul class="admin-menu">
            <li class="active"><a href="dashboard.jsp">控制面板</a></li>
            <li><a href="article_manage.jsp">文章管理</a></li>
            <li><a href="image_manage.jsp">图片管理</a></li>
            <li><a href="video_manage.jsp">视频管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">用户管理</a></li>
            <li><a href="#">系统设置</a></li>
        </ul>
    </div>

    <div class="admin-content">
        <h2>控制面板</h2>

        <div class="admin-stats">
            <div class="stat-card">
                <div class="stat-value">2</div>
                <div class="stat-title">文章总数</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">4</div>
                <div class="stat-title">图片数量</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">2</div>
                <div class="stat-title">视频数量</div>
            </div>
            <div class="stat-card">
                <div class="stat-value">7</div>
                <div class="stat-title">评论总数</div>
            </div>
        </div>

        <div class="admin-section">
            <h3>最新评论</h3>
            <table class="admin-table">
                <thead>
                <tr>
                    <th>评论内容</th>
                    <th>文章/视频</th>
                    <th>评论者</th>
                    <th>时间</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>非常好内容！</td>
                    <td>网络流简介</td>
                    <td>刘俊杰</td>
                    <td>2025-06-09</td>
                    <td>
                        <button class="btn-edit">编辑</button>
                        <button class="btn-delete">删除</button>
                    </td>
                </tr>
                <tr>
                    <td>留言测试</td>
                    <td>网络流简介</td>
                    <td>李懿鑫</td>
                    <td>2025-06-09</td>
                    <td>
                        <button class="btn-edit">编辑</button>
                        <button class="btn-delete">删除</button>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="admin-section">
            <h3>系统信息</h3>
            <ul class="sys-info">
                <li>服务器: Tomcat/9.0.102</li>
                <li>Java版本: 21.8.0_351</li>
                <li>操作系统: Windows 11</li>
                <li>数据库: MySQL 8.0</li>
                <li>系统版本: Blog System v2.3.1</li>
                <li>最后登录: 2025-06-09 19:30:25</li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>