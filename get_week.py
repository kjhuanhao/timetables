import datetime

def week_num(calculate_time):
    first_time = datetime.date(2022, 8, 29)
    #now_time = datetime.date.today()
    set_time = calculate_time.split('-')
    now_time  = datetime.date(int(set_time[0]),int(set_time[1]),int(set_time[2]))
    day = int((now_time - first_time).days)
    week = day/7

    if str(week).count('.') == 1:
       num = str(week).split('.')[0]
       week = int(num) + 1
       return week
    else:
        week = week
        return week


