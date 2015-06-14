import MySQLdb
import random
import hashlib

def instituteDatabase(fname,lname,email,username,password,salt,status,unique_code):
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	sql ="INSERT INTO `institute`(`fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')"%(fname,lname,email,username,password,salt,status,unique_code)
	#print sql
	cursor.execute(sql)
	conn.commit()
	conn.close()

institute_list =["ACE","DJ","RJIT","KJSCE","DBIT","CRIT","PVPP COE"]

randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
for index in range(1,len(institute_list)):
	fname = institute_list[index]
	lname = fname
	username = fname+"2015"
	email = fname+"@"+lname+".com"
	salt = fname+"2015"
	password = hashlib.md5(str(username+salt).encode("utf")).hexdigest()
	status = "activated"
	unique_code = (''.join(random.choice(randomString) for i in range(15)))
	instituteDatabase(fname,lname,email,username,password,salt,status,unique_code)
	#print "fname = "+fname+"\n lname = "+lname+"\n email = "+email+"\n username = "+username+"\n password = "+password+"\n salt = "+salt+"\n status = "+status+"\nunique code"+ unique_code
