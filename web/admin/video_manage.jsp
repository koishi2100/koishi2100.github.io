<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>视频管理 - 技术博客园</title>
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
            <li><a href="dashboard.jsp">控制面板</a></li>
            <li><a href="article_manage.jsp">文章管理</a></li>
            <li><a href="image_manage.jsp">图片管理</a></li>
            <li class="active"><a href="video_manage.jsp">视频管理</a></li>
            <li><a href="#">评论管理</a></li>
            <li><a href="#">用户管理</a></li>
            <li><a href="#">系统设置</a></li>
        </ul>
    </div>

    <div class="admin-content">
        <h2>视频管理</h2>

        <div class="admin-actions">
            <button class="btn-add">上传视频</button>
            <div class="admin-search">
                <input type="text" placeholder="搜索视频标题...">
                <button type="button">搜索</button>
            </div>
        </div>

        <table class="admin-table">
            <thead>
            <tr>
                <th width="5%">ID</th>
                <th width="25%">标题</th>
                <th width="15%">分类</th>
                <th width="10%">时长</th>
                <th width="10%">上传时间</th>
                <th width="10%">状态</th>
                <th width="10%">播放数</th>
                <th width="15%">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>动态规划基础</td>
                <td>算法</td>
                <td>1:42</td>
                <td>2025-06-09</td>
                <td>已发布</td>
                <td>1,256</td>
                <td>
                    <button class="btn-edit">编辑</button>
                    <button class="btn-delete">删除</button>
                </td>
            </tr>

            <tr>
                <td>2</td>
                <td>进阶教程</td>
                <td>开发</td>
                <td>18:30</td>
                <td>2025-06-09</td>
                <td>审核中</td>
                <td>0</td>
                <td>
                    <button class="btn-edit">编辑</button>
                    <button class="btn-delete">删除</button>
                    <button class="btn-publish">发布</button>
                </td>
            </tr>
            </tbody>
        </table>

        <div class="admin-pagination">
            <span>显示 1 到 4 条，共 32 条</span>
            <div class="pagination">
                <a href="#" class="prev">&laquo; 上一页</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">...</a>
                <a href="#" class="next">下一页 &raquo;</a>
            </div>
        </div>

        <div class="admin-section">
            <h3>上传新视频</h3>
            <div class="video-upload-form">
                <div class="form-row">
                    <div class="form-group">
                        <label>视频标题</label>
                        <input type="text">
                    </div>
                    <div class="form-group">
                        <label>视频分类</label>
                        <select>
                            <option>Java开发</option>
                            <option>Web前端</option>
                            <option>数据库</option>
                            <option>运维部署</option>
                            <option>算法</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>视频描述</label>
                        <textarea rows="3"></textarea>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label>视频文件</label>
                        <input type="file" accept="video/*">
                    </div>
                    <div class="form-group">
                        <label>封面图片</label>
                        <input type="file" accept="image/*">
                    </div>
                </div>

                <div class="form-row">
                    <button type="button" class="btn-upload">开始上传</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>