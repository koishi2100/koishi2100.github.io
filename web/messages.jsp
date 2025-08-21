<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>留言板 - 博客园</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="main-content">
        <div class="page-header">
            <h1>留言板</h1>
            <div class="breadcrumb">
                <a href="index.jsp">首页</a> &raquo; <span>留言板</span>
            </div>
        </div>

        <div class="message-board">
            <div class="message-form">
                <h3>发表留言</h3>
                <form id="message-form">
                    <div class="form-group">
                        <label for="message-name">姓名</label>
                        <input type="text" id="message-name" required>
                    </div>
                    <div class="form-group">
                        <label for="message-email">邮箱</label>
                        <input type="email" id="message-email" required>
                    </div>
                    <div class="form-group">
                        <label for="message-content">留言内容</label>
                        <textarea id="message-content" placeholder="请输入留言内容..." rows="5" required></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn-submit">提交留言</button>
                    </div>
                </form>
            </div>

            <div class="message-list">
                <h3>留言列表</h3>

                <div class="message-item">
                    <div class="message-header">
                        <img src="images/user7.jpg" alt="用户头像" class="message-avatar">
                        <span class="message-author">刘俊杰</span>
                        <span class="message-date">2025-06-09 14:25</span>
                    </div>
                    <div class="message-content">
                        留言测试1
                    </div>

                    <!-- 博主回复 -->
                    <div class="message-reply">
                        <div class="message-header">
                            <img src="images/avatar.jpg" alt="博主头像" class="message-avatar">
                            <span class="message-author">博主</span>
                            <span class="message-date">2025-06-09 15:12</span>
                        </div>
                        <div class="message-content">
                            回复测试1
                        </div>
                    </div>
                </div>

                <div class="message-item">
                    <div class="message-header">
                        <img src="images/user8.jpg" alt="用户头像" class="message-avatar">
                        <span class="message-author">李懿鑫</span>
                        <span class="message-date">2025-06-09 10:38</span>
                    </div>
                    <div class="message-content">
                        丝之鸽什么时候出？
                    </div>

                    <!-- 博主回复 -->
                    <div class="message-reply">
                        <div class="message-header">
                            <img src="images/avatar.jpg" alt="博主头像" class="message-avatar">
                            <span class="message-author">博主</span>
                            <span class="message-date">2025-06-09 15:12</span>
                        </div>
                        <div class="message-content">
                            有生之年！
                        </div>
                    </div>
                </div>

                <div class="message-item">
                    <div class="message-header">
                        <img src="images/user9.jpg" alt="用户头像" class="message-avatar">
                        <span class="message-author">刘洋帆</span>
                        <span class="message-date">2025-06-09 16:45</span>
                    </div>
                    <div class="message-content">
                        什么神？什么动？
                    </div>

                    <!-- 博主回复 -->
                    <div class="message-reply">
                        <div class="message-header">
                            <img src="images/avatar.jpg" alt="博主头像" class="message-avatar">
                            <span class="message-author">博主</span>
                            <span class="message-date">2025-06-09 19:30</span>
                        </div>
                        <div class="message-content">
                            学习路径建议：
                            <ol>
                                <li>菜就多练</li>
                                <li>菜就多练</li>
                                <li>菜就多练</li>
                                <li>菜就多练</li>
                                <li>菜就多练</li>
                                <li>菜就多练</li>
                            </ol>
                            希望以上建议能帮助到你。
                        </div>
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
    </div>

    <div class="sidebar">
        <div class="sidebar-widget">
            <h3>留言须知</h3>
            <div class="message-guidelines">
                <p>1. 富强、民主、文明、和谐</p>
                <p>2. 自由、平等、公正、法治</p>
                <p>3. 爱国、敬业、诚信、友善</p>
            </div>
        </div>

        <div class="sidebar-widget">
            <h3>最新留言</h3>
            <ul class="recent-messages">
                <li>
                    <span class="message-author">刘俊杰</span>：
                    <a href="#">留言测试1</a>
                </li>
                <li>
                    <span class="message-author">李懿鑫</span>：
                    <a href="#">丝之鸽什么时候出？</a>
                </li>
                <li>
                    <span class="message-author">刘洋帆</span>：
                    <a href="#">原神，启动！</a>
                </li>
            </ul>
        </div>

        <div class="sidebar-widget">
            <h3>联系博主</h3>
            <ul class="contact-info">
                <li>邮箱: maofuhao@gmail.com</li>
                <li>QQ: 2100332159</li>
                <li>微信: Koishi2100</li>
                <li>GitHub: github.com/koishi2100</li>
            </ul>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>