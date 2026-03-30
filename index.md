---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
title: Yuyuko_个人网站测试

---

**oh hi!** ~~oh hi!~~  *oh hi!*  <u>oh hi!</u>

## Latex测试

<br>

$$
a^b \equiv \begin{cases}
  a^{b \bmod \varphi(m)},                &\gcd(a,m) =  1,                   \\
  a^b,                                   &\gcd(a,m)\ne 1, b <   \varphi(m), \\
  a^{(b \bmod \varphi(m)) + \varphi(m)}, &\gcd(a,m)\ne 1, b \ge \varphi(m).
\end{cases} \pmod m
$$

```cpp
#include <iostream>

int main(){
    std::cout << "oh hi!" << std::endl;

    return 0;
}
```


<br><br>
## Html测试

<head>
    <style>
        @import url(style.css);
    </style>
</head>
<body>
    <div class = "loading"> </div>
</body>
<iframe src="https://store.steampowered.com/widget/1030300/" frameborder="0" width="646" height="190"></iframe>


<form action="/" method="post">
    <label for="name">username:</label>
    <input type="text" id="name" name="name" required>

    <br>

    <label for="password">password:</label>
    <input type="password" id="password" name="password" required>

    <br>

    <label>radio:</label>
    <input type="radio" id="male" name="gender" value="male" checked>
    <label for="male">0</label>
    <input type="radio" id="female" name="gender" value="female">
    <label for="female">1</label>

    <br>

    <!-- 复选框 -->
    <input type="checkbox" id="subscribe" name="subscribe" checked>
    <label for="subscribe">checkbox</label>

    <br>

    <!-- 下拉列表 -->
    <label for="country">for:</label>
    <select id="country" name="country">
        <option value="op">下拉列表</option>
        <option value="cn">恋恋</option>
        <option value="usa">世界</option>
        <option value="uk">第一！</option>
    </select>

    <br>

    <!-- 提交按钮 -->
    <input type="submit" value="submit">
</form>

<br>


<audio controls="controls" height="100" width="100"> 
<source src = "/music/DearMoments.mp3">
</audio>
<button><a href = "https://www.bilibili.com">哔哩哔哩</a></button>

<div align="center">
    <font color="#005DA6">
        <p style="font-size:60px">一键投降装置</p>
        <p style="font-size:30px">人类必败！我要提前向AI大人投降</p>
        <p style="font-size:30px">请AI大人统治地球时放过我</p>
        <br>
        <p style="font-size:20px">点击按钮3次，向AI大人投降</p>
        <p>👇</p>
        <button style="font-size:150px">💊</button>
        <br>
    </font>
</div>


<button id="downloadBtn">下载gvim.7z</button>

<script>
  document.getElementById('downloadBtn').addEventListener('click', function() {
    const link = document.createElement('a');
    link.href = '/files/gvim.7z';
    link.download = 'gvim.7z';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  });
</script>
