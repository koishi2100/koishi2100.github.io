<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>登录 - 博客园</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
  <div class="login-container">
    <div class="login-form">
      <h2>用户登录</h2>
      <form id="login-form">
        <div class="form-group">
          <label for="username">用户名</label>
          <input type="text" id="username" placeholder="请输入用户名" required>
        </div>

        <div class="form-group">
          <label for="password">密码</label>
          <input type="password" id="password" placeholder="请输入密码" required>
        </div>

        <div class="form-group remember">
          <input type="checkbox" id="remember">
          <label for="remember">记住我</label>
          <a href="#" class="forgot-password">忘记密码?</a>
        </div>

        <div class="form-group">
          <button type="submit" class="btn-login">登录</button>
        </div>

        <div class="form-group">
          <div class="social-login">
            <p>其他登录方式:</p>
            <a href="#" class="btn-qq">QQ登录</a>
            <a href="#" class="btn-wechat">微信登录</a>
          </div>
        </div>
      </form>

      <div class="register-link">
        还没有账号? <a href="register.jsp">立即注册</a>
      </div>
    </div>

    <div class="login-info">
      <h3>登录后您可以：</h3>
      <ul>
        <li>发表评论参与讨论</li>
        <li>收藏喜欢的文章和视频</li>
        <li>在留言板与博主交流</li>
        <li>上传自己的技术图片和视频</li>
        <li>进入后台管理系统</li>
      </ul>

      <div class="admin-login">
        <h3>博主后台登录</h3>
        <p>如果你是博主，请从这里登录后台管理系统：</p>
        <a href="admin/dashboard.jsp" class="btn-admin">后台管理登录</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>