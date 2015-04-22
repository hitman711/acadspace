import MySQLdb

def RunQueryOnDb(query,dbname):
    db = MySQLdb.connect("localhost","root","28263506",dbname )
    cursor = db.cursor()
    stat = cursor.execute(query)
    Comm_Type = query.split()[0]
    print ">>>>> "+Comm_Type
    if (Comm_Type == "SELECT"):
        data = cursor.fetchall()
    elif (Comm_Type in ["UPDATE","INSERT"]):
        print "Committing"
        db.commit()
        data = stat
    db.close()
    return data


def RunQueryColNameOnDb(query,dbname):
    db = MySQLdb.connect("localhost","root","28263506",dbname)
    cursor = db.cursor()
    cursor.execute(query)
    data = cursor.fetchall()
    columns = cursor.description
    db.close()
    result = [{columns[index][0]:column for index, column in enumerate(value)} for value in data]
    return result


def RunQueryOnAcadspace(query):
	return RunQueryOnDb(query,"acadspace")

def RunQueryColNameOnAcadspace(query):
	return RunQueryColNameOnDb(query,"acadspace")


def RunQueryOnAcademic(query):
	return RunQueryOnDb(query,"acadmic")

def RunQueryColNameOnAcademic(query):
	return RunQueryColNameOnDb(query,"acadmic")