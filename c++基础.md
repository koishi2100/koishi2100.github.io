[TOC]



## c++头文件

```c++
#include <iostream>        //c++标准头文件
#include <bits/stdc++.h>   //c++万能头文件
#include "xxx.h"           //分文件
using nameapace std;
```



### 	define宏常量

> 宏常量没有数据类型，只是在预编译阶段进行简单的字符替换，不会进行编译检查，系统也不会为它分配内存
> ```c++
> #define N 3 + 2
> float a = 2 * N;
>     //预期结果是10，但实际确是8，相当于：
> float a = 2 * 3 + 2;
> ```
>

```c++
#define Day 7       //宏常量通常定义在main函数上方
```



### 	函数声明

```c++
int void swap1(int a,int b)   { int temp = a; a = b; b = temp;}   //值传递,只改变形参,不改变实参
int void swap2(int *p1, int *p2)  { int temp = *p1;*p1 = *p2;*p2 =temp;}  //地址传递,改变实参
void printArray(int *arr, int len) { for (int k = 0;k < len;k++) {cout << arr[k] << endl;}}//打印数组函数
//函数直接传数组名是地址传递
```



### 	结构体

```c++
struct teacher {int id; string name;}      //定义内嵌结构体
struct student { string name;   int age;   int score;struct teacher s1;/*内嵌结构体*/} s3;
struct student {  string name;  int age;   int score; }；//结构体数组
```

------



## 基本

```c++
#include <iostream>
using namespace std;

int main(){
   //这里写代码
    
    
return 0;
}
```



### 	const常量

> const常量是在运行时进行替换，并且在编译时会进行严格的类型检验，同时系统也会为常量分配内存。

```c++
const int MONTH = 12;	//const常量通常定义在main函数里面	
```



### 	数据类型 

> 可用sizeof()关键字判断某一类型所占内存大小

| 整型                | 占用空间                                  | 取值范围       |               |
| ------------------- | ----------------------------------------- | -------------- | ------------- |
| short(短整型)       | 2字节                                     | -2^15 ~ 2^15-1 | 32,767        |
| int(整型)           | 4字节                                     | -2^31 ~ 2^31-1 | 2,147,483,647 |
| long(长整形)        | win为4字节;Linux为4字节(32位),8字节(64位) | -2^31 ~ 2^31-1 |               |
| long long(长长整形) | 8字节                                     | -2^63 ~ 2^63-1 |               |



```c++
//数据类型临时强转
int a = 12345678,b = 1234;
long long c = 1LL * a * b;
double d = (double)a/(double)b;
```



> float类型表示小数时，在数字末尾显式地使用字母f表示单精度，否则编译器会默认将小数视为双精度浮点型（double），再进行类型转换（由double型转换为float型）如float a = 3.14f;

| 浮点型(实型)          | 占用空间 | 有效数字(整数+小数) |
| --------------------- | -------- | ------------------- |
| foat(单精度)          | 4字节    | 7位                 |
| double(双精度)        | 8字节    | 16位                |
| long double(高双精度) | 8字节    | 16位                |



- ```c++
  //字符(串)型
  char c = 'a';        //单个字符；使用cout<<(int)c;可查看其对应的ASCII码
  
  string str1 = "abcd";   //c++风格的字符串,str1[i]代表字符串中第i+1个字符
  char str2[] = "abcd";   //c语言风格的字符串
  ```


- ```c++
  //布尔类型       //0假1真
  bool flag1 = true;
  bool flag2 = false;
  ```



```c++
//科学计数法 
int a = 1e6;    	//1000000
double b = 1e-6; 	//0.000006
```



### 数据的输入/输出

> cin/cout运行速度没有 scanf/printf 快
>
> ```c++
> //在使用cin/cou前可以加入以下代码优化
> ios::sync_with_stdio(false);//加入后不能再与printf/scanf混用
> cin.tie(0);
>cout.tie(0);
> ```
> 

```c++
cin >> a >> b;
getline(cin,str1);     //带空格输入字符串 需含头文件string
```

```c++
cout << a << b << endl;
cout << str1 << endl;
```





### 转义字符

printf(“\n”);

```
\n		换行
\\		输出反斜杠 \
\t		水平制表符	8个字符为一组，不足8个则自动用空格补
\v		垂直制表符
\r		回车不换行（回到行首）
\b		退格(下划线光标左移一格，而非删除)
\'		输出单引号 '
\"		输出双引号 "
\?		输出问号 ?
%%		输出 %
\0		空字符(NULL)
```



### 运算符号

```c++
+  -  *  /  %(取余)
某个数的个位=a%10，十位=a/10%10，百位=a/100%10 ...
某个数的三次方=a*a*a
a++；//后置递增，先加后算
++a；//前置递增，先算后加
```

​	取余：
数学取余结果为非负数，而c++取余结果正负与被除数有关
如：数学：-7%3=2    c++：-7%3=-1

```c++
//c++实现数学取余	n%p
(n % p + p) % p
```





### 判断符号

```c++
1.==	2.!=	3.<    4.>    5.<=    6.>=
与:&&(一假全假)	 或:||(一真全真)	  非:!=
```



### 移位运算符

| 优先级 | 操作符                             | 描述                                                         | 例子                                                         | 结合性                                                                                                                                    . |
| :----- | :--------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| 1      | () [] -> . :: ++ --                | 调节优先级的括号操作符 数组下标访问操作符 通过指向对象的指针访问成员的操作符 通过对象本身访问成员的操作符 作用域操作符 后置自增操作符 后置自减操作符 | (a + b) / 4; array[4] = 2; ptr->age = 34; obj.age = 34; Class::age = 2; for( i = 0; i < 10; i++ ) ... for( i = 10; i > 0; i-- ) ... | 从左到右                                                     |
| 2      | ! ~ ++ -- - + * &                  | 逻辑取反操作符 按位取反(按位取补) 前置自增操作符 前置自减操作符 一元取负操作符 一元取正操作符 解引用操作符 取地址操作符 类型转换操作符 返回对象占用的字节数操作符 | if( !done ) ... flags = ~flags; for( i = 0; i < 10; ++i ) ... for( i = 10; i > 0; --i ) ... int i = -1; int i = +1; data = *ptr; address = &obj; int i = (int) floatNum; int size = sizeof(floatNum); | 从右到左                                                     |
| 3      | ->* .*                             | 在指针上通过指向成员的指针访问成员的操作符 在对象上通过指向成员的指针访问成员的操作符 | ptr->*var = 24; obj.*var = 24;                               | 从左到右                                                     |
| 4      | * / %                              | 乘法操作符 除法操作符 取余数操作符                           | int i = 2 * 4; float f = 10 / 3; int rem = 4 % 3;            | 从左到右                                                     |
| 5      | + -                                | 加法操作符 减法操作符                                        | int i = 2 + 3; int i = 5 - 1;                                | 从左到右                                                     |
| 6      | << >>                              | 按位左移操作符 按位右移操作符                                | int flags = 33 << 1; int flags = 33 >> 1;                    | 从左到右                                                     |
| 7      | < <= > >=                          | 小于比较操作符 小于或等于比较操作符 大于比较操作符 大于或等于比较操作符 | if( i < 42 ) ... if( i <= 42 ) ... if( i > 42 ) ... if( i >= 42 ) ... | 从左到右                                                     |
| 8      | == !=                              | 等于比较操作符 不等于比较操作符                              | if( i == 42 ) ... if( i != 42 ) ...                          | 从左到右                                                     |
| 9      | &                                  | 按位与操作符                                                 | flags = flags & 42;                                          | 从左到右                                                     |
| 10     | ^                                  | 按位异或操作符                                               | flags = flags ^ 42;                                          | 从左到右                                                     |
| 11     | \|                                 | 按位或操作符                                                 | flags = flags \| 42;                                         | 从左到右                                                     |
| 12     | &&                                 | 逻辑与操作符                                                 | if( conditionA && conditionB ) ...                           | 从左到右                                                     |
| 13     | \|\|                               | 逻辑或操作符                                                 | if( conditionA \|\| conditionB ) ...                         | 从左到右                                                     |
| 14     | ? :                                | 三元条件操作符                                               | int i = (a > b) ? a : b;                                     | 从右到左                                                     |
| 15     | = += -= *= /= %= &= ^= \|= <<= >>= | 赋值操作符 复合赋值操作符(加法) 复合赋值操作符(减法) 复合赋值操作符(乘法) 复合赋值操作符(除法) 复合赋值操作符(取余) 复合赋值操作符(按位与) 复合赋值操作符(按位异或) 复合赋值操作符(按位或) 复合赋值操作符(按位左移) 复合赋值操作符(按位右移) | int a = b; a += 3; b -= 4; a *= 5; a /= 2; a %= 3; flags &= new_flags; flags ^= new_flags; flags \|= new_flags; flags <<= 2; flags >>= 2; | 从右到左                                                     |
| 16     | ,                                  | 逗号操作符                                                   | for( i = 0, j = 0; i < 10; i++, j++ ) ...                    | 从左到右                                                     |



优先级低于加减：a >> b + c 相当于 a / 2^(b+c)

```c++
int a = 32; int n = 2;		//n为非负整数;
cout <<  (a >> n) << endl;	//>> 右移n位相当于 / 2^n
cout << a << endl;			//a的值不变
cout << (a << 1) << endl;	//<< 左移n位相当于 * 2^n
```











### pair类型

pair<数据类型,数据类型>变量名;
如：pair<int,string>p;

初始化：p = make_pair(20,"xiaomao");

赋值：p = {20,"xiaomao"};
cin >> p.first >> p.second;

```c++
p.first		//p中第一个成员
p.second	//p中第二个成员
p1 < p2		//支持比较运算，以first为第一关键字，second为第二关键字。(按字典序)
pair<int<pair<int,string>>p3;	//存储3个关键字
```


------



## 语句

### 三目运算符

```c++
a > b ? a1 : b1 = 999 ;     //如果命令输出命令a1，否则输出b1；
c = ( a > b ? a : b);      //如果a>b则赋值a给c，否则赋值b给c；
```



### if

```c++
if  (条件1）//条件为真(1)则执行
{ 命令1;       
    if (嵌入条件)  {命令1.1; }     else  { 命令1.2; }   
}   
else if （条件2)   {  命令 2; }
else if   (条件3)   {  命令3; }
......
else { 都不满足以上条件执行的命令; }
```



### switch

```c++
switch ( a )  {
case 5 : cout << "优秀" << endl; break;    //如果a=5,则输出"优秀"
case 4 : cout << "良好" << endl; break;     //如果a=4，则输出"良好"
default : cout << "不及格" << endl; break;   //其它情况，则输出"不及格"
} 
```





### while

```c++
while （条件）    //先判断条件，再执行语句
{ 命令；      //嵌套循环：
if (条件)  { 命令;continue; /*跳过本次循环中余下尚未执行的语句，继续下一次循环*/}
else if (条件)  { 命令;break;   /*强行结束循环*/ }
else  { 命令; } 
}   
```



### do..while

```c++
do { 命令 }   while (条件);//先执行命令，再判断条件，是否继续循环
```



### for

```c++
for (int a = 0; a <= 100; a++){if (a % 2 == 0)  { continue; }cout << a << endl;  }
//for (1.起始表达式; 2.循环条件; 4.末尾循环体)  { 3.循环语句;}
```



### goto

```c++
goto FLAG;        //直接跳转到FLAG所在语句
...
...
FLAG:
```







------



## 数组

//定义较大数组时需要定义成全局变量，且所有数组元素会初始化为0，如应将arr[1000] [1000] 定义在main函数上方(堆区)，否则会报错。

### 一维数组

#### 1.定义 

> 数组下标从0开始索引，注意下标不要越界

​    1.数据类型 数组名[数组长度];
​	2.数据类型 数组名[数组长度] = {值1,值2,...};
​	3.数据类型 数组名[] = {值1,值2,.....};

> 数组的初始化为0，int arr[10]{};若没有初始化且未对数组元素赋值，直接访问会初始化为一个随机值；
>
> ```c++
> int arr[3];cout << arr[0];	//随机值
> int arr2[3]{};cout << arr2[0];//初始化为0
> ```
>
> 

1. ```c++
   int arr[3];
   arr[0] = 1;    arr[1] = 2;    arr[2] = 3;
   ```
   
2. ```c++
   short arr[3] = {1,2}    //如果没填完，会用0填补剩余数据
   ```

3. ```c++
   string arr3[] = { 逸一时,误一世,逸久逸久罢逸龄};
   ```

   > 不支持c99的编译器不能用一下方式创建数组(如vs，vscode无法编译。dev c++可以)
   > int  a; cin >> a;  int arr[a] = {  };

#### 2.数组名

通过数组名统计整个数组占用内存大小

```c++
int arr[10] = { 1,2,3,4,5,6,7,8,9 };
cout << "整个数组占用内存空间为：" << sizeof(arr) << endl;
cout << "每个元素占用内存空间为：" << sizeof(arr[0]) << endl;
```

通过数组名查看数组首地址及各个元素的地址

```c++
cout << "数组首地址为(16进制)：" << arr << endl;
cout << "数组首地址为(10进制)：" << (int)arr << endl;    //数组前加 (int) 转化为10进制
cout << "数组第一个元素地址为(10进制)：" << (int)&arr[0] << endl;//元素前要加 & 号
cout << "数组第二个元素地址为(10进制)：" << (int)&arr[1] << endl;
```

数组元素个数

```c++
cout << "数组中元素个数为：" << sizeof(arr) / sizeof(arr[0]) << endl;
```

元素下标

```c++
int start = 0;int arr[5] = {};		//起始元素下标为0
int end = sizeof(arr) / sizeof(arr[0]) - 1;       //末尾元素下标=元素个数-1
```

#### 字符串数组

```c++
char a1[5]; 	//c语言
string a2[5];	//c++
```



### 二维数组

#### 1.定义

1. 数据类型 数组名[行数] [列数];

2. 数据类型 数组名 [行数] [列数] = { {数据1,数据2},{数据3,,数据4} };

3. 数据类型 数组名 [行数] [列数] = { 数据1,数据2,数据3,数据4 };

4. 数据类型 数组名 [ ] [列数] = { 数据1,数据2,数据3,数据4 };

5. 

 ```c++
 int arr[2][3];    arr[0][0] = 1; arr[0][1] = 2; arr[0][2] = 3; arr[1][0] = 4; ...
 ```

 ```c++
  int arr[2][3] = { 
      {1,2,3},
      {4,5,6} };
 ```

 ```c++
 int arr[2][3] = { 1,2,3,4,5,6 };
 ```

 ```c++
 int arr[][3] = { 1,2,3,4,5,6 };
 ```



#### 2.数组名

```c++
cout << "总占用内存大小：" << sizeof(arr) << endl;
cout << "第一行占用内存大小：" << sizeof(arr[0]) << endl;
cout << "第一行第一列占用内存大小：" << sizeof(arr[0][0]) << endl;
cout << "行数：" << sizeof(arr)/ sizeof(arr[0]) << endl;
cout << "列数：" << sizeof(arr[0])/sizeof(arr[0][0]) << endl;
cout << "首地址(十进制)" << (int)arr << endl;   //每次会重新分配地址
cout << "第二行首地址为(十进制)：" << (int)arr[1] << endl;
cout << "第一个元素首地址" << (int)&arr[0][0] << endl;
```

------



## 函数

### 1.定义

> 定义在main函数上面

1.返回值类型：一个函数可以返回一个值
2.函数名：给函数起个名
3.参数列表：使用该函数时，传入的数据
4.函数体语句：花括号内的代码，函数内需要执行的语句
5.return表达式：和返回值类型挂钩 ，函数执行完后，返回相应的数据

```c++
int add(int num1, int num2)
  {int sum = num1 + num2;
return sum;
```





### 2.调用

```c++
#include <iostream>
using namespace std;
//定义加法函数
//函数定义的时候，n1和n2并没有真实数据，他只是一个形式上的参数，简称形参
int add(int n1, int n2) {
	int sum = n1 + n2;
	return sum;
}
int main() {
	//main函数中调用add函数
   int a = 10, b = 20;
	//函数调用语法：函数名称(参数);
	//a和b称为实际参数，简称实参
	//当调用函数时，实参的值会传递给形参
	cout << add(a,b) << endl;
}
```





### 3.值传递

> 形参改变，实参不变

```c++
#include<iostream>
using namespace std;
//值传递
//定义函数，实现两个数字进行交换
//如果不需要返回值，声明的时候可以写void
void swap(int n1, int n2) {          /*n1、n2为形参*/
	cout << "交换前：" << endl;
	cout << "n1 = " << n1 << endl;
	cout << "n2 = " << n2 << endl;
	int temp = n1;
	n1 = n2;
	n2 = temp;
	cout << "交换后：" << endl;
	cout << "n1 = " << n1 << endl;
	cout << "n2 = " << n2 << endl;
	//可以不写return
}
int main() {
	int a = 10, b = 20;               /*a、b为实参*/
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
	//当我们做值传递的时候，函数的形参发生改变，并不会影响实参
	swap(a, b);
	cout << "a = " << a << endl;
	cout << "b = " << b << endl;
}
```





### 4.函数样式

1.无参无反
2.有参无反
3.无参有反
4.有参有反

1. ```c++
   void f1() {cout << "this is a test f1" << endl;}
   ```

2. ```c++
   void f2(int a){cout << "this is a test f2 a = " << a << endl;}
   ```

3. ```c++
   int f3() {cout << "this is a test f3" << endl;return 999;}
   ```

4. ```c++
   int f4(int b) {cout << "this is a test f4 b = " << b << endl;return b;}
   ```




### 5.函数分文件的编写

1. 创建.h后缀的头文件                声明函数
2. 创建.cpp后缀名的源文件         函数实现
3. 在主文件中包含.h头文件

#### 1.swap.h

```c++
#include <iostream>
using namespace std;
//函数的声明
void swap(int a, int b);
```

#### 2.swap.cpp

```c++
#include "swap.h"
//函数的定义
void swap(int a, int b) {
	int temp = a;
	a = b;b = temp;
	cout << "a = " << a << endl << "b = " << b << endl;
}
```

#### 3.主文件.cpp

```c++
#include "swap.h"
#include <iostream>
using namespace std;
//将以下函数改写为分文件
////函数的声明
//void swap(int a, int b);
////函数的定义
//void swap(int a, int b) {
//	int temp = a;
//	a = b;b = temp;
//	cout << "a = " << a << endl << "b = " << b << endl;
//}
int main() {
	int a = 10, b = 20;
	swap(a, b);
	system("pause");
	return 0;
}
```



### 6.函数默认参数

> 1.如果某个参数给了默认值，那么其后的所有参数也必须给默认值
>
> ```c++
> //1.错误案例:
> int sum(int a,int b = 10,int c){
> return a + b + c;}
> ```
>
> 2.如果函数声明有默认参数，函数实现就不能有默认参数;二者只能一个有默认值;
>
> ```c++
> //2.错误案例:重定义
> int sum(int a = 10,int b = 20);	//函数声明
> int sum(int a = 10,int b = 20){	//函数实现
>  return a + b;}
> //2.正确案例：
> int sum(int a,int b = 20 );
> int sum(int a = 10,int b )
> { return a + b;};
> ```
>

```c++
#include <iostream>
using namespace std;
int sum (int a,int b = 20,int c = 30)//如果有传入参数，则会用传入的，否则用默认值
{return a + b + c;//10+30+30 = 70};
int main(){
    cout << sum (10,30) << endl;}
```



### 7.占位参数

> 返回值类型 函数名(数据类型)

```c++
#include <iostream>
using namespace std;
void sum(int，int = 10)	//占位参数还可以有默认值
{ cout << "koishi" << endl;};
int main() {
   sum(10);
}
```



### 8.函数重载

> 可以让函数名相同，提高复用性

 **满足条件：**
1.同一作用域下
2.函数名相同
3.函数 参数类型/个数/顺序 不同

//函数的返回值不可以作为函数重载的条件

```c++
#include <iostream>
using namespace std;
void sum(){cout << "sum的调用" << endl;};
void sum(int a){cout << "sum(int a)的调用" << endl;}
int main() {
     sum(10);
}
```



**引用作函数重载：**

```c++
#include <iostream>
using namespace std;
void sum(int &a)	//int& a = 10不合法
{cout << "sum(int a)的调用" << endl;}
void sum(const int &a)	//临时分配内存空间，使其合法
{cout << "sum(const int a)的调用" << endl;}
int main() {
    int a = 10;
    sum(a);		//会调用sum(int& a);
    sum(20);	//会调用sum(const int& a);
}
```



**函数重载碰到默认参数**

但函数重载碰到默认参数，会出现二义性，报错，应尽量避免此情况

```c++
#include <iostream>
using namespace std;
void sum(int a,int b = 10)
{cout << "sum(int a，int b = 10)的调用" << endl;}
void sum(const int a)
{cout << "sum(const int a)的调用" << endl;}
int main() {
    int a = 10;
    sum(a);	//报错，无法判断调用哪个函数
    sum(a,10);//正确，会调用sum(int a，int b = 10)
}
```

------



## 指针

### 1.定义和使用

```c++
//1.定义指针
	int a = 10;
	//指针定义的语法：数据类型 * 指针变量名;
	int* p;
	//让指针记录变量a的地址
	p = &a;
	cout << "a的地址为：" << &a << endl;
	cout << "指针p为：" << p << endl;

//2.使用指针
	//可以通过解引用的方式来找到指针指向 的内存
	//指针前加一个 * 代表解引用，找到指针指向内存中的数据
	*p = 1000;
	cout << "a = " << a << endl;
	cout << "*p = " << *p << endl;
```



### 2.空指针

> 空指针用于给指针变量进行初始化
>
> 空指针是不可以进行访问的，//*p = 100;     错误， 0~255之间的内存编号是系统占用的，因此不允许用户访问

```c++
int* p = NULL;
```



### 3.野指针

> //cout << *p << endl;		错误，空指针和野指针访问报错

```c++
int* p = (int*)0x1100;
```



### 4.const修饰指针

> 防止无意修改

#### 1.常量指针

```c++
const int* p = &a;//指针指向的值不可以改，指针的指向可以改
	//*p = 20;		错误
	p = &b;
```

#### 2.指针常量

```c++
int* const p2 = &a;//指针指向的值可以改，指针的指向不可以改
	*p2 = 100;
	//p2 = &b;    	错误
```

#### 3.const修饰指针和常量

```c++
const int* const p3 = &a;//指针的指向和指针指向的值都不可以改	
	//*p3 = 20;		错误
	//p3 = &b;		错误
```



### 5.指针和数组

```c++
#include <iostream>
using namespace std;
int main() {
	//利用指针访问数组中的元素
	int arr[10] = { 1,2,3,4,5,6,7,8,9,10 };
	cout << "第一个元素为：" << arr[0] << endl;
	int* p = arr;//arr就是数组的首地址（不用加 &）
	cout << "用指针访问第1个元素：" << *p << endl;
	p++;//让指针向后偏移4个字节
	cout << "用指针访问第2个元素：" << *p << endl;
	cout << "利用指针遍历数组" << endl;
	int* p2 = arr;
	for (int i = 0;i < 10;i++) {
		cout << *p2 << endl;
		p2++;}
}
```



### 6.指针传递

形参改变会影响实参

```c++
#include <iostream>
using namespace std;
void swap(int*p1, int*p2) {
	int temp = *p1;   //加 * 解引用
	*p1 = *p2;
	*p2 = temp;
}
int main97() {
	int a = 10, b = 20;
	swap(&a, &b);	//交换函数
	cout << "\n地址传递\na2 = " << a2 << endl << "b2 = " << b2 << endl;
}
```

### 7.指针-函数-数组

```c++
#include <iostream>
using namespace std;
//冒泡排序函数
void bubbleSort(int* arr,int len) 
{
	for (int i = 0;i < len - 1; i++) {
		for (int j = 0;j < len - i - 1; j++) {
			if (arr[j] > arr[j + 1]) {
				int temp = arr[j];arr[j] = arr[j + 1], arr[j + 1] = temp;
			}
		}
	}
}
//打印数组函数
void printArray(int *arr, int len) {
	for (int k = 0;k < len;k++) {
		cout << arr[k] << endl;
	}
}
int main() {
	//1.创建数组
	int arr[10] = { 1,4,7,2,5,8,3,6,9,10 };
	int len = sizeof(arr) / sizeof(arr[0]);//数组元素个数
	//2.创建函数，实现冒泡排序
	bubbleSort(arr,len);    //传入 (首地址,元素个数)
	//3.打印排序后的数组
	printArray(arr,len);
}
```



------



## 结构体

### 1.定义和使用

```c++
#include <iostream>
using namespace std;
//1.创建学生数据类型  （包括姓名，年龄，分数）
//自定义数据类型，一些类型的集合，来组成的一个类型
struct student 
{
	string name;
	int age;
	int score;
}s3;
//2.通过学生类型创建具体学生
int main() {
	//2.1 struct student s1;    struct关键字可以省略
	student s1;   //结构体变量利用操作符 . 访问成员
	s1.name = "张三";
	s1.age = 18;
	s1.score = 100;
	cout << "姓名：" << s1.name << " 年龄：" << s1.age << " 分数：" << s1.score << endl;
	//2.2 struct student s2 = { ... }
	student s2 = { "李四",19,90 };
	cout << "姓名：" << s2.name << " 年龄：" << s2.age << " 分数：" << s2.score << endl;
	//2.3 在定义结构体时 顺便创建结构体变量
	s3.name = "王五";
	s3.age = 20;
	s3.score = 80;
	cout << "姓名：" << s3.name << " 年龄：" << s3.age << " 分数：" << s3.score << endl;
}
```



### 2.结构体数组

```c++
#include <iostream>
using namespace std;
//1.定义结构体
struct student { string name;int age;int score; };
int main() {
	//2.创建结构体数组
	struct student arr[3] = {
		{"张三",18,100},
		{"李四",19,90},
		{"王五",20,80} };
	//3.给结构体数组中的元素赋值
	arr[2].name = "赵六";
	arr[2].age = 70;
	arr[2].score = 60;
	//4.遍历结构体数组中的元素
	for (int i = 0;i < 3; i++) {
		cout << "姓名：" << arr[i].name 
			<< " 年龄：" << arr[i].age 
			<< " 分数：" << arr[i].score << endl;}
}
```



### 3.结构体指针

```c++
#include <iostream>
using namespace std;
struct student {
	string name;
	int age;
	int sco; };
int main() {
	//创建学生结构体变量
	student s = { "张三",18,100 };
	//通过指针指向结构体变量
	student* p = &s;
	//通过指针访问结构体变量   利用 ->
	cout << "姓名:" << p->name << "年龄：" <<p->age << "分数：" <<p->sco<<endl;
}
```



### 4.结构体内嵌结构体

```c++
#include <iostream>
using namespace std;
struct student {//先定义学生结构体
	string name;
	int age;
	int sco;};
struct teacher {//再定义老师结构体
	int id;
	string name;
	int age;
	struct student s1;  //内嵌套学生结构体
};
int main() {
	teacher t1;
	t1.id = 10086;	t1.name = "张老师";	t1.age = 30;
	t1.s1.name = "小毛";	t1.s1.age = 20;	  t1.s1.sco = 100;
	//或者student s1 = { "小毛" ,20 ,100 };
	cout << "老师的名字：" << t1.name << " 老师的ID：" << t1.id << " 老师的年龄：" << t1.age<< endl
	<< "学生的名字：" << t1.s1.name << " 学生的年龄：" << t1.s1.age << " 学生的分数" << t1.s1.sco << endl;
}
```



### 5.结构体做函数参数

```c++
#include <iostream>
using namespace std;
struct student {
	string name;
	int age;
	int sco;};
//打印学生信息的函数
//1.值传递       形参改变不影响实参
void print(student s1) {
	cout << "值传递函数中输出" << endl << "姓名：" << s1.name << "  年龄：" << s1.age << "  分数：" << s1.sco << endl;}
//2.地址传递     形参改变实参也会改变        
void print2(student* p) {
	p->age = 200;
	cout << "地址传递函数中输出" << endl << "姓名：" << p->name << "  年龄：" << p->age << "  分数" << p->sco << endl;}
int main() {
	//将学生传入到 一个参数中，打印学生身上所有信息
	//创建学生结构体
	student s1;
	s1.name = "小毛";
	s1.age = 20;
	s1.sco = 100;
	print(s1);
	print2(&s1);
}
```



### 6.const使用场景

```c++
#include <iostream>
using namespace std;
struct student {
	string name;
	int age;
	int sco;};
//将函数中的形参改为指针，可以减少内存空间，而且不会复制新的副本出来
void print(const student* s1) {
	//s1->sco = 99;   加入cons后，一旦有修改的操作就会报错，可以防止我们误操作修改实参
	cout << "值传递函数中输出" << endl << "姓名：" << s1->name << "  年龄：" << s1->age << "  分数：" << s1->sco << endl;}
int main() {
	student s1 = { "小毛",20,100 };
	print(&s1);
}
```



### 7.结构体多带多

```c++
#include<iostream>
#include<ctime>    //调用系统时间
using namespace std;
struct student{ string sname;int sco; };
struct teacher { string tname;struct student sarr[5]; };
void allocateSpace(teacher tarr[], int len) 
{
	string nameSeed = "ABCDE";
	for (int i = 0;i < len;i++) {
		tarr[i].tname = "Teacher_";
		tarr[i].tname += nameSeed[i];
		//通过循环给每名老师所带的学生赋值
		for (int i2 = 0;i2 < 5;i2++) {
			tarr[i].sarr[i2].sname = "Student_";
			tarr[i].sarr[i2].sname += nameSeed[i2];
			int random = rand() % 61 + 40;    // (0~60)+40
			tarr[i].sarr[i2].sco = random;
		}
	}

}
void printInfo(teacher tarr[],int len)
{
	for (int i = 0;i < len;i++) {
		cout << "\n老师姓名：" << tarr[i].tname << endl;
		for (int i2 = 0;i2 < 5;i2++) {
			cout << "\t学生姓名：" << tarr[i].sarr[i2].sname  << "\t学生分数：" << tarr[i].sarr[i2].sco << endl;
		}
	}
}
int main() {
	//随机数种子
	srand((unsigned int)time(NULL));
	//1、创建3名老师的数组
	teacher tarr[3];
	//2、通过函数给3名老师及其所带学生的信息赋值
	int len = sizeof(tarr) / sizeof(tarr[0]);
	allocateSpace(tarr, len);
	//3、打印所有老师及所带学生信息
	printInfo(tarr, len);
}
```



### 8.结构体排序

```c++
#include <iostream>
using namespace std;
struct hero{ string name;int sco; };
void info(hero arr[], int len)
{	string nameSeed[5] = {"小毛","小刘","小李","小张","小王"};
	for (int i = 0;i < len; i++) {
		arr[i].name += nameSeed[i];
		cout << "姓名：" << arr[i].name;
		cout << "\t请输入分数：";cin >> arr[i].sco;}
}
void agerank(hero arr[], int len) 
{	for (int i = 0;i < len;i++) {
		for (int j = 0;j < len - i - 1;j++) {
			if (arr[j].sco < arr[j + 1].sco) {
				struct hero temp = arr[j];
				arr[j] = arr[j + 1];arr[j + 1] = temp;
			}
		}
	}
}
void printInfo(hero arr[],int len) 
{	cout << "\n\n\n排序后\n" << endl;
	for (int i = 0;i < len;i++) {
		cout << "姓名：" << arr[i].name << "\t分数：" << arr[i].sco << endl;
	}
}
int main() {
	hero arr[5];
	int len = sizeof(arr) / sizeof(arr[0]);
	info(arr, len);//1.定义信息
	agerank(arr, len);//2.排序
	printInfo(arr, len);//3.输出
}
```

------



## 引用

> 给变量取别名	
> 本质：指针常量，会自动解引用（指针指向的值可以改，指针的指向不可以改）

### 1.语法

**数据类型 &别名 = 原名；**

```c++
int &b = a;    //引用后a与b访问同一块内存
//引用必须初始化		int &b;错误
//引用初始化后不可改	   int &b = c;错误
```



### 2.引用传递

引用改变会影响实参

```c++
#include <iostream>
using namespace std;
void swap(int &a,int &b){  //别名可以和原名相同
    int temp = a;a = b;b = temp;
}
int main(){
    int a = 10,b = 20;
    swap(a,b);	//交换a和b的值
    cout << "a = " << a << endl << "b = "<< b << endl;
}
```



### 3.引用做函数返回值

```c++
#include <iostream>
using namespace std;
//1.不要返回局部变量的引用
int& test1() {
    int a = 10;	  //局部变量存放在栈区
    return a;}
//2.函数的调用可以作为左值
int& test2() {
    static int a = 10;   //静态变量，存放在全局区，程序结束后系统释放
    return a;}
int main() {
    //int &ref = test1();
    //cout << "ref = " << ref << endl;   //第一次正确是因为编译器做了保留
    //cout << "ref = " << ref << endl;   //错误，a的内存已经释放(有的编译器不会释放)
    int &ref2 = test2();
    cout << "ref2 = " << ref2 << endl;
    cout << "ref2 = " << ref2 << endl;
    test2() = 1000;  //如果函数返回值是引用，这个函数调用可以作为左值
    cout << "ref2 = " << ref2 << endl;
    cout << "ref2 = " << ref2 << endl;
}
```



### 4.常量引用

防止不小心修改形参

```c++
//int& ref = 10;	//错误引用必须引用一块合法的内存空间

const int& ref = 10;//加上const后系统自动分配一块临时空间：int temp = 10;int& ref = temp;
//ref = 20;	//错误，加入const后变为只读，不可修改
```

------





## 类和对象

### 1.[类][封装]

#### 1.定义

语法：**class 类名{ 访问权限:  属性 / 行为}；**
类中的属性和行为统称为成员；在类中可以让另一个类作为本类中的=成员

```c++
#include <iostream>	//事例1
using namespace std;
const double PI = 3.14;
class Circle {
public:					//访问权限：公共权限
	int m_r;			   //属性：半径	（成员属性/成员变量）
	double CalculateZC() {	//行为：获取圆的周长	（成员函数/成员方法）
		return 2 * m_r * PI;
	}
};
int main() {
	Circle c1;//通过圆类，创建圆的对象
	c1.m_r = 10;
	cout << "圆的周长：" << c1.CalculateZC() << endl;
}
```

```c++
#include <iostream>	//事例2
using namespace std;
class Student {
public:
	string s_name;
	int s_id;
	void InputInfo(string name,int id) {
		s_id = id;
		s_name = name;
	}
	void ShowInfo() {
		cout << "学号：" << s_id << "\t姓名：" << s_name << endl;
	}
};
int main() {
	Student s[50];
	s[1].InputInfo("小毛",20);s[2].InputInfo("张三", 17);
	s[1].ShowInfo();s[2].ShowInfo();
	system("pause");
	return 0;
}
```



#### 2.权限

类在设计时，可以把属性和行为放在不同权限下，加以控制
{里面都叫类内}

c++中class和struct唯一区别在于**默认的访问权限不同**：class默认为**私有**，struct默认为**公共**
c语言中struct还不能构造函数，而c++可以;

> 公共权限 **public**				  成员 类内可以访问，类外可以访问；任何一种继承，子类可以访问父类的公共成员
>
> 保护权限 **protected**		   成员 类内可以访问，类外不可以访问；任何一种继承，子类可以访问父类的保护成员
>
> 私有权限 **private**			   成员 类内可以访问，类外不可以访问；任何一种继承，子类**不可以**访问父类的私有成员

```c++
#include <iostream>
using namespace std;
class Person {
public:
	string m_name;//姓名
protected:
	string m_car;//汽车
private:
	int m_password;//银行卡密码
private:	//类内可以正常访问
	void func() {
		m_name = "小毛";
		m_car = "拖拉机";
		m_password = 114514;
	}
};
int main() {
	Person s1;
	s1.m_name = "小刘";
	//s1.m_car = "奔驰";	//错误，保护权限在类外不可以访问
	//s1.func();		 //错误，私有权限在类外不可以访问
}
```



#### 3.成员属性私有

> 1.将所有成员属性设置为私有，可以自己控制读写权限
> 2.对于写权限，我们可以检测数据的有效性

```c++
#include <iostream>
using namespace std;
class Person {
public:
	string getname() {return m_name;}	//姓名设置为可读
	void setname(string name) {m_name = name;}	//姓名设置为可写
	int getage() {return m_age;}	//年龄设置为可读
	void setlover(string lover) { m_lover = lover; }//情人设置为可写
private:
	string m_name;		
	int m_age = 495;	
	string m_lover;		
};
int main() {
	Person p1;
	p1.setname("古名地恋");
	cout << p1.getname() << endl;
	cout << p1.getage() << endl;
	p1.setlover("芙兰朵露");
	//cout << p1.setlover();
}
```



#### 4.分文件编写

例：判断点和圆的关系	// 本案例的核心要点是：在类中可以让另一个类作为本类中的成员

1.创建.h头文件（属性及行为的声明）
2.创建.cpp源文件（行为的实现）
3.在主文件中包含开头.h头文件

##### 1.[Point.h][ 属性及行为的声明]

```c++
#pragma once //防止头文件重复包含
#include <iostream>
using namespace std;
class Point{
public:
    void setX(int x);
    int getX();
    void setY(int y);
    int getY();
private:
    int m_X; // 点的x坐标
    int m_Y; // 点的y坐标
};
```



1.[Circle.h][ 属性及行为的声明]

```c++
#pragma once //防止头文件重复包含
#include <iostream>
using namespace std;
// Attention : 由于Circle类中还使用了Point类，所以要把point.h包含进来
# include "point.h"
class Circle{
public:
    // 注意设置和获取圆心的实现
    void setCenter(Point center);
    Point getCenter();
    void setR(int r);
    int getR();
private:
    int m_R; //半径
    Point m_Center; //圆心 ---- 由于x和y通常是一个整体，所以这里将它们放到一个Point类里
};
```



##### 2.[point.cpp][行为的实现]

```c++
# include "point.h"
void Point::setX(int x) {//Point::作用域下的成员函数
    m_X = x;
}
int Point::getX() {
    return m_X;
}
void Point::setY(int y) {
    m_Y = y;
}
int Point::getY() {
    return m_Y;
}
```



2.[circle.cpp][ 行为的实现]

```c++
# include "circle.h"
void Circle::setCenter(Point center) {//Circle::作用域下的成员函数
    m_Center = center;
}
Point Circle::getCenter() {
    return m_Center;
}
void Circle::setR(int r) {
    m_R = r;
}
int Circle::getR() {
    return m_R;
}
```



##### 3.[主文件.cpp][]

```c++
# include<iostream>
using namespace std;
#include "circle.h"
#include "point.h"
//将以下内容改写为分文件
//class Point{
//public:
//    void setX(int x){
//        m_X = x;
//    }
//    int getX(){
//        return m_X;
//    }
//    void setY(int y){
//        m_Y = y;
//    }
//    int getY(){
//        return m_Y;
//    }
//private:
//    int m_X; // 点的x坐标
//    int m_Y; // 点的y坐标
//};

//class Circle{
//public:
//    // 注意设置和获取圆心的实现
//    void setCenter(Point center){
//        m_Center = center;
//    }
//    Point getCenter(){
//        return m_Center;
//    }
//    void setR(int r){
//        m_R = r;
//    }
//    int getR(){
//        return m_R;
//    }
//private:
//    int m_R; //半径
//    Point m_Center; //圆心 ----------- 由于x和y通常是一个整体，所以这里将它们放到一个Point类里
//};

// 判断点和圆的关系
void getRelation(Circle &c, Point &p){
    // 计算点和圆心距离的平方
    int c_X = c.getCenter().getX();
    int c_Y = c.getCenter().getY();
    int p_X = p.getX();
    int p_Y = p.getY();
    int distance = (c_X - p_X)*(c_X - p_X) + (c_Y - p_Y)*(c_Y - p_Y);
    // 计算半径的平方
    int r2 = c.getR() * c.getR();
    // 判断关系
    if (distance == r2){
        cout << "点在圆上" << endl;
    }
    else if (distance > r2){
        cout << "点在圆外" << endl;
    }
    else{
        cout << "点在圆内" << endl;
    }
}
int main(){
    // 创建圆
    Circle c;
    c.setR(10);
    Point center;
    center.setX(10);
    center.setY(0);
    c.setCenter(center);
    // 创建点
    Point p;
    p.setX(10);
    p.setY(10);
    // 判断关系
    getRelation(c,p);
    return 0;
}
```

------



### 2.[对象][你有对象吗？笑死，还面向对象编程，你连对象都没有]

#### 1.对象的初始化和清理

1、构造函数 进行初始化操作
	没有返回值 不用写void
	函数名 与类名相同
	构造函数可以**有参数**，可以发生重载
	对象在**创建时，**构造函数会自动调用，而且只调用一次

2、析构函数 进行清理的操作
	没有返回值 不写void
	函数名和类名相同 在**名称前加~**
	析构函数**没有参数**，因此不可以发生重载
	对象在**销毁前** 会自动调用析构函数，而且只会调用一次

```c++
#include <iostream>
using namespace std;
//构造和析构都是必须有的实现，如果我们自己不提供，编译器会提供一个空实现的构造和析构
class Person {
public:
	//1、构造函数 进行初始化操作
	Person() { cout << "Person 构造函数的调用" << endl; }
    
	//2、析构函数 进行清理的操作
	~Person() { cout << "Person 析构函数的调用" << endl; }
};

void test01() {
	Person p1;	//在栈上的数据，执行test01时执行构造函数，test01执行完后，就释放这个对象,执行析构函数
}
int main() {
	test01();
	Person p2;	//在main函数里的数据，程序执行完后才释放这个对象，执行析构函数
   
	system("pause");
	return 0;
}
```



#### 2.构造函数分类及调用

```c++
#include <iostream>
using namespace std;
class Person {
public:
//分类
//按照参数分类：  无参构造(也叫默认构造) / 有参构造
//按照类型分类：  普通构造(除拷贝构造外) / 拷贝构造
	//无参构造函数
	Person() { cout << "Person 无参构造函数的调用" << endl; }
    
	//有参构造函数
	Person(int a) { age = a;cout << "Person 有参构造函数的调用" << endl; }
	
	//拷贝构造函数
	Person(const Person& p) {//将传入的人身上所有的属性拷贝到自己身上
		age = p.age; cout << "Person 拷贝构造函数的调用" << endl;
	}

	//析构函数
	~Person() { cout << "析构函数的调用" << endl; }

	int age;
};

//调用
void test01() {
//1.括号法
	//Person p1;		//默认构造函数调用，不要写小括号，否则编译器会认为这是一个函数的声明
	//Person p2(20);	//有参构造函数调用
	//Person p3(p2);	//拷贝构造函数调用

	//cout << "p2.age = " << p2.age << endl;
	//cout << "p3.age = " << p3.age << endl;
	
//2.显示法
	//Person p1;
	//Person p2 = Person(10);	//有参构造函数调用
	//Person p3 = Person(p2);	//拷贝构造函数调用
	
	//Person(10);	//匿名函数	特点：当前行执行结束后，系统会立即回收掉匿名对象
	//cout << "aaa" << endl;
	//Person(p3);	//不要利用拷贝构造函数初始化匿名对象，编译器会认为Person (p3) === Person p3;

//3.隐式转换法
	//Person p4 = 10;	//有参构造函数调用 相当于Person p4 = Person(10);
	//Person p5 = p4;	//拷贝构造函数调用 
}

int main() {
	test01();
	return 0;
}
```



#### 3.拷贝构造函数调用时机

```c++
#include<iostream>
using namespace std;
class Person {
public:
	Person() { cout << "Person 默认构造函数的调用" << endl; }
    
	Person(int age) {
		m_age = age; cout << "Person 有参构造函数的调用" << endl;
	}

	Person(const Person& p) {
		m_age = p.m_age;
		cout << "Person 拷贝构造函数的调用" << endl; }

	~Person() { cout << "Person 析构函数的调用" << endl; }

	int m_age;
};
//1.使用一个已经创建完毕的对象来初始化一个新对象
void test1() {
	Person p1(20);
	Person p2(p1);
	cout << p2.m_age << endl;
}

//2.值传递的方式给函数参数传值
void dowork(Person p) {	}
void test2() {
	Person p;
	dowork(p);
}

//3.值方式返回局部对象
Person dowork2() { Person p1; return Person(p1); cout << (int*)&p1 << endl; }
void test3() {
	Person p = dowork2();
	cout << (int*)&p << endl;
}
int main() {
	//test1();
	//test2();
	test3();

	system("pause");
	return 0;
}
```



#### 4.构造函数调用原则

```c++
#include<iostream>
using namespace std;
//1.创建一个类，c++编译器会给每个类都添加至少3个函数
//默认构造（空实现）
//析构函数（空实现）
//拷贝构造（值拷贝）

//2.如果我们写了有参构造函数，编译器就不再提供默认构造，依然提供拷贝构造函数

//3.如果我们写了拷贝构造函数，编译器就不再提供其它普通构造函数了
class Person {
public:
	Person() { cout << "Person 构造函数的调用" << endl; }

	Person(int age) { m_age = age; cout << "Person 有参构造函数的调用" << endl; }

	Person(const Person& p) { m_age = p.m_age; cout << "Person 拷贝构造函数的调用" << endl; }

	~Person() { cout << "析构函数的调用" << endl; }

	int m_age;
};
//void test1() {
//	Person p;
//	p.m_age = 20;
//	Person p2(p);
//	cout << "p2的年龄为：" << p2.m_age << endl;
//}
void test2() {
	//Person p;
	Person p(28);
	Person p2(p);
	cout << "p2的年龄为：" << p2.m_age << endl;
}

int main() {
	//test1();
	test2();
	return 0;
}
```



#### 5.深拷贝与浅拷贝

> 浅拷贝：简单的赋值拷贝操作
> 深拷贝：在堆区重新申请空间，进行拷贝操作。防止浅拷贝重复释放堆区内存

```c++
#include<iostream>
using namespace std;
class Person {
public:
	Person() { cout << "Person 默认构造函数的调用" << endl; }

	Person(int age,int height) {
		m_age = age;m_height = new int(height);
		cout << "Person 有参构造函数的调用" << endl; }

	Person(const Person& p) {
		m_age = p.m_age; 
		//m_height = p.m_height; //编译器默认实现此代码
		//深拷贝：在堆区重新申请空间，进行拷贝操作
		m_height = new int(*p.m_height);
		cout << "Person 拷贝构造函数的调用" << endl; }

	~Person() {//析构代码，将堆区开辟的数据做释放操作
		if (m_height != NULL) { 
			delete m_height; 
			m_height = NULL; 
		}
		cout << "Person 析构函数的调用" << endl; }
	int m_age;
	int* m_height;
};
void test1() {
	Person p1(20,180);
	cout << "p1的age为：" << p1.m_age << "\t身高为：" << *p1.m_height << endl;
	Person p2(p1);//如果利用编译器提供的拷贝构造函数，会做浅拷贝操作
	//浅拷贝带来的问题：使堆区内存重复释放
	cout << "p2的age为：" << p2.m_age << "\t身高为：" << *p2.m_height << endl;

}
int main() {
	test1();
	return 0;
}
```



#### 6.初始化列表

```c++
#include<iostream>
using namespace std;
class Person {
public:
	////传统初始化操作
	//Person(int a, int b, int c) {
	//	m_a = a;
	//	m_b = b;
	//	m_c = c;
	//}
	
	//初始化列表初始化属性
	Person(int a,int b,int c) :m_a(a), m_b(b) ,m_c (c)	//注意冒号位置
	{
	}
    
	int m_a;
	int m_b;
	int m_c;
};
void test1() {
	//Person p(10, 20, 30);
	Person p(10,20,30);
	cout << "m_a = " << p.m_a << "\nm_b = " << p.m_b << "\nm_c = " << p.m_c << endl;
}
int main() {
	test1();
	return 0;
}
```



#### 7.类对象作为类成员

> 当其它类的对象作为本类的成员，构造时先调用对象成员的构造，再调用本类构造
> 析构的顺序与构造相反

```c++
#include<iostream>
using namespace std;
class Phone {//创建手机类
public:
	Phone(string pname) {
		m_pname = pname;
		cout << "Phone 构造函数的调用" << endl;
	}
	~Phone() { cout << "Phone 析构函数的调用" << endl; }
	string m_pname;	//手机名
};

class Person {//创建人类
public:
   Person(string name, string pname) :m_name(name), m_phone(pname){//Phone m_pname = pname  隐式转换法
		cout << "Person 构造函数的调用" << endl;
	};
	~Person() { cout << "Person 析构函数的调用" << endl; }

	string m_name;	//人名
	Phone m_phone;	//手机
};

void test1(){
	Person p("小毛", "C4");
	cout << p.m_name << "现在持有 " << p.m_phone.m_pname << endl;
}
int main() {
	test1();
	return 0;
}
```



8.静态成员

##### 静态成员对象

**static** 关键字

> 	1.所有对象共享同一份数据
> 	2.在编译阶段就分配了内存
> 	3.类内声明，类外初始化

两种访问方式：
通过对象访问： Person p; cout << p.m_a << endl;
通过类名访问： cout << Person::m_a << endl;

```c++
#include<iostream>
using namespace std;
class Person {
public:
	static int m_a;
private:
	static int m_b; //静态成员变量也是有访问权限的
};
int Person::m_a = 100;	//类外初始化，否则类外无法访问
int Person::m_b = 200;
void test1() { 
	Person p;
	cout << p.m_a << endl;

	Person p2;
	p2.m_a = 200;
	cout << p.m_a << endl;
}
void test2() {
	//静态成员变量 不属于某个对象上，所有对象都共享同一份数据
    
	//静态变量有两种访问方式
	//1.通过对象访问
	Person p;  cout << p.m_a << endl; 
	//2.通过类名访问
	cout << Person::m_a << endl;
	//cout << Person::m_b << endl;	私有静态成员变量 类外不可访问
}
int main() {
	//test1();
	test2();
	return 0;
}
```



##### 静态成员函数

> 1.所有对象共享宇哥==一个函数
> 2.静态成员函数只能访问静态成员变量

两种访问方式：
1.通过对象访问：Person p;   p.func();
2.通过类名访问：Person::func();

```c++
#include<iostream>
using namespace std;
class Person {
public:
	static void func() { //静态成员函数
		m_a = 100;	//静态成员函数可以访问静态成员变量，变量是所有对象共享的
		//m_b = 200;	//静态成员函数不可以访问非静态成员变量，无法区分是哪个对象的
		cout << "static void fun函数的调用" << endl;
	}
	
private://静态成员函数也是有访问权限的
	static void func2() {
		cout << "static void func2函数的调用" << endl;
	}

	static int m_a;	//静态成员变量
	int m_b;
};

int Person::m_a = 100; 

void test1(){
	//1.通过对象访问
	Person p;
	p.func();
	//2.通过类名访问
	Person::func();
    
	//Person::func2();	//类外访问不到私有权限
}
int main() {
	test1();
	return 0;
}
```



### 3.对象成员和this指针

#### 1.成员变量和成员函数分开储存

在c++中，类内的成员变量和成员函数分开储存
只有非静态成员变量 才属于类的对象上

```c++
#include<iostream>
using namespace std;
class Person {
	int m_a;//非静态成员变量 属于类的对象上
	static int m_b;//静态成员变量 不属于类的对象上
	void func() {}	//非静态成员函数 不属于类的对象上
	static void func2() {} //静态成员函数 不属于类的对象上
};
int Person::m_b;
void test1() {
	Person p;
	//空对象占用空间为：1 （给空对象分配1字节空间，为了区分空对象在内存的位置
	//每个空对象也应该有个独一无二的内存地址
	cout << "p的大小：" << sizeof(p) << endl;
};
void test2() {
	Person p;
	cout << "p的大小：" << sizeof(p) << endl;
}
int main() {
	//test1();
	test2();
	return 0;
}
```

