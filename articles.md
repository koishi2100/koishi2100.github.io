---

title: 目录

---

---
<head>
<style>
    :root {
        --primary: #3498db;
        --secondary: #2ecc71;
        --accent: #e74c3c;
        --dark: #2c3e50;
        --light: #ecf0f1;
    }
    .card {
    background: #f8f9fa;
                border-radius: 10px;
    padding: 20px;
    margin: 20px 0;
            border-left: 5px solid var(--primary);
    }
    .problem-card {
        border-left-color: var(--accent);
    }
</style>
</head>

<body>
    {%- if site.posts.size > 0 -%}
        <h2 class="post-list-heading">{{ page.list_title | default: "Posts" }}</h2>
        <ul class="post-list">
        {%- for post in site.posts -%}
            <li>
            {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
            <span class="post-meta">{{ post.date | date: date_format }}</span>
            <h3>
                <a class="post-link" href="{{ post.url | relative_url }}">
                {{ post.title | escape }}
                </a>
                <p style="font-size:14px; color:#828282">
                    {{ post.introduction | escape }}
                </p>
            </h3>
            {%- if site.show_excerpts -%}
                {{ post.excerpt }}
            {%- endif -%}
            </li>
        {%- endfor -%}
        </ul>
    {%- else -%}
        <div class="card problem-card">
        <p>目前什么都没有哦</p>
        </div>
    {%- endif -%}

</body>
