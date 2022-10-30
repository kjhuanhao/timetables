import pymysql
class Mysql():
    def __init__(self):
        try:
            self.db = pymysql.connect(
        host='127.0.0.1',
        port=3306,
        user='root',
        passwd='',
        charset="utf8",
        db="timetables"
    )
            #游标对象
            self.cursor = self.db.cursor()
            print("连接成功！")
        except:
            print("连接失败！")
#查询数据函数
    def getdata(self):
        sql = "select * from data order by 日期,第几节 asc;"
        #执行sql语句
        self.cursor.execute(sql)
        #获取所有的记录
        results = self.cursor.fetchall()
        return results

    def get_week_data(self,week_id):
        week_sql = f"select * from data where 周次 = {week_id} order by 日期,第几节 asc;"
        #执行sql语句
        self.cursor.execute(week_sql)
        #获取所有的记录
        week_results = self.cursor.fetchall()
        return week_results
    # 关闭
    def __del__(self):
        self.db.close()
