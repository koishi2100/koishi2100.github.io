## CMD

### 目录

```powershell
d:  	 #打开D盘
```

```powershell
dir  	#显示当前目录所有内容
dir work	#显示work目录下的所有内容
```
```powershell
cd			#打开目录
cd 目录名		#打开指定目录
cd..		#返回到父目录
cd /		#返回到盘符根目录
```
```powershell
cls		#清屏
exit	#退出cmd
```

```powershell
mkdir 666		#在当前目录创建文件夹(md)
del 666			#删除文件夹(rd)
```



### 文件

```powershell
type nul > 1.cpp  		#在当前目录创建1.cpp文件
del 1.cpp				#删除1.cpp文件
copy m.cpp 1.cpp		#将m.cpp里的内容覆盖到1.cpp
ren hello.cpp hi.cpp	#将hello.cpp重命名为hi.cpp
move 666.cpp /trash		#将666.cpp移动到/trash位置
```
```powershell
打开文件
1.jpg				#用默认方式打开1.jpg文件
notepad 1.cpp		#用记事本打开1.cpp文件
g++ 1.cpp	#用g++编译1.cpp文件
g++ 1.cpp -O2 -g -o	h	#编译并开启O2优化、添加调试、生成文件名为h.exe
```



```cpp
1.exe < in.txt	//执行1.exe并读取in.txt中的数据
1.exe > out.txt	//执行1.exe并将结果覆盖写入到out.txt
1.exe >> out.txt //执行1.exe并将结果附加写入到out.txt
1.exe < in.txt > out.txt | type out.txt	//读入in文件，将结果写入out文件，并在控制台输出结果
```





### 切换编码

```cpp
chcp 65001		//UTF-8
chcp 936		//gbk
```





## PowerShell





```powershell
new-item hello.cpp    //创建hello.cpp文件
remove-item hello.cpp	//删除hello.cpp文件
./hello.cpp    			//打开hello.cpp文件
```

