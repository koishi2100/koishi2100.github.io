[TOC]



```java
//创建 Java 源程序需要类名和文件名一致才能编译通过，否则编译器会提示找不到类。
public class Main{//此文件名为Main.java
    public static void main(String[] args){
        System.out.println("hello world");
    }
}
```



## 基本



### 数据类型

| 类型名  |    意义    |
| :-----: | :--------: |
| boolean |  布尔类型  |
|  byte   |  字节类型  |
|  char   |   字符型   |
| double  | 双精度浮点 |
|  float  | 单精度浮点 |
|   int   |    整型    |
|  long   |   长整型   |
|  short  |   短整型   |
|  null   |     空     |



### 声明变量

```java
int a = 114514;
String str = "HelloWorld";
char ch = 'a';
double PI = 3.1415926;
```



### final 关键字

> final含义是这是最终的、不可更改的结果，被final修饰的变量只能被赋值一次，赋值后不再改变

```java
final double PI = 3.1415926;
```



### 数组

> 语法格式为 数据类型[] 变量名 = new 数据类型[数组大小]

```java
int arr[] = new int[10];//不可以int arr[10];

int[][] brr = new int[3][];//每一维可以自定义大小
brr[0] = new int[2];
brr[1] = new int[9];
brr[2] = new int[100];
//数组遍历
for (int[] b1 : brr) {
    for (int b2 : b1) {
        System.out.printf("%d ",b2);
    }
    System.out.println();
}
```



### 字符串

​	字符串是java一个内置的类

```java
String str1 = "Hello";

char[] str2 = { 'H', 'e', 'l', 'l', 'o' };

String str3 = new String(str2);//字符数组转String
char[] str4 = str1.toCharArray();//String转字符数组
```





### 包和导入包

Java中的类(Class)都被放在一个个包(package)里面。在一个包里面不允许有同名的类。
在类的第一行通常要说明这个类是属于哪个包的。例如：

```java
package org.oi-wiki.tutorial;
```

包的命名规范一般是：`项目所有者的顶级域.项目所有者的二级域.项目名称`。

通过 `import` 关键字来导入不在本类所属的包下面的类。例如下面要用到的 `Scanner`：

```java
import java.util.Scanner;
```

如果想要导入某包下面所有的类，只需要把这个语句最后的分号前的类名换成 `*`。



### 输入

可以通过`Scanner`类来处理命令行输入。

```java
import java.util.Scanner;

class Main{
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);// System.in 是输入流
        int a = scan.nextInt();
        double b = scan.nextDouble();
        
        String s1 = scan.nextLine();//next.Line()以回车作为结束符，可以读入空格
        String s2 = scan.next();	//next()以空格、回车、Tab等作为结束符
        /*char[]类型无法使用scan.nextChar()输入，可以先输入String再转为char[];
        char[] str = s2.toCharArray();*/
    }
}
```



### 输出

可以对变量进行格式化输出。

| 符号 |    意义    |
| :--: | :--------: |
| `%f` |  浮点类型  |
| `%s` | 字符串类型 |
| `%d` |  整数类型  |
| `%c` |  字符类型  |

```java
class Main {
    public static void main(String[] args) {
        int a = 12;
        char b = 'A';
        double s = 3.14;
        String str = "Hello world";
        System.out.printf("%f\n", s);//相当于System.out.println(s);
        System.out.printf("%d\n", a);
        System.out.printf("%c\n", b);
        System.out.printf("%s\n", str);
        for(int i = 0;i < str.length();i++){//String类型逐字符输出
            char ch = str.charAt(i);
            System.out.printf("%c ",ch);
        }
    }
}
```



### 控制语句

Java 的流程控制语句与 C++ 是基本相同的。

```java
//选择语句
if (){
    
}
else if(){
    
}
else{
    
}
//-----------------------
switch ( /* 表达式 */ ){
  case n1:{
      
      break;
  }
  case n2:{
      
      break;
  }
  default:{
      
  }
}
```

```java
//循环
for(int i = 1;i <= n;i++){
    
}

while(q-- > 0){
    
}

do{
    
} while(i <= n);
```

















