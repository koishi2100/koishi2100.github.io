[参考文档 3.12.10 Documentation (python.org)](https://docs.python.org/zh-cn/3.12/index.html)

[下载 Download Python | Python.org](https://www.python.org/downloads/)

[Python 30分钟入门指南 · luogu-dev/cyaron Wiki (github.com)](https://github.com/luogu-dev/cyaron/wiki/Python-30分钟入门指南)



# 基本



## 输出

```py
print("hello world")
print(n)
```



## 输入

```py
n = input()
```



## 循环

```py
for i in range(1,n):	#从1~n-1
    print(i,end = ',')   #行尾换行改为','号,默认为换行
```



## 编码

> 切换编码形式，行首加入

```py
#coding=UTF-8
#coding=cp936
```





# 库

常用库及部分库函数



## math



返回值大多为浮点数



| 常量 |                      |      |
| ---- | -------------------- | ---- |
| pi   | 圆周率               |      |
| e    | 自然数               |      |
| inf  | 正无穷大浮点数       |      |
| nan  | 非数（not a number） |      |



| 函数           |                          |      |
| -------------- | ------------------------ | ---- |
| sqrt(x)        | 开平方                   |      |
| dist(x, y)     | 计算两个点的欧几里得距离 |      |
| ceil(x)        | 上取整                   |      |
| floor(x)       | 下取整                   |      |
| comb(n, m)     | n选m的组合数个数         |      |
| fabs(x)        | 绝对值                   |      |
| factorial(x)   | 阶乘                     |      |
| log(x, base)   | 返回以base为底x的对数    |      |
| gcd(x, y, ...) | 最大公约数               |      |
| lcd(x, y, ...) | 最小公倍数               |      |



## collections

### deque

双端队列，功能与list类似但插入和删除效率比list快

| q = deque([1, 2, 3, 4]) |                                                  |      |
| ----------------------- | ------------------------------------------------ | ---- |
| q.append(x)             | 在末尾添加元素                                   |      |
| q.apendleft(x)          | 在队首添加元素                                   |      |
| q.pop()                 | 弹出末尾元素                                     |      |
| q.popleft()             | 弹出队首元素                                     |      |
| q.insert(idx, x)        | 在idx位置插入元素x                               |      |
| q.remove(x)             | 移除第一个出现的x                                |      |
| q.extend(iterable)      | 在末尾扩展iterable的元素                         |      |
| q.extendleft(iterable)  | 在左侧扩展list的元素(会将iterable的元素翻转添加) |      |
| q.clear()               | 情况元素                                         |      |
| q.copy()                | 返回拷贝副本                                     |      |
| q.count(x)              | 返回deque中x出现的次数                           |      |
| q.index(x)              | 返回x第一次出现的位置                            |      |
| q.reverse()             | 将deque翻转                                      |      |
| q.rotate(x)             | 循环移位x步(x为正则右移，否则左移)               |      |





## heapq

堆队列算法

| heap.heapify(q)             |                             |      |
| --------------------------- | --------------------------- | ---- |
| heapq.heapify(q)            | 将列表q原地转换为堆         |      |
| heapq.heappush(q, x)        | 将x加入堆q                  |      |
| heapq.heappop(q)            | 弹出并返回堆的最小值        |      |
| heap.nsmallest(n, iterable) | 返回iterable中最小的n个元素 |      |
| heap.largest(n, iterable)   | 返回iterable中最大的n个元素 |      |
|                             |                             |      |
|                             |                             |      |







































