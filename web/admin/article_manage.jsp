<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>文章管理 - 博客园</title>
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
      <li class="active"><a href="article_manage.jsp">文章管理</a></li>
      <li><a href="image_manage.jsp">图片管理</a></li>
      <li><a href="video_manage.jsp">视频管理</a></li>
      <li><a href="#">评论管理</a></li>
      <li><a href="#">用户管理</a></li>
      <li><a href="#">系统设置</a></li>
    </ul>
  </div>

  <div class="admin-content">
    <h2>文章管理</h2>

    <div class="admin-actions">
      <button class="btn-add">新增文章</button>
      <div class="admin-search">
        <input type="text" placeholder="搜索文章标题...">
        <button type="button">搜索</button>
      </div>
    </div>

    <table class="admin-table">
      <thead>
      <tr>
        <th width="5%">ID</th>
        <th width="25%">标题</th>
        <th width="15%">分类</th>
        <th width="10%">作者</th>
        <th width="10%">发布时间</th>
        <th width="10%">状态</th>
        <th width="10%">阅读数</th>
        <th width="15%">操作</th>
      </tr>
      </thead>
      <tbody>
      <tr>
        <td>1</td>
        <td>网络流简介</td>
        <td>图论</td>
        <td>幽々子❀</td>
        <td>2025-06-09</td>
        <td>已发布</td>
        <td>256</td>
        <td>
          <button class="btn-edit">编辑</button>
          <button class="btn-delete">删除</button>
          <button class="btn-recommend">推荐</button>
        </td>
      </tr>
      <tr>
        <td>2</td>
        <td>Vim入门教程</td>
        <td>Vim</td>
        <td>幽々子❀</td>
        <td>2025-06-09</td>
        <td>已发布</td>
        <td>189</td>
        <td>
          <button class="btn-edit">编辑</button>
          <button class="btn-delete">删除</button>
          <button class="btn-recommend">推荐</button>
        </td>
      </tr>

      </tbody>
    </table>

    <div class="admin-pagination">
      <span>显示 1 到 10 条，共 128 条</span>
      <div class="pagination">
        <a href="#" class="prev">&laquo; 上一页</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">...</a>
        <a href="#" class="next">下一页 &raquo;</a>
      </div>
    </div>
  </div>
</div>
</body>
</html>