<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>图片管理 - 技术博客园</title>
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
      <li class="active"><a href="image_manage.jsp">图片管理</a></li>
      <li><a href="video_manage.jsp">视频管理</a></li>
      <li><a href="#">评论管理</a></li>
      <li><a href="#">用户管理</a></li>
      <li><a href="#">系统设置</a></li>
    </ul>
  </div>

  <div class="admin-content">
    <h2>图片管理</h2>

    <div class="admin-actions">
      <button class="btn-add">上传图片</button>
      <div class="admin-search">
        <input type="text" placeholder="搜索图片名称...">
        <button type="button">搜索</button>
      </div>
    </div>

    <div class="image-manage-container">
      <div class="image-upload-box">
        <h3>上传新图片</h3>
        <div class="upload-area">
          <div class="upload-icon">+</div>
          <p>拖放图片到此处或点击选择</p>
          <input type="file" id="image-upload" accept="image/*">
        </div>
        <div class="upload-form">
          <div class="form-group">
            <label>图片标题</label>
            <input type="text">
          </div>
          <div class="form-group">
            <label>图片分类</label>
            <select>
              <option>技术截图</option>
              <option>项目展示</option>
              <option>会议活动</option>
              <option>技术图表</option>
            </select>
          </div>
          <div class="form-group">
            <label>图片描述</label>
            <textarea rows="3"></textarea>
          </div>
          <button type="button" class="btn-upload">开始上传</button>
        </div>
      </div>

      <div class="image-list-container">
        <h3>图片列表</h3>
        <div class="image-list">
          <div class="image-item">
            <div class="image-preview">
              <img src="../images/thumb1.jpg" alt="thumb1.jpg">
            </div>
            <div class="image-info">
              <div class="image-title">thumb1.jpg</div>
              <div class="image-meta">分类: 技术截图 | 大小: 245KB</div>
              <div class="image-actions">
                <button class="btn-edit">编辑</button>
                <button class="btn-delete">删除</button>
              </div>
            </div>
          </div>

          <div class="image-item">
            <div class="image-preview">
              <img src="../images/thumb2.jpg" alt="thumb2.jpg">
            </div>
            <div class="image-info">
              <div class="image-title">thumb2.jpg</div>
              <div class="image-meta">分类: 技术图表 | 大小: 187KB</div>
              <div class="image-actions">
                <button class="btn-edit">编辑</button>
                <button class="btn-delete">删除</button>
              </div>
            </div>
          </div>

          <div class="image-item">
            <div class="image-preview">
              <img src="../images/thumb3.jpg" alt="thumb3.jpg">
            </div>
            <div class="image-info">
              <div class="image-title">thumb3.jpg</div>
              <div class="image-meta">分类: 技术图表 | 大小: 312KB</div>
              <div class="image-actions">
                <button class="btn-edit">编辑</button>
                <button class="btn-delete">删除</button>
              </div>
            </div>
          </div>
        </div>

        <div class="admin-pagination">
          <span>显示 1 到 3 条，共 56 条</span>
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
  </div>
</div>
</body>
</html>