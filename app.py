from flask import Flask,render_template,request
from connect_sql import Mysql
import pymysql

app = Flask(__name__)


@app.route('/',methods=['GET', 'POST'])
def index():
    db = Mysql()
    results = db.getdata()
    return render_template("index.html", results=results)


@app.route('/check',methods=['GET', 'POST'])
def check_week():
    a = request.args
    week_id = a.get('week')
    db = Mysql()
    week_results = db.get_week_data(int(week_id))
    return render_template("week.html",week_results=week_results,week_id=week_id)

@app.errorhandler(404)  # 传入错误码作为参数状态
def error_date(error):  # 接受错误作为参数
    return render_template("404.html"), 404  # 返回对应的http状态码，和返回404错误的html文件

@app.errorhandler(500)  # 传入错误码作为参数状态
def error_date(error):  # 接受错误作为参数
    return render_template("error.html"), 500  # 返回对应的http状态码，和返回404错误的html文件



@app.route('/mysql')
def connect_mysql():
    conn = pymysql.connect(
        host='127.0.0.1',
        port=3306,
        user='root',
        passwd='',
        charset="utf8",
        db="day25db"
    )
    cursor = conn.cursor()
    if cursor:
        return '成功连接数据库'
    else:
        return '连接失败'



if __name__ == '__main__':
    app.run()


#@app.route('/')
#def hello_world():  # put application's code here
#    return render_template("base.html")


#if __name__ == '__main__':
 #   app.run()
