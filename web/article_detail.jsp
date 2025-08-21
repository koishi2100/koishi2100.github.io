<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>图论-博客园</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp"/>

<div class="container">
    <div class="main-content">
        <article class="article-detail">
            <h1>图论 - 网络流初步</h1>
            <div class="article-meta">
                <span>发布时间: 2025-06-09</span>
                <span>阅读: 256</span>
                <span>评论: 1</span>
                <span>分类: <a href="#">图论</a></span>
            </div>

            <div class="article-content">
                <p>图论 (Graph theory) 是数学的一个分支，图是图论的主要研究对象。图 (Graph) 是由若干给定的顶点及连接两顶点的边所构成的图形，这种图形通常用来描述某些事物之间的某种特定关系。顶点用于代表事物，连接两顶点的边则用于表示两个事物间具有这种关系</p>

                <h2>网络流</h2>
                <p>一个网络`G=(V,E)`，是一张有向图，图中每条边 $(x,y)\in E$ 都有一个给定的权值`c(x,y)` ，称为边的**容量**，特别的诺$(x,y)\notin E$，则`c(x,y) = 0` 。图中还有两个指定的特殊节点 **源点S** 和 **汇点T**   (S != T)。</p>
                <ul>
                    <li><strong>容量限制</strong>：f(x,y) <= c(x,y)</li>
                    <li><strong>斜对称</strong>：f(x,y) = -f(y,x)</li>
                    <li><strong>流量守恒</strong>：$\forall_{u\ne S,u \ne T}\ f(u) = \sum_{x \in V} f(u, x) - \sum_{x \in V} f(x, u) = 0$   </li>
                </ul>
                <p>`f()`称为网络的流量函数，对于$(x,y)\in E$，`f(x,y)`称为边的**流量**，`c(x,y) - f(x,y)`称为边的剩余容量</p>
                <p>$\sum_{(S,v)\in E} f(S,v)$，为整个网络的流量(其中S表示源点)</p>

                <br>
                <h3>最大流</h3>
                <p>对于一个给定的网络，合法流函数f()有很多。其中使得整个网络的流量最大的流函数被称为网络的最大流。</p>
                <br>
                <h4>Edmondsd-Karp算法</h4>
                <p>时间复杂度O(NM^2)，实际效率较高，一般能处理10^3 ~ 10^4 规模的网络</p>
                <p>每次bfs遍历整个[残量网络](网络中所有节点以及剩余容量大于0的边构成的子图)，找出任意一条增广路，同时计算路径上各边剩余流量的最小值minf，显然可以让一股流沿着增广路从S流向T，网络的流量就可以增加minf。直到网络上不存在增广路为止。</p>
                <pre><code>const int N = 205,M = 10004;
const int INF = 0x3f3f3f3f;
int n,m,s,t;
long long maxflow;
int h[N],e[M],ne[M],idx;
long long w[M];//容量
long long rest[N];//记录各边剩余容量的最小值
int pre[M];//记录点x是从哪条边过来的
bool vis[N];

void add(int x,int y,int z){
	w[idx] = z,e[idx] = y,ne[idx] = h[x],h[x] = idx++;
}

bool bfs(){
	memset(vis,0,sizeof vis);
	q.push(s);
	vis[s] = 1;
	rest[s] = INF;
	while(q.size()){
		int x = q.front();
		q.pop();
		for(int i = h[x];~i;i = ne[i]){
			int y = e[i];
			if(vis[y] || w[i] == 0) continue;
			rest[y] = min(rest[x],w[i]);
			pre[y] = i;
			q.push(y);
			vis[y] = 1;
			if(y == t) return 1;
		}
	}
	return 0;
}

int update(){//将流过的路径容量减少minf,反边增加minf
	int x = t;
	while(x != s){
		int i = pre[x];
		w[i] -= rest[t];
		w[i^1] += rest[t];
		x = e[i^1];
	}
	return rest[t];//网络的流量可以增加最小值minf
}

int main(){
	memset(h,-1,sizeof h);
	cin >> n >> m >> s >> t;
	for(int i = 1;i <= m;i++){
		int x,y,z;cin >> x >> y >> z;
			add(x,y,z);add(y,x,0);
	}
	while(bfs()) maxflow += update();
	cout << maxflow;

    return 0;
}
</code></pre>
                <br>
                <h4>Dinic</h4>

                <p>时间复杂度$O(N^2M)$，实际效率较高，能处理 10^4~10^5 规模的网络。特别地，在求解二分图最大匹配时间复杂度为$O(M \sqrt{N})$。</p>

                <p>EK算法每次只找出一条增广路，而Dinic可以一次找出多条。</p>

                <ol><li>在[残量网络]上bfs求出节点的层次，构造[分层图]。</li><li>在分层图上dfs寻找增广路，回溯时更新边权。</li></ol>

                <p>多态允许不同类的对象对同一消息做出不同的响应：</p>

                <pre><code>const int INF = 0x3f3f3f3f;
const int N = 205,M = 10004;
int n,m,s,t;
long long maxflow;
int h[N],e[M],ne[M],w[M],idx;
int d[N];
int now[N];//当前弧优化

void add(int a,int b,int c){
	w[idx] = c,e[idx] = b,ne[idx] = h[a],h[a] = idx++;
}

bool bfs(){//在残量网络上构造分层图
	memset(d,0,sizeof d);
	q.push(s);
	d[s] = 1;
	now[s] = h[s];
	while(q.size()){
		int x = q.front();
		q.pop();
		for(int i = h[x];~i;i = ne[i]){
			int y = e[i];
			if(!w[i] || d[y]) continue;
			d[y] = d[x] + 1;
			now[y] = h[y];
			q.push(y);
			if(y == t) return 1;
		}
	}
	return 0;
}

int dfs(int x,int flow){//flow表示经过该点的剩余流量
	if(x == t) return flow;
	int res = 0;//res表示经过该点的所有流量和
	for(int i = now[x];~i && flow;i = ne[i]){
		now[x] = i;//当前弧优化
		int y = e[i];
		if(!w[i] || d[y] != d[x] + 1) continue;
		int k = dfs(y,min(flow,w[i]));
		if(k == 0) d[y] = 0;//剪枝,去掉增广完毕的点
		w[i] -= k;
		w[i^1] += k;
		res += k;
		flow -= k;
	}
	return res;
}

int main(){
	memset(h,-1,sizeof h);
	cin >> n >> m >> s >> t;
	for(int i = 1;i <= m;i++){
		int a,b,c;cin >> a >> b >> c;
		add(a,b,c);add(b,a,0);
	}
	while(bfs()) maxflow += dfs(s,INF);
	cout << maxflow;
}</code></pre>

                <br>
                <h3>最小割</h3>

                <p>诺删除一个边集$E\prime \in E$后，S与T将不再连通， 则$E\prime$为该网络的一个割。容量之和最小的割称为网络的<strong>最小割</strong>。</p>

                <p><strong>最大流最小割定理</strong>：任何一个网络的最大流量等于最小割中边的容量之和，即“最大流=最小割”</p>

                <h4>最大权闭合图</h4>

                <p>给定一张有向图，每个点都有一个权值a[i]（可能 &lt;= 0）,你需要选择权值和最大的一组点集，满足：每个点的后继节点都必须包含在点集中。</p>

                <p><strong>结论</strong>：建立超级源点s和超级汇点t，诺节点u权值为正，则连边(s,u,a[i])；诺节点u权值为负，则连边(u,t,-a[i])；权值为0不用连，原图上所有边权改为$\infin$。所有反边边权全为0，跑最大流，答案即为<strong>所有正权点之和减去最小割</strong>。</p>

                <br>
                <h3>费用流</h3>

                <p>给定一个网络$G=(V,E)$，每条边除了有容量限制<code>c(x,y)</code>外，还有一个单位流量的费用<code>w(x,y)</code>，当<code>(x,y)</code>的流量为<code>f(x,y)</code>时，需要花费<code>f(x,y) * w(x,y)</code>的费用。<code>w</code>也满足斜对称性质，即<code>w(x,y) = -w(y,x)</code>。</p>

                <p>使该网络中花费最小的最大流称为<strong>最小费用最大流</strong>。注意：费用流的前提是最大流。</p>

                <p><strong>SSP算法</strong>：每次寻找单位费用最小的增广路进行增广，直到图上不存在增广路为止。时间复杂度最坏为$O(nmf)$，其中<code>f</code>表示网络的最大流。实现时，只需将 EK 算法或 Dinic 算法中找增广路的过程，替换为用最短路算法寻找单位费用最小的增广路即可。需要保证网络没有负圈。</p>

            </div>

            <div class="article-tags">
                <span>标签: </span>
                <a href="#">图论</a>
                <a href="#">网络流</a>
                <a href="#">SPFA</a>
                <a href="#">最大流</a>
                <a href="#">最小割</a>
                <a href="#">上下界费用流</a>
            </div>

            <div class="article-actions">
                <button class="btn-like">赞 (45)</button>
                <button class="btn-share">分享</button>
                <button class="btn-bookmark">收藏</button>
            </div>
        </article>

        <div class="comments-section">
            <h3>评论 (1)</h3>

            <div class="comment-list">

                <div class="comment-item">
                    <div class="comment-header">
                        <img src="images/user7.jpg" alt="用户头像" class="comment-avatar">
                        <span class="comment-author">刘俊杰</span>
                        <span class="comment-date">2025-06-09 14:45</span>
                    </div>
                    <div class="comment-content">
                        前排支持！
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
                            <span class="comment-date">2025-06-09 15:20</span>
                        </div>
                        <div class="comment-content">
                            感谢支持！
                        </div>
                        <div class="comment-actions">
                            <a href="#">回复</a>
                            <a href="#">赞 (3)</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="add-comment">
                <h4>发表评论</h4>
                <form id="comment-form">
                    <div class="form-group">
                        <label for="comment-name">姓名</label>
                        <input type="text" id="comment-name" required>
                    </div>
                    <div class="form-group">
                        <label for="comment-email">邮箱</label>
                        <input type="email" id="comment-email" required>
                    </div>
                    <div class="form-group">
                        <label for="comment-content">评论内容</label>
                        <textarea id="comment-content" placeholder="请输入评论内容..." rows="5" required></textarea>
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
            <h3>相关文章</h3>
            <ul class="related-articles">
                <li><a href="#">强连通分量</a></li>
                <li><a href="#">Tarjan算法</a></li>
                <li><a href="#">SPFA最短路</a></li>
            </ul>
        </div>

        <div class="sidebar-widget">
            <h3>作者其他文章</h3>
            <ul class="author-articles">
                <li><a href="#">欧拉回路</a></li>
                <li><a href="#">最小生成树</a></li>
                <li><a href="#">最近公共祖先</a></li>
                <li><a href="#">可持久化线段树</a></li>
            </ul>
        </div>

        <div class="sidebar-widget">
            <h3>文章目录</h3>
            <ul class="article-toc">
                <li><a href="#part1">最大流</a></li>
                <li><a href="#part2">最小割</a></li>
                <li><a href="#part3">费用流</a></li>
            </ul>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"/>
</body>
</html>