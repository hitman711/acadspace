import hashlib
import json
import random
import MySQLdb

def userRegistration(fname,lname,email,username,password,salt,status,unique_code):
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	sql = "INSERT INTO `register`(`fname`, `lname`, `email`, `username`, `password`, `salt`, `status`, `unique_code`) VALUES ('%s','%s','%s','%s','%s','%s','%s','%s')"%(fname,lname,email,username,password,salt,status,unique_code)
	try:
		cursor.execute(sql)
		conn.commit()
		print unique_code
		print "............"
	except:
		conn.rollback()
	conn.close()


def userProfile(unique_code,university, Institute):
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	sql = "INSERT INTO `undergraduate`( `unique_code`, `university name`, `institute name`) VALUES ('%s','%s','%s')"%(unique_code,university, Institute)
	try:
		cursor.execute(sql)
		conn.commit()
	except:
		conn.rollback()
	conn.close()


def userMarks(unique_code,form_no,usermarks,total_marks):
	i =0
	statement = ''
	user_field =''
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	field = "data_field_"
	for everyField in range(0,len(usermarks)):
		newField = field+str(i+1)
		i =i+1
		statement = statement+"`"+newField+"`,"
		user_field = user_field+"'"+usermarks[everyField]+"',"

	sql ="INSERT INTO `undergraduate_record`( `user_code`, `form_code`, %s `attempt`, `total`) VALUES ('%s','%s',%s '%s','%s')"%(statement,unique_code,form_no,user_field,"0",total_marks)
	try:
		cursor.execute(sql)
		conn.commit()
	except:
		conn.rollback()
	conn.close()

def userFilledform(unique_code, form_filled):
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	sql= "INSERT INTO `user_filled_form`(`user_code`, `form_filled`) VALUES ('%s','%s')"%(unique_code,form_filled)
	try:
		cursor.execute(sql)
		conn.commit()
	except:
		conn.rollback()
	conn.close()


def userAnalyticStats(unique_code,record_update_stat,user_analytic_stat):
	conn = MySQLdb.connect('localhost','root','28263506','acadspace')
	cursor = conn.cursor()
	sql ="INSERT INTO `user_analytic_stat`(`user_id`, `record_update_stat`, `record_update_info`, `Completed_Analytics`, `Partial_Analytics`) VALUES ('%s','%s','%s','0','0')"%(unique_code,record_update_stat,user_analytic_stat)
	try:
		cursor.execute(sql)
		conn.commit()
	except:
		conn.rollback()
	conn.close()


filled_form_data = '{"Parameter": {"Total_Simple_Exam_Field": 0,"Total_Comp_Exam_Field": 0},"Simple_Exam": [],"Comp_Exam": []}';

user_filled_form_info = json.loads(filled_form_data)

user_analytic_stat = '{"Total_Edited_Forms":0,"Edited_Form_List":[]}'

user_analytic_stat_info = json.loads(user_analytic_stat)


insert_data = ["ituser","compuser","elexuser","extcuser"]

institute_list =["ACE","DJ","RJIT","KJSCE","DBIT","CRIT","PVPP COE"]
form_list ={"ituser":301010101,"compuser":301020101,"elexuser":301030101,"extcuser":301040101}
user_data =[]
form_data_length ={
"301010101":{"form_field":7,  "Date":"2010-12-15"},
"301010102":{"form_field":7,  "Date":"2011-06-15"},
"301010103":{"form_field":6,  "Date":"2011-12-15"},
"301010104":{"form_field":6,  "Date":"2012-06-15"},
"301010105":{"form_field":11, "Date":"2012-12-15"},
"301010106":{"form_field":10, "Date":"2013-06-15"},
"301010107":{"form_field":11, "Date":"2013-12-15"},
"301010108":{"form_field":9,  "Date":"2014-06-15"},

"301020101":{"form_field":7,  "Date":"2010-12-15"},
"301020102":{"form_field":7,  "Date":"2011-06-15"},
"301020103":{"form_field":6,  "Date":"2011-12-15"},
"301020104":{"form_field":6,  "Date":"2012-06-15"},
"301020105":{"form_field":6,  "Date":"2012-12-15"},
"301020106":{"form_field":6,  "Date":"2013-06-15"},
"301020107":{"form_field":6,  "Date":"2013-12-15"},
"301020108":{"form_field":7,  "Date":"2014-06-15"},

"301030101":{"form_field":7,  "Date":"2010-12-15"},
"301030102":{"form_field":7,  "Date":"2011-06-15"},
"301030103":{"form_field":9,  "Date":"2011-12-15"},
"301030104":{"form_field":10, "Date":"2012-06-15"},
"301030105":{"form_field":10, "Date":"2012-12-15"},
"301030106":{"form_field":9,  "Date":"2013-06-15"},

"301040101":{"form_field":7,  "Date":"2010-12-15"},
"301040102":{"form_field":7,  "Date":"2011-06-15"},
"301040103":{"form_field":10, "Date":"2011-12-15"},
"301040104":{"form_field":10, "Date":"2012-06-15"},
"301040105":{"form_field":10, "Date":"2012-12-15"},
"301040106":{"form_field":10, "Date":"2013-06-15"},
"301040107":{"form_field":10, "Date":"2013-12-15"},
"301040108":{"form_field":9,  "Date":"2014-06-15"}
}

total_marks = 0
marks_list ={'O':10, 'A':9, 'B':8, 'C':7, 'D':6, 'E':5,'F':0,'P':4}

#print test['Parameter']
randomString = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
#print(''.join(random.choice(randomString) for i in range(4)))
#m = hashlib.md5("1239TQxF".encode("utf"))
for index in insert_data:
	for i in range(151,200):
		username =index+str(i)
		fname = lname = username
		email = username+"@"+username+".com"
		salt = (''.join(random.choice(randomString) for i in range(4)))
		password = hashlib.md5(str(username+salt).encode("utf")).hexdigest()
		status = "activated"
		unique_code = (''.join(random.choice(randomString) for i in range(15)))

#CALL USER REGISTRATION		
		userRegistration(fname,lname,email,username,password,salt,status,unique_code)


		institute = random.choice(institute_list)

#CALL USER PROFILE
		userProfile(unique_code,"mumbai",institute)


		form_start = form_list[index]
		for j in range(form_start,(form_start+1)):
			if str(j) in form_data_length.keys():
				user_filled_form_info['Parameter']['Total_Simple_Exam_Field'] = user_filled_form_info['Parameter']['Total_Simple_Exam_Field']+1

				user_analytic_stat_info['Total_Edited_Forms']=user_analytic_stat_info['Total_Edited_Forms']+1

				user_filled_form_info['Simple_Exam'].append({"form_type": "undergraduate","Form_Code": str(j),"Table_name": "undergraduate_record","Attempt": 0})

				user_analytic_stat_info['Edited_Form_List'].append(j)

				form_field = form_data_length[str(j)]['form_field']
				exam_date = form_data_length[str(j)]['Date']
				user_data.append(exam_date)
				for marks in range(0,form_field): 
					grade = random.choice(marks_list.keys())
					user_data.append(grade)
					total_marks = float(total_marks)+float(marks_list[grade])
				total_marks = round(float(total_marks/form_field),2)
#CALL USER MARKS
				userMarks(unique_code,j,user_data,total_marks)
				total_marks = 0
				user_data = []

#CALL USER FILLED FORM
			#print user_filled_form_info
			#print user_analytic_stat_info
		#userFilledform(unique_code,json.dumps(user_filled_form_info))

#CALL USER ANALYTIC FORM
		userAnalyticStats(unique_code,"1",json.dumps(user_analytic_stat_info))

		user_filled_form_info = json.loads(filled_form_data)
		user_analytic_stat_info = json.loads(user_analytic_stat)
