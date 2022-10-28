## 功能展示
获取课表到数据库:
![](https://s1.vika.cn/space/2022/10/28/f76348066731466883f8ef61fd29f9cb)

flask后端展示和查询:
![](https://s1.vika.cn/space/2022/10/28/3a08f8da19f44ed298428ff855f6bddc)
![](https://s1.vika.cn/space/2022/10/28/d30f6ae2e3ec40d29c6b0df56d47272c)


## 安装依赖
```shell
pip install - r requirements.txt
```
> selenium用到了chrome内核来获取cookie



## 文件结构
- timetables
  - static
    - css
      - bootstrap.min.css
  - templates
    - 404.html
    - base.html
    - error.html
    - index.html
    - week.html
  - venv
  - app.py(flask后端程序)
  - connect_sql.py(用于flask获取数据库信息)
  - get_week.py(计算周次)
  - main.py(爬虫程序，获取课程表并写入数据库)
  - requirements.txt(依赖文件)
  - timetables.sql(测试用的数据库)


## 开发日志

### 10.20
1. 完成抓包和基本的数据分析，确定要爬取的数据
2. 实现了基本的cookie获取和登入操作


### 10.21
完成爬取课表的代码

### 10.22
无


### 10.23
确定和完成基本的数据库表设计


### 10.24 
完成基本数据库写入操作


### 10.25
完善无课时的数据库插入


### 10.26
无

### 10.27
实现flask展示数据库内容

### 10.28
1. 增加周次的数据
2. 美化页面
3. 增加查询系统
4. 增加404和500的错误处理
5. 修改部分主程序代码






