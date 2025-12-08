# MYSQL



## 连接

使用MySQL二进制方式进入到mysql命令提示符下连接MySQL数据库：

```shell
mysql -u username -p
```

参数说明

- -u 用于指定用户名
- -p 表示需要输入密码



指定主机和端口连接（适用于远程连接）：

```shell
mysql -h 主机名或IP地址 -P 端口号 -u 用户名 -p
```



## 常用命令

```sql
SHOW DATABASES;		#列出所有可用数据库

USE your_database;	#选择要使用的数据库
SHOW TABLES;		#列出所选数据库中所有表

EXIT;				#退出 或使用QUIT;
```



## 创建数据库

创建或删除数据库一般需要特定权限，root用户具有最高权限。



```sql
CREATE DATABASE 数据库名; 
```



```sql
CREATE DATABASE [IF NOT EXISTS] 数据库名 #防止数据库已经存在时导致错误
[CHARACTER SET charset_name]
[COLLATE collation_name];
```



**使用 mysqladmin 创建数据库**

mysqladmin 是 MySQL 提供的一个用于执行管理任务的命令工具。
通过 mysqladmin，可以执行各种数据库管理操作，包括创建数据库。

```shell
mysqladmin -u your_name -p create yout_database
```

执行成功后会创建数据库





## 删除数据库

在删除数据库过程中，务必小写谨慎，在执行删除命令后，所有数据都会消失。

drop命令删除数据库

```sql
DROP DATABASE [IF EXISTS] your_database;
```

`IF EXISTS` 是一个可选子句，如果数据库存在时才删除，避因为数据库不存在而报错。





## 选择数据库

在命令行中选择数据库

```shell
mysql -u yout_name -p -D your_database
```



如果已经登录了 MySQL 

```sql
USE database_name;
```





## 数据类型

MySQL 中定义数据字段的类型对数据库的优化是非常重要的。

MySQL 中支持多种类型，大致可以分为三类：数值、日期/时间、字符(串)类型。

### 数值类型

MySQL 支持所有标准 SQL 数值数据类型。

这些类型包括严格数值数据类型（INTEGER（INT）、SMALLINT、DECIMAL（DEC） 和 NUMERIC），以及近似数值数据类型（FLOAT、REAL 和 DOUBLE PRECISION）。

作为 SQL 标准的拓展，MySQL 也支持整数类型 TINYINT、MEDIUMINT 和BIGINT。

| 类型         | 大小                                     | 范围（有符号）                                               | 范围（无符号）                                               | 用途            |
| :----------- | :--------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- | :-------------------------------- |
| TINYINT      | 1 Bytes                                  | (-128，127)                                                  | (0，255)                                                     | 小整数值        |
| SMALLINT     | 2 Bytes                                  | (-32 768，32 767)                                            | (0，65 535)                                                  | 大整数值        |
| MEDIUMINT    | 3 Bytes                                  | (-8 388 608，8 388 607)                                      | (0，16 777 215)                                              | 大整数值        |
| INT或INTEGER | 4 Bytes                                  | (-2 147 483 648，2 147 483 647)                              | (0，4 294 967 295)                                           | 大整数值        |
| BIGINT       | 8 Bytes                                  | (-9,223,372,036,854,775,808，9 223 372 036 854 775 807)      | (0，18 446 744 073 709 551 615)                              | 极大整数值      |
| FLOAT        | 4 Bytes                                  | (-3.40 E+38，-1.17 E-38)，<br />0，<br />(1.17 E-38，3.402 E+38) | 0，<br />(1.17 E-38，3.40 E+38)           | 单精度 浮点数值 |
| DOUBLE       | 8 Bytes                                  | (-1.79 E+308，-2.22 E-308)，<br />0，<br />(2.22 E-308，1.79 E+308) | 0，<br />(2.22 E-308，1.79 E+308) | 双精度 浮点数值 |
| DECIMAL      | 对DECIMAL(M,D) ，如果M>D，为M+2否则为D+2 | 依赖于M和D的值                                               | 依赖于M和D的值                                               | 小数值          |



### 日期和时间类型

表示时间值的日期和时间类型为 DATETIME、DATE、TIMESTAMP、TIME 和 YEAR。

每个时间类型有一个有效值范围和一个“零”值，当指定不合法的 MySQL 不能表示的值时使用“零”值。

| 类型      | 大小 ( bytes) | 范围                                                         | 格式                | 用途                     |
| :-------- | :------------ | :----------------------------------------------------------- | :------------------ | :----------------------- |
| DATE      | 3             | 1000-01-01/9999-12-31                                        | YYYY-MM-DD          | 日期值                   |
| TIME      | 3             | '-838:59:59'/'838:59:59'                                     | HH:MM:SS            | 时间值或持续时间         |
| YEAR      | 1             | 1901/2155                                                    | YYYY                | 年份值                   |
| DATETIME  | 8             | '1000-01-01 00:00:00' 到 '9999-12-31 23:59:59'               | YYYY-MM-DD hh:mm:ss | 混合日期和时间值         |
| TIMESTAMP | 4             | '1970-01-01 00:00:01' UTC 到 '2038-01-19 03:14:07' UTC结束时间是第 **2147483647** 秒，北京时间 **2038-1-19 11:14:07**，格林尼治时间 2038年1月19日 凌晨 03:14:07 | YYYY-MM-DD hh:mm:ss | 混合日期和时间值，时间戳 |





### 字符串类型

字符串类型指 CHAR、VARCHAR、BINARY、VARBINARY、BLOB、TEXT、ENUM 和 SET。

| 类型       | 大小                  | 用途                            |
| :--------- | :-------------------- | :------------------------------ |
| CHAR       | 0-255 bytes           | 定长字符串                      |
| VARCHAR    | 0-65535 bytes         | 变长字符串                      |
| TINYBLOB   | 0-255 bytes           | 不超过 255 个字符的二进制字符串 |
| TINYTEXT   | 0-255 bytes           | 短文本字符串                    |
| BLOB       | 0-65 535 bytes        | 二进制形式的长文本数据          |
| TEXT       | 0-65 535 bytes        | 长文本数据                      |
| MEDIUMBLOB | 0-16 777 215 bytes    | 二进制形式的中等长度文本数据    |
| MEDIUMTEXT | 0-16 777 215 bytes    | 中等长度文本数据                |
| LONGBLOB   | 0-4 294 967 295 bytes | 二进制形式的极大文本数据        |
| LONGTEXT   | 0-4 294 967 295 bytes | 极大文本数据                    |



### 枚举与集合类型

- ENUM: 枚举类型， 用于存储单一值，可以选择一个预定的集合。
- SET: 集合类型，用于存储多个值，选择多个预定义的集合。



### 空间数据类型

GEOMETRY, POINT, LINESTRING, POLYGON, MULTIPOINT, MULTILINESTRING, MULTIPOLYGON, GEOMETRYCOLLECTION: 用于存储空间数据（地理信息、几何图形等）。





## 创建数据表

创建 MySQL 数据表需要以下信息：

- 表名
- 表字段名
- 定义每个表字段的数据类型



```sql
CREATE TABLE table_name (
	column1 datatype,
	column2 datatype,
    ...
);
```

参数说明：

- table_name
- column1, column2, ... 是表中的列名。
- datatype 是每个列的数据类型。

```sql
#示例
CREATE talbe users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    birthdate DATE,
    is_active BOOLEAN DEFAULT TRUE
);
```

AUTO_INCREMENT 关键字用于创建一个自增长的列，PRIMARY 用于定义主键。





## 删除数据表

删除表

```sql
DROP TABLE [IF EXISTS] table_name;
```



如果只想删除表中的数据，但保留表的结构，可以使用 TRUNCATE TABLE 语句：

```sql
TRUNCATE TABLE table_name;
```



注意事项：

- 备份数据：在删除表之前，应确保备份了数据，如果需要的话。
- 外键约束：如果该表与其他表有外键约束，可能需要先删除外键约束，或者确保依赖关系被处理好。







## 插入数据

MySQL 使用 INSERT INTO 语句来插入数据。

```sql
INSERT INTO talbe_name (column1, column2, column3, ...)
VALUES (value1, value2, value2, ...);
```

- table_name 为要插入数据的表名
- column1, column2, column3, ... 是表中的列名
- value1, value2, value3, ... 是要插入的具体数值。



```sql
#示例
INSERT INTO users (username, email, birthday, is_active)
VALUES 
('test1', 'test@runoob.com', '1990-01-01', true),
('test2', 'test2@runoob.com', '1992-01-01', false),
('test3', 'test3@runoob.com', '1993-01-01', true);
```







## 查询数据

MySQL 数据库使用 SELECT 语句来查询数据。

```sql
SELECT column1, column2, ...
FROM table_name
[WHERE condition]
[ORDER BY column_name [ASC | DESC]]
[LIMIT number];
```

- column1, column2 ... 是想要查询的列名，`*` 表示选择所有列
- table_name 是要从中查询的表名
- WHERE condition 是一个可选子句，用于指定过滤条件，只返回符合条件的行
- ORDER BY column_name [ASC | DESC] 是一个可选子句，用于指定结果集的排序规则，默认是升序（ASC）
- LIMIT number 是一个可选子句，用于限制返回的行数



```sql
#示例
SELECT * FROM users;	#选择所有列的所有行
SELECT username, email FROM users;	#选择特定列的所有行
SELECT * FROM users ORDER BY birthday DESC;	#选择所有列的所有行,按特定列降序排序
SELECT * FROM users LIMIT 10;	#限制返回10行
```

```sql
SELECT * FROM users WHERE username LIKE 'j%' AND is_active = TRUE;	#使用AND运算符和通配符
SELECT * FROM users WHERE is_active = TRUE OR birthday < '1990-01-01';#使用OR运算符
SELECT * FROM users WHERE birthday IN ('1990-01-01', '1992-02-15', '1993-05-03');#使用IN子句
```







## WHERE子句



1. 等于条件：

```SQL
SELECT * FROM users WHERE username = 'test';
```

2. 不等于条件：

```SQL
SELECT * FROM users WHERE username != 'runoob';
```

3. 大于条件:

```SQL
SELECT * FROM products WHERE price > 50.00;
```

4. 小于条件:

```SQL
SELECT * FROM orders WHERE order_date < '2023-01-01';
```

5. 大于等于条件:

```SQL
SELECT * FROM employees WHERE salary >= 50000;
```

6. 小于等于条件:

```SQL
SELECT * FROM students WHERE age <= 21;
```

7. 组合条件（AND、OR）:

```SQL
SELECT * FROM products WHERE category = 'Electronics' AND price > 100.00;

SELECT * FROM orders WHERE order_date >= '2023-01-01' OR total_amount > 1000.00;
```

8. 模糊匹配条件（LIKE）:

```SQL
SELECT * FROM customers WHERE first_name LIKE 'J%';
```

9. IN 条件:

```SQL
SELECT * FROM countries WHERE country_code IN ('US', 'CA', 'MX');
```

10. NOT 条件:

```SQL
SELECT * FROM products WHERE NOT category = 'Clothing';
```

11. BETWEEN 条件:

```SQL
SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
```

12. IS NULL 条件

```SQL
SELECT * FROM employees WHERE department IS NULL;
```

13. IS NOT NULL 条件:

```SQL
SELECT * FROM customers WHERE email IS NOT NULL;
```





## UPDATE更新

以下是 UPDATE 命令修改 MySQL 数据表数据的通用 SQL 语法：

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

- talbe_name 为要更新的表名
- column1, column2, ... 为要更新的列的名称
- value1, value2, ... 为新的值，替换旧的值
- WHERE condition 为可选子句，用于指定行



**示例**

1. 更新单个列的值
	```sql
	UPDATE employees
	SET salary = 60000
	WHERE employee_id = 101;
	```

2. 更新多个列的值
	```sql
	UPDATE orders
	SET status = 'Shipped', ship_date = '2023-03-01'
	WHERE order_id = 1001;
	```

3. 使用表达式更新值：
	```sql
	UPDATE products
	SET price = price * 1.1
	WHERE category = 'Electronics';
	```

4. 更新符合条件的所有行：
	```sql
	UPDATE stdudents
	SET status = 'Graduated';
	```

5. 更新使用子查询的值：
	```sql
	UPDATE customers
	SET total_purchases = (
		SELECT SUM(amount))
		FROM orders
		WHERE oreder.customer_id = cusromers.customer_id
	)
	WHERE customer_type = 'Premium';
	```







## DELETE语句

DELETE FROM 用于删除 MySQL 数据表中的记录

```sql
DELETE FROM table_name
WHERE condition;
```





示例

1. 删除符合条件的行
	```sql
	DELETE FROM students
	WHERE graduation_year = 2021;
	```

2. 删除所有行
	```sql
	DELETE FROM orders;
	```

3. 使用子查询删除符合条件的行
	```sql
	DELETE FROM customers
	WHERE customer_id IN (
		SELECT customer_id
		FROM orders
		WHERE order_date < '2023-01-01'
	);
	```

	



## LIKE子句

`LIKE` 子句中使用 `%` 来表示任意字符，`_` 表示一个字符

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
```

- column1, column2, ... 为选择的列
- table_name 为要从中查询数据的表的名称
- column_name 是要应用 LIKE 子句的列的名称
- pattern 是用于匹配的模式，可以包含通配符



示例

1. `%` 通配符表示零个或多个字符。例如 `a%` 匹配以字母 `a` 开头的任何字符串

	```sql
	SELECT * FROM customers WHERE last_name LIKE 'S%'; #查询所有姓氏以'S'开头的客户
	```

2. `_` 通配符表示一个字符。例如 `_r` 匹配第二个字母为 `r` 的任何字符串。

	```sql
	SELECT * FROM products WHERE product_name LIKE '_a%'; #查询产品名称第二个字符为'a'的所有产品
	```

3. 组合使用 `%` 和 `_`
	```sql
	SELECT * FROM users WHERE username LIKE 'a%o_'; #第一个字符为'a',倒数第二个字符为'o'
	```

4. 不区分大小写的匹配
	```sql
	SELECT * FROM employees WHERE last_name LIKE 'smi%' COLLATE utf8mb4_general_ci; #ci即Case Insensitive 大小写无关
	```





## UNION操作符

UNION 操作符用于连接两个以上的 SELECT 语句的结果组合到一个结果集合， 并去除重复行。

UNION 操作符必须由两个或多个 SELECT 语句组成，每个 SELECT 语句的列数和对应位置的数据类型必须相同。

```sql
SELECT column1, column2, ...
FROM table1
WHERE condition1
UNION
SELECT column1, column2, ...
FROM table2
WHERE condition2
[ORDER BYY column1, column2, ...];
```



示例

1. 基本的 UNION 操作
	```sql
	SELECT city FROM customers
	UNION
	SELECT city FROM suppliers
	ORDER BY city;
	#选择客户表的供应商表中所有城市的唯一值，并按照城市名称升序排序
	```

2. 使用过滤条件的 UNION
	```sql
	SELECT product_name FROM products WHERE category = 'Electronics'
	UNION
	SELECT product_name FROM products WHERE category = 'Clothing'
	ORDER BY product_name;
	#选择电子类和服装类的产品名称，并按照产品名称升序排序
	```

3. UNION 操作中的列数和数据类型必须相同
	```sql
	SELECT first_name, last_name FROM employees
	UNION
	SELECT department_name, NULL FROM departments
	ORDER BY forst_name;
	#返回的结果包括了employees表中的fist_name和last_name,以及departments表中的department_name和NULLm,所有的结果都按照first_name列排序
	```

4. 使用 UNION ALL 不去除重复行
	```sql
	SELECT city FROM customers
	UNION ALL
	SELECT city FROM suppliers
	ORDER BY city;
	#使用 UNION ALL 不会去除重复行
	```

	



## ORDER BY语句

ORDER BY 可以按照一个或多个列的值进行升序（ASC）或降序（DESC）排序。

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC | DESC], column2 [ASC | DESC], ...;
```

- column1, column2, ... 为选择的列名
- table_name 为要从中查询数据的表的名称
- ORDER BY 用于指定的排序规则



示例

1. 单列排序
	```sql
	SELECT * FROM products
	ORDER BY product_name ASC;
	```

2. 多列排序
	```sql
	SELECT * FROM employees
	ORDER BY department_id ASC, hire_date DESC;
	#先按照部门ID升序排序,相同部门按照雇佣日期降序排序
	```

3. 使用数字表示列的位置
	```sql
	SELECT first_name, last_name, salary
	FROM employees
	ORDER BY 3 DESC, 1 ASC;
	#先按第三列(salary)降序排序，再按第一列(first_name)升序排序
	```

4. 使用表达式排序
	```sql
	SELECT product_name, price * discount_rate AS discounted_price
	FROM products
	ORDER BY discounted_price DESC;
	#选择产品名和折扣后的价格,并按折扣后的价格降序排序
	```

5. 从 MySQL 8.0.16 开始，可以使用 NULLS FIRST 或 NULLS LAST 处理 NULL 值
	```sql
	SELECT product_name, price
	FROM products
	ORDER BY price DESC NULLS LAST;
	#按价格降序排序,将NULL值排在最后
	```

	



## GROUP BY分组

GROUP BY 语句根据一个或多个列对结果集进行分组

在分组的列上我们可以使用 COUNT、SUM、AVG、MAX、MIN等聚合函数

```sql
SELECT column1, aggregate_function(column2)
FROM table_name
WHERE condition
GROUP BY column1;
```

- column1：指定分组的列
- aggregate_function(column2)：对分组后的每个组执行的聚合函数



示例

假设有一个名为`orders` 的表，包含以下列：`order_id`、`customer_id`、`order_date` 和 `order_amount`。
我们想要安装 `customer_id` 进行分组，并计算每个客户的订单总金额

```sql
SELECT customer_id, SUM(order_amount) AS total_aomunt
FROM orders
GROUP BY customer_id;
```

AS 可以给计算结果取一个别名，使查询结果更易懂



























