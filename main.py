import subprocess as sp
import pymysql
import pymysql.cursors

def gsmax_totalyears():
    try:
        ino= int(input("Enter 1 for Staff or 2 for Guards: "))
        if ino==1:
            query=("SELECT * from STAFF where Working_since=(select MIN(Working_since) from STAFF)")
        elif ino==2:
            query= ("SELECT * from GUARDS where date_of_joining=(select MIN(date_of_joining) from GUARDS)")
        else :
            print("invalid input")
            return
        (cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)

def search_inmate():
    try:
        ino=input("Enter the inmate number who's details you want to search: ")
        query = ("SELECT * FROM INMATES WHERE Inmate_number ="+ino)
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

def search_cell():
    try:
        cell_no=(input("Enter the Cell number: "))
        query =("SELECT * FROM CELLS WHERE Cell_number = "+cell_no)
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)


def show_inmates():
    try:
        # Takes emplyee details as input
        query = ("SELECT * FROM INMATES")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)
    return

def show_gname():
    try:
        # Takes emplyee details as input
        query = ("SELECT * FROM GUARDS")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)
    return

def cell_list():
    try:
        # Takes emplyee details as input
        query = ("SELECT * FROM CELLS")
        print(query)
        print(cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return

def inmatevscell():
    try:
        # Takes emplyee details as input
        query = ("SELECT * FROM INMATES JOIN CELLS ON CELLS.Cell_number=INMATES.Cell_number")
        print(query)
        print(cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")

    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return
def salary():
    try:
        # Takes emplyee details as input
        query = ("SELECT sum(salary) FROM STAFF")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return

def gsalary():
    try:
        # Takes emplyee details as input
        query = ("SELECT sum(Salary) FROM GUARDS")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return

def delete():
    try:
        # Takes emplyee details as input
        ino=input("Enter the inmate no who's details you want to delete")
        query = ("delete from INMATES WHERE Inmate_number= "+ino+"")
        cur.execute(query)
        con.commit()
        print("Deletion successful")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return

def show_inmates():
    try:
        # Takes emplyee details as input
        query = ("SELECT * FROM INMATES")
        (cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to insert into database")
        print(">>>>>>>>>>>>>", e)

    return
def avg_salary_guard():
    try:
        query=("SELECT AVG(Salary) FROM GUARDS")
        (cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return 

def avg_salary_staff():
    try:
        query=("SELECT AVG(Salary) FROM STAFF")
        (cur.execute(query))
        con.commit()
        result = cur.fetchall()
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return 

def avg_salary_guard_and_staff():
    try:
        query=("SELECT SUM(Salary) FROM STAFF")
        # print(query)
        # print(cur.execute(query))
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        resultList = list(result[0].values())
        x=resultList[0]
        query=("SELECT SUM(Salary) FROM GUARDS")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        resultList = list(result[0].values())
        y=resultList[0]
        query=("SELECT COUNT(*) FROM GUARDS")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        resultList = list(result[0].values())
        a=resultList[0]
        query=("SELECT COUNT(*) FROM STAFF")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        resultList = list(result[0].values())
        b=resultList[0]
        print("AVG(Salary)")
        print(x+y/a+b)
        # x=list(result[0].keys())
        # for i in x:
        #     print(i,end=" ")
        # print("")
        # for i in result:
        #     resultList = list(i.values())
        #     for j in resultList:
        #         print(j,end=" ")
        #     print("")
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return

def Inmates_incarcerated_last_year():
    try:
        query=("SELECT * FROM INMATES where date_of_incarceration>'2021-1-1'")
        cur.execute(query)
        con.commit()
        result = cur.fetchall()
        if len(result)==0:
            print("No results matching query")
            return
        x=list(result[0].keys())
        for i in x:
            print(i,end=" ")
        print("")
        for i in result:
            resultList = list(i.values())
            for j in resultList:
                print(j,end=" ")
            print("")
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return 

def update_cell():
    ino=input("inmate number:")
    cell=input("new cell number:")
    try:
        query=("update INMATES set Cell_number="+cell+" where Inmate_number="+ino)
        print(query)
        cur.execute(query)
        con.commit()
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return 

def cells_facilies_vs_guards():
    x=int(input("Enter 1 to select cells or 2 to select facilities: "))
    if x==1:
        y=input("Enter the cell number you want to know about: ")
        try:
            query=("select distinct C.*,G.* from INMATE_CELL as I,CELLS as C INNER JOIN GUARDS as G where C.Cell_number=I.Cell_number and I.Assigned_guard_ID=G.Guards_ID and C.Cell_number="+y)
            cur.execute(query)
            con.commit()
            result = cur.fetchall()
            if len(result)==0:
                print("No results matching query")
                return
            x=list(result[0].keys())
            for i in x:
                print(i,end=" ")
            print("")
            for i in result:
                resultList = list(i.values())
                for j in resultList:
                    print(j,end=" ")
                print("")
        except Exception as e:
            con.rollback()
            print("Failed to retrieve data from database")
            print(">>>>>>>>>>>>>", e)
    elif x==2:
        y=input("Enter the facility name you want to know about: ")
        try:
            query=("Select distinct * from FACILITIES as F inner join GUARDS as G where F.Name=G.Facility_monitored and F.Name='"+y+"'")
            cur.execute(query)
            con.commit()
            result = cur.fetchall()
            if len(result)==0:
                print("No results matching query")
                return
            x=list(result[0].keys())
            for i in x:
                print(i,end=" ")
            print("")
            for i in result:
                resultList = list(i.values())
                for j in resultList:
                    print(j,end=" ")
                print("")
        except Exception as e:
            con.rollback()
            print("Failed to retrieve data from database")
            print(">>>>>>>>>>>>>", e)
    return
def insert_guard():
    ID=input("ID: ")
    join=input("Date of joining: ")
    ph=input("Phonenumber: ")
    salary=input("Salary: ")
    Firstname=input("Firstname: ")
    lastname=input("Lastname: ")
    age = input("age: ")
    assigned_facilities=input("Assigned facility: ")
    surpervisor_id=input("surpervisor id: ")
    facility_monitor=input("facility monitor: ")
    try:
        query=("insert into GUARDS value("+ID+",'"+join+"',"+ph+","+salary+",'"+Firstname+"','"+lastname+"',"+age+",'"+assigned_facilities+"',"+surpervisor_id+",'"+facility_monitor+"')")
        print(query)
        cur.execute(query)
        con.commit()
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
def insert_inmate():
    number=input("number: ")
    cell=input("cell: ")
    security=input("security: ")
    Fn=input("Fn: ")
    Ln=input("Ln: ")
    age=input("age: ")
    date_of_release=input("date_of_release: ")
    date_of_incarceration=input("date_of_incarceration: ")
    try:
        query=("Insert into INMATES value("+number+","+cell+","+security+",'"+Fn+"','"+Ln+"',"+age+",'"+date_of_release+"','"+date_of_incarceration+"')")
        cur.execute(query)
        con.commit()
    except Exception as e:
        con.rollback()
        print("Failed to retrieve data from database")
        print(">>>>>>>>>>>>>", e)
    return 
def dispatch(ch):
    """
    Function that maps helper functions to option entered
    """

    if(ch == 1):
        show_inmates()
    elif(ch == 2):
        show_gname()
    elif(ch == 3):
        cell_list()
    elif(ch == 4):
        inmatevscell()
    elif(ch == 5):
        cells_facilies_vs_guards()
    elif(ch == 6):
        gsalary()
        #insert_inmate()
    elif(ch == 7):
        salary()
    elif(ch == 8):
        gsmax_totalyears()
    elif(ch == 9):
        search_inmate()
    elif(ch == 10):
        search_cell()
    elif(ch == 11):
        avg_salary_guard()
    elif(ch == 12):
        avg_salary_staff()
    elif(ch == 13):
        avg_salary_guard_and_staff()
    elif(ch == 14):
        Inmates_incarcerated_last_year()
    elif(ch == 15):
        insert_inmate()
    elif(ch == 16):
        insert_guard()
    elif(ch == 17):
        update_cell()
    elif(ch == 18):
        delete()
    else:
        print("Error: Invalid Option")


while(1):
    tmp = sp.call('clear', shell=True)


    con = pymysql.connect(host='localhost',
                          port=3306,
                          user='newuser',
                          password="Nanna135#",
                          db='final',
                          cursorclass=pymysql.cursors.DictCursor)
    tmp = sp.call('clear', shell=True)
    if(con.open):
        print("Connected")
    else:
        print("Failed to connect")

    tmp = input("Enter any key to CONTINUE>")
    with con.cursor() as cur:
            while(1):
                tmp = sp.call('clear', shell=True)
                # Here taking example of Employee Mini-world
                # print("2. Option 2")  # Fire an Employee
                # print("3. Option 3")  # Promote Employee
                # print("4. Option 4")  # Employee Statistics
                # print("100. Logout")
                print("Enter 1 to see all inmates details")
                print("Enter 2 to see all guards details")
                print("Enter 3 to see all Cell details")
                print("Enter 4 to see details of inmates and their cells")
                print("Enter 5 to see details of cells or facilities along with guards assigned to them")
                print("Enter 6 to see total salary paid to guards")
                print("enter 7 to see total salary paid to other staff")
                print("Enter 8 to see the employee serving the longest")
                print("Enter 9 to search for a particular inmate")
                print("Enter 10 to search for to search for a particular cell")
                print("Enter 11 to see average salary paid to Guards")
                print("Enter 12 to see average salary paid to other staff")
                print("Enter 13 to see average salary paid to ALL staff")
                print("Enter 14 to see details of inmates incarcerated last year")
                print("Enter 15 to insert details of an inmate")
                print("Enter 16 to insert details of a new guards")
                print("Enter 17 to change cell of an inmate")
                print("enter 18 to delete details of an inmate")
                ch = int(input("Enter choice> "))
                tmp = sp.call('clear', shell=True)
                if ch == 100:
                    exit()
                else:
                    dispatch(ch)
                    tmp = input("Enter any key to CONTINUE>")