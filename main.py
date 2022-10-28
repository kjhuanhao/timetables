
import time
import requests
from selenium.webdriver import Chrome
from selenium.webdriver.chrome.options import Options
import pymysql
from get_week import week_num


id = input('请输入你的学号:')
password = input('请输入你的密码:')
# 获取cookie
def get_cookie(id,password):
    # 设置无头
    new_url = 'https://jwxt.gdupt.edu.cn/'
    opt = Options()
    opt.add_experimental_option('excludeSwitches', ['enable-automation'])
    opt.add_argument("--headless")
    opt.add_argument("--disable-gpu")
    web = Chrome(options=opt)  # web = Chrome()
    web.get(new_url)
    # 登入操作
    web.find_element_by_xpath('//*[@id="account"]').send_keys(f'{id}')
    web.find_element_by_xpath('//*[@id="password"]').send_keys(f'{password}')
    web.find_element_by_xpath('//*[@id="submit_btn"]').click()
    time.sleep(2)
    # 获取cookie
    my_cookie = web.get_cookies()
    # 格式化cookie
    dict_cookie_1 = my_cookie[0]
    dict_cookie_2 = my_cookie[-1]
    browserID = dict_cookie_1['value']
    JSESSIONID = dict_cookie_2['value']
    #global new_cookie  # 格式化后的cookie设置为全局变量
    new_cookie = f"browserID={browserID}; JSESSIONID={JSESSIONID}"
    # print(new_cookie)
    web.quit()
    print('\033[0;32;40m成功获取Cookies\033[0m')
    return  new_cookie


conn = pymysql.connect(
host='127.0.0.1',
    port=3306,
    user='root',
    passwd='',
    charset="utf8",
    db="timetables"
)
cursor = conn.cursor()
if cursor:
    print('成功连接数据库')
else:
    print('连接数据库失败')

#创建基本的课程表结构
sql = """
create table if not exists data(
   
    周次 int(5) not null,
    星期 int(5) null,
    课程 varchar(20),
    授课老师 varchar(20)  null,   
    地点 varchar(29) null,
    第几节 int(10) null,      
    日期 date null
)default charset=utf8;
"""
try:
    cursor.execute("drop table data")
    cursor.execute(sql)
    conn.commit()
except:
    cursor.execute(sql)



#id int(10) unsigned PRIMARY KEY AUTO_INCREMEN,


def import_timetable(new_cookie):
    #获取周次，1. 得到日期数据 2.与第一周做差 3. 写入

    # 设置周数
    for num in range(1,19):
        #zc += 1
        #print(f'\033[0;32;40m这是第{zc}周课表\033[0m')
        nums = str(num)
        url = f'https://jwxt.gdupt.edu.cn/xsgrkbcx!getKbRq.action?xnxqdm=202201&zc={nums}'
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36 Edg/106.0.1370.47',
            'cookie': new_cookie
        }
        data = {
            'xnxqdm': '202201'
        }
        resp = requests.get(url, headers=headers, data=data)
        timetable_json = resp.json()
        # 获取日期的字典
        # print('获取日期')
        dates_json = timetable_json[-1]  # 得到日期的字典
        curriculums = timetable_json[0]  # 得到课表的字典
        #设置第一周

        # 思路：字典里面放表格，表格里面存字典
        #周一到周天的课表
        curriculum_t_1 = []
        curriculum_t_2 = []
        curriculum_t_3 = []
        curriculum_t_4 = []
        curriculum_t_5 = []
        curriculum_t_6 = []
        curriculum_t_7 = []
        # for date_json in dates_json:
        # xq = date_json['xqmc'] #星期
        # date = date_json['rq'] #日期
        # print(xq,end='|')
        # print(date)
        for date in dates_json:
            if date['xqmc'] == '1':
                rq_1 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '1':
                curriculum_t_1.append(
                    {
                        '周次': week_num(f'{rq_1}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '1',
                        '日期': rq_1
                    }.copy()
                )

                if len(curriculum_t_1) != 0:
                    insert_sql_1 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                    week_num(f'{rq_1}'),
                                    1,
                                    repr(curriculum['kcmc']),
                                    repr(curriculum['teaxms']),
                                    repr(curriculum['jxcdmc']),
                                    curriculum['jcdm'].replace('0',''),
                                    repr(rq_1))
                    cursor.execute(insert_sql_1)
                    conn.commit()


        for date in dates_json:
            if date['xqmc'] == '2':
                rq_2 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '2':
                curriculum_t_2.append(
                    {
                        '周次': week_num(f'{rq_2}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '2',
                        '日期': rq_2
                    }.copy()
                )

                if len(curriculum_t_2) != 0:
                    insert_sql_2 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_2}'),
                                       2,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_2))
                    cursor.execute(insert_sql_2)
                    conn.commit()


        for date in dates_json:
            if date['xqmc'] == '3':
                rq_3 = date['rq']
        for curriculum in curriculums:
            if curriculum['xq'] == '3':
                curriculum_t_3.append(
                    {
                        '周次': week_num(f'{rq_3}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '3',
                        '日期': rq_3
                    }.copy()
                )

                if len(curriculum_t_3) != 0:
                    insert_sql_3 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_3}'),
                                       3,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_3))
                    cursor.execute(insert_sql_3)
                    conn.commit()

        for date in dates_json:
            if date['xqmc'] == '4':
                rq_4 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '4':
                curriculum_t_4.append(
                    {
                        '周次': week_num(f'{rq_4}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '4',
                        '日期': rq_4
                    }.copy()
                )

                if len(curriculum_t_4) != 0:
                    insert_sql_4 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_4}'),
                                       4,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_4))
                    cursor.execute(insert_sql_4)
                    conn.commit()

        for date in dates_json:
            if date['xqmc'] == '5':
                rq_5 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '5':
                curriculum_t_5.append(
                    {
                        '周次': week_num(f'{rq_5}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '5',
                        '日期': rq_5
                    }.copy()
                )

                if len(curriculum_t_5) != 0:
                    insert_sql_5 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_5}'),
                                       5,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_5))
                    cursor.execute(insert_sql_5)
                    conn.commit()

        for date in dates_json:
            if date['xqmc'] == '6':
                rq_6 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '6':
                curriculum_t_6.append(
                    {
                        '周次': week_num(f'{rq_6}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '6',
                        '日期': rq_6
                    }.copy()
                )

                if len(curriculum_t_6) != 0:
                    insert_sql_6 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_6}'),
                                       6,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_6))
                    cursor.execute(insert_sql_6)
                    conn.commit()

        for date in dates_json:
            if date['xqmc'] == '7':
                rq_7 = date['rq']

        for curriculum in curriculums:
            if curriculum['xq'] == '7':
                curriculum_t_7.append(
                    {
                        '周次': week_num(f'{rq_7}'),
                        '课程名': curriculum['kcmc'],
                        '授课老师': curriculum['teaxms'],
                        '第几节': curriculum['jcdm'].replace('0',''),
                        '地点': curriculum['jxcdmc'],
                        '星期': '7',
                        '日期': rq_7
                    }.copy()
                )

                if len(curriculum_t_7) != 0:
                    insert_sql_7 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s); " \
                                   % (
                                       week_num(f'{rq_7}'),
                                       7,
                                       repr(curriculum['kcmc']),
                                       repr(curriculum['teaxms']),
                                       repr(curriculum['jxcdmc']),
                                       curriculum['jcdm'].replace('0',''),
                                       repr(rq_7))
                    cursor.execute(insert_sql_7)
                    conn.commit()

        #无课的数据库插入
        if len(curriculum_t_1) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_1}'),1,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_1))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_2) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_2}'),2,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_2))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_3) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_3}'),3,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_3))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_4) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_4}'),4,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_4))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_5) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_5}'),5,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_5))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_6) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_6}'),6,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_6))
            cursor.execute(insert_sql_0)
            conn.commit()
        if len(curriculum_t_7) == 0 :
            insert_sql_0 = "insert into data(周次,星期,课程,授课老师,地点,第几节,日期) values (%s,%s,%s,%s,%s,%s,%s);" \
            % (week_num(f'{rq_7}'),7,repr('无课'),repr('无课'),repr('无课'),0,repr(rq_7))
            cursor.execute(insert_sql_0)
            conn.commit()
    print('写入数据库完毕')
#def check_mysql():
    #check = "select * from data order by 日期,第几节 asc;"
    pass


def get_week():
    pass

if __name__ == "__main__":
    import_timetable(get_cookie(id,password))


##思路：xq决定了课程的日期
